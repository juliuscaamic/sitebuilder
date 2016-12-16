<section class="section section-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<% if $Title %>
					<h2 class="title">$Title</h2>
				<% end_if %>

				<% if $Content %>
					$Content
				<% end_if %>

				<div class="card card-nav-tabs">
					<div class="header header-success">
						<div class="nav-tabs-navigation">
							<div class="nav-tabs-wrapper">
								<% if Tabs %>
								<ul class="nav nav-tabs" data-tabs="tabs">
									<% loop $Tabs %>
									<li class="<% if $First %>active<% end_if %>">
										<a href="#tab-$ID" data-toggle="tab">
											<% if $TabIcon %>
												<i class="material-icons">$TabIcon</i>
											<% end_if %>
											$TabTitle
										</a>
									</li>
									<% end_loop %>
								</ul>
								<% end_if %>
							</div>
						</div>
					</div>
					<div class="content">
						<div class="tab-content">
							<% if $Tabs %>
								<% loop $Tabs %>
									<div class="tab-pane <% if $First %>active<% end_if %>" id="tab-$ID">
										<div class="row">
											<div class="col-md-7">
												<h3 class="title">$Title</h3>
												$Content
												<% if $Buttons %>
													<% loop $Buttons %>
														<a class="btn btn-round btn-primary" href="$RedirectPage.Link" title="Go to $RedirectPage.Title">
															$Title
															<% if $Icon %>
																<i class="material-icons">$Icon</i>
															<% end_if %>
														</a>
													<% end_loop %>
												<% end_if %>
											</div>
											<div class="col-md-4 col-md-offset-1">
												<img class="img img-raised" src="$Image.Link" alt="$Image.Title">
											</div>
										</div>
									</div>
								<% end_loop %>
							<% end_if %>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>