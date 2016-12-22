<footer id="footerSmallBlock" class="footer <% if $BackgroundImage || $BackgroundColor %>footer-black header-filter<% end_if %>" style="background-color: <% if $BackgroundColor %>#{$BackgroundColor} !important;<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<nav class="pull-left">
			<% if $MenuPages %>
			<ul>
				<% loop $MenuPages %>
					<li>
						<a href="$Page.Link" title="Go to $Title page">
							$Title.XML
						</a>
					</li>
				<% end_loop %>
			</ul>
			<% end_if %>
		</nav>

		<% if SocialMediaAccounts %>
			<ul class="social-buttons pull-center">
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
		<% end_if %>
		<div class="copyright pull-right">$CopyrightText</div>
	</div>
</footer>