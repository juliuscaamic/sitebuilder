<nav>
	<ul class="nav nav-pills" id="mainNav">
		<% loop $Menu(1) %>
			<li class="<% if $Children %>dropdown<% end_if %> $LinkingMode">
				<a class="<% if $Children %>dropdown-toggle<% end_if %>" href="$Link">
					$MenuTitle.XML
				</a>
				<% if $Children %>
				<ul class="dropdown-menu">
					<% loop $Children %>
					<li>
						<a href="$Link">
							$MenuTitle.XML
						</a>
					</li>
					<% end_loop %>
				</ul>
				<% end_if %>
			</li>
		<% end_loop %>
	</ul>
</nav>