<section class="section section-content cd-section <% if $BackgroundImage %>section-image<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2 class="title">$Title</h2>
				<div class="description">
					$Content
				</div>
				<div class="section-space"></div>
			</div>
		</div>
		<div class="row">
			<% loop $Packages %>
				<div class="col-md-4">
					<div class="card card-pricing <% if $BackgroundImage %>card-background<% end_if %>" <% if $BackgroundImage %>style="background-image: url('$BackgroundImage.Link');"<% end_if %>>
						<div class="content <% if $BackgroundColor %>content-primary<% end_if %>" <% if $BackgroundColor %>style="background:#{$BackgroundColor};"<% end_if %>>
							<h4 class="category">$Title</h4>
							<h1 class="card-title">
								<% if $Currency %><small>$Currency</small><% end_if %>$Price<% if $Mode == 'Yearly' %><small>/yr</small><% else %><small>/mo</small><% end_if %>
							</h1>

							<% if $Features %>
							<ul>
								<% loop $Features %>
									<li>$Title</li>
								<% end_loop %>
							</ul>
							<% end_if %>

							<% if $Buttons %>
								<% loop $Buttons %>
									<a class="btn btn-primary" href="$RedirectPage.Link" title="Go to $RedirectPage.Title">
										$Title 
										<% if $Icon %>
											<i class="material-icons">$Icon</i>
										<% end_if %>
									</a>
								<% end_loop %>
							<% end_if %>

						</div>
					</div>
				</div>
			<% end_loop %>
		</div>
	</div>
</section>