<?php
/**
 * Mail chimp form that will be inserted to page content
 * 
 * @author Julius Caamic <julius@greenbrainer.com>
 * @copyright Copyright (c) 2014, Julius Caamic
 */
class MailChimpForm extends Form {

	/**
	 * Create the mailchimp subscription 
	 * 
	 * @param Controller $controller
	 * @param string $name
	 */
	public function __construct($controller, $name, $extendedFields = null, $listCode=null) {

		$fields = new FieldList(
			TextField::create('Name', 'Name')
				->addExtraClass('form-control')
				->setAttribute('required', 'required')
				->setAttribute('placeholder', 'Enter your name'),
			EmailField::create('Email', 'Email')
				->addExtraClass('form-control')
				->setAttribute('required', 'required')
				->setAttribute('placeholder', 'Enter your email')
		);

		if ($extendedFields) {
			$fields->merge($extendedFields);
		}

		$this->extend('updateFields', $fields);
		
		$formAction = FormAction::create('subscribe')->setTitle('Subscribe');
		$formAction->useButtonTag = true;
		$formAction->addExtraClass('btn btn-primary btn-round');
		$actions = new FieldList($formAction);

		$validator = new RequiredFields(
			'Name', 'Email'
		);

		parent::__construct($controller, $name, $fields, $actions, $validator);
	}

	/**
	 * Handles the action when subscribe is being done
	 * 
	 * @param  Array  $data
	 * @param  Form   $form
	 */
	public function subscribe(Array $data, Form $form) {
		$settings = SiteConfig::current_site_config();

		$MailChimp = new \Drewm\MailChimp($settings->APIKey);
		
		$apiData = array(
			'id'                => $settings->MailChimpList()->filter(array('Code' => 'NEWSLETTER'))->First()->ListID,
			'email'             => array('email' => $data['Email']),
			'merge_vars'        => array('Name' => $data['Name']),
			'double_optin'      => false,
			'update_existing'   => true,
			'replace_interests' => false,
			'send_welcome'      => false,
		);

		$this->extend('updateAPIData', $apiData);

		$result = $MailChimp->call('lists/subscribe', $apiData);

		if (Director::is_ajax()) {
			if (isset($result['status']) && $result['status'] == 'error') {
				if ($result['code'] == 214) {
					return json_encode(array(
						'success' => false,
						'message' => $data['Email'] . ' is already subscribed'
					));
				} else {
					return json_encode(array(
						'success' => false,
						'message' => $result['error']
					));

				}
			} else {
				return json_encode(array(
					'success' => true,
					'message' => 'Thank you for subscribing to our newsletter'
				));
			}
		} else {
			if (isset($result['status']) && $result['status'] == 'error') {
					if ($result['code'] == 214) {
					$this->sessionMessage($data['Email'] . ' is already subscribed.', 'bad');
				} else {
					$this->sessionMessage($result['error'], 'bad');
				}
			} else {
				$this->sessionMessage('Thank you for subscribing to our newsletter', 'good');
			}

			Controller::curr()->redirectBack();
		}
	}

	/**
	 * Gets the mailchimp newsletter form
	 * 
	 * @param Array $arguments
	 */
	public static function MailChimpShortcodeHandler($arguments) {
		$form = new MailChimpForm(Controller::curr(), 'MailChimpForm', $arguments);

		return $form->forTemplate();
	}
}

/**
 * Represents the controller of the Mailchimp Form
 *
 * @author Julius Caamic <julius@greenbrainer.com>
 * @copyright Copyright (c) 2014, Julius Caamic
 */
class MailChimpForm_Controller extends Controller {

	/**
	 * Calls the mailchimp form
	 */
	public function index() {
		return new MailChimpForm($this, 'MailChimpForm');
	}
}