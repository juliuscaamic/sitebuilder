<% if $IncludeFormTag %>
<form $AttributesHTML>
<% end_if %>
	<% if $Message %>
	<p id="{$FormName}_error" class="alert alert-info $MessageType">$Message</p>
	<% else %>
	<p id="{$FormName}_error" class="alert alert-info $MessageType" style="display: none"></p>
	<% end_if %>

	<% loop $Fields %>
		$FieldHolder
	<% end_loop %>

	<% if $Actions %>
		<div class="submit">
			<% loop $Actions %>
				$Field
			<% end_loop %>
		</div>
	<% end_if %>

<% if $IncludeFormTag %>
</form>
<% end_if %>
