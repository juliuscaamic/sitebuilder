<% if $Title %>
	<label class="left" for="$ID">
		<input $AttributesHTML<% if $RightTitle %>aria-describedby="{$Name}_right_title" <% end_if %>/>
		$Title
	</label>
<% end_if %>
