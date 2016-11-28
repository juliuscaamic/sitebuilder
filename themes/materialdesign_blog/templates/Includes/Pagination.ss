<% if $MoreThanOnePage %>
	<ul class="pagination pagination-primary">
		<% if $NotFirstPage %>
			<li><a href="{$PrevLink}">prev</a></li>
		<% end_if %>

		<% loop $PaginationSummary(4) %>
			<% if $CurrentBool %>
				<li class="active"><a href="$Link">$PageNum</a></li>
			<% else %>
				<li><a href="$Link">$PageNum</a></li>
			<% end_if %>
		<% end_loop %>

		<% if $NotLastPage %>
			<li><a href="{$NextLink}">next </a></li>
		<% end_if %>
	</ul>				
<% end_if %>