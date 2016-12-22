<footer id="footerBlock" class="footer <% if $BackgroundImage %>header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">

		<div class="content">
			<div class="row">
				<% if $Menus %>
					<% loop $Menus %>
						<div class="col-md-4 text-left">
							<h5 <% if $Top.BackgroundImage || $Top.BackgroundColor %>style="color:#FFF;"<% end_if %>>$TiTle</h5>
							<% if $Pages %>
								<ul class="links-vertical">
								<% loop $Pages %>
									<li><a <% if $Top.BackgroundImage || $Top.BackgroundColor %>style="color:#FFF;"<% end_if %> href="$Page.Link" title="Go to $Page.Title.XML page">$Page.MenuTitle.XML</a></li>
								<% end_loop %>
								</ul>
							<% end_if %>
						</div>					
					<% end_loop %>
				<% end_if %>
				<% if SocialMediaAccounts %>
				<div class="col-md-4">
					<h5 <% if $Top.BackgroundImage || $Top.BackgroundColor %>style="color:#FFF;"<% end_if %>>Follow Us</h5>
					<ul class="social-buttons">
						<% loop $SocialMediaAccounts %>
							<li>
								<a href="$Address" target="_blank" class="btn btn-just-icon btn-simple" title="$Title">
									<% if $Icon %>
										<i class="$Icon"></i>
									<% end_if %>
								</a>
							</li>
						<% end_loop %>
					</ul>
				</div>
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