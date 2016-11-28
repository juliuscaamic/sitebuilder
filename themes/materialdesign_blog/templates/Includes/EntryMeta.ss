<% if $Categories.exists %>
	<h6 class="category text-info">Categories: 	
		<% loop $Categories %>
			$Title</a> <% if not Last %>, <% end_if %>
		<% end_loop %>
	</h6>
<% end_if %>
