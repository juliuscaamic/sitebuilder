<footer class="footer footer-black footer-big">
	<div class="container">

		<div class="content">
			<div class="row">
				<% if $Menus %>
					<% loop $Menus %>
						<div class="col-md-4">
							<h5>$TiTle</h5>
							<% if $Pages %>
								<ul class="links-vertical">
								<% loop $Pages %>
									<li><a href="$Page.Link" title="Go to $Page.Title.XML page">$Page.MenuTitle.XML</a></li>
								<% end_loop %>
								</ul>
							<% end_if %>
						</div>					
					<% end_loop %>
				<% end_if %>
			</div>
		</div>

		<hr>

		<% if $CopyrightText %>
			<div class="copyright pull-center">
				$CopyrightText
			</div>
		<% end_if %>
	</div>
</footer>