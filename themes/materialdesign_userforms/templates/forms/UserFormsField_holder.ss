<div class="form-group label-floating">
	<% if $Title %><label class="control-label" for="$ID">$Title</label><% end_if %>
	$Field
	<% if $RightTitle %><span id="{$Name}_right_title" class="right-title">$RightTitle</span><% end_if %>
	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
</div>