<form $FormAttributes>
	<div class="row">

		<% if $Message %>
			<div id="{$FormName}_error" class="alert alert-info message text-center $MessageType">
				<div class="container">
					$Message
				</div>
			</div>
		<% else %>
			<div id="{$FormName}_error" class="alert alert-info message text-center $MessageType" style="display:none;">
				<div class="container">
					$Message
				</div>
			</div>
		<% end_if %>

		<div class="col-md-4">
			<div class="input-group">
				<span class="input-group-addon">
					<i class="material-icons">face</i>
				</span>
				<div class="form-group">
					$Fields.dataFieldByName(Name)
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="input-group">
				<span class="input-group-addon">
					<i class="material-icons">mail</i>
				</span>
				<div class="form-group">
					$Fields.dataFieldByName(Email)
				</div>
			</div>
		</div>
		$Fields.dataFieldByName(ListCode)
		$Fields.dataFieldByName(SecurityID)
		<% if $Actions %>
		<div class="col-sm-4">
			<% loop $Actions %>$Field<% end_loop %>
		</div>
		<% end_if %>

	</div>
</form>
