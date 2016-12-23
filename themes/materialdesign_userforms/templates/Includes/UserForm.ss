<form $AttributesHTML>
	
<% include UserFormProgress %>
<% include UserFormStepErrors %>

<div class="header header-raised header-primary text-center">
	<h4 class="card-title">$Controller.FormTitle</h4>
</div>
<div class="content">
	$Controller.FormDescription
	
	<% if $Message %>
		<p id="{$FormName}_error" class="alert $MessageType">$Message</p>
	<% else %>
		<p id="{$FormName}_error" class="alert $MessageType" aria-hidden="true" style="display: none;"></p>
	<% end_if %>

		<% loop $Fields %>
			$FieldHolder
		<% end_loop %>

	<% if $Steps.Count > 1 %>
		<% include UserFormStepNav %>
	<% else %>
		<% include UserFormActionNav %>
	<% end_if %>
</div>

</form>