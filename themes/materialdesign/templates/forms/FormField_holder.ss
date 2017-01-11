<div class="form-group label-floating">
	<% if $Title %><label class="control-label" for="$ID">$Title</label><% end_if %>
	$Field
	<% if $RightTitle %><label class="right" for="$ID">$RightTitle</label><% end_if %>
	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
	<% if $Description %><span class="description">$Description</span><% end_if %>
</div>