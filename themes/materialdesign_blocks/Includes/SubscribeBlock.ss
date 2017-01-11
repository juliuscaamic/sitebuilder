<div class="subscribe-line subscribe-line-image" <% if $BackgroundImage %>style="background-image: url('$BackgroundImage.Link');"<% end_if %>>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="text-center">
					<h3 class="title">$Title</h3>
					$Content
				</div>

				<div class="card card-raised card-form-horizontal">
					<div class="content">
						$CurrentPage.MailChimpForm
					</div>
				</div>
			</div>
		</div>
	</div>
</div>