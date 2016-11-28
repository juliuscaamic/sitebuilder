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

				<% if $Tabs %>
					<ul class="nav nav-pills nav-pills-rose">
						<% loop $Tabs %>
							<li class="<% if $First %>active<% end_if %>">
								<a href="#pill$ID" data-toggle="tab">$TabTitle</a>
							</li>
						<% end_loop %>
					</ul>

					<div class="tab-content tab-space">
						<% loop $Tabs %>
							<div class="tab-pane <% if $First %>active<% end_if %>" id="pill$ID">
								<div class="row">
									<div class="col-md-7">
										<h2 class="title">$Title</h2>
										$Content
										<% if $Buttons %>
											<% loop $Buttons %>
												<a class="btn btn-round btn-primary" href="$RediectPage.Link" title="Go to $RedirectPage.Title">$Title</a>
											<% end_loop %>
										<% end_if %>
									</div>
									<div class="col-md-4">
										<div class="card-image">
											<img class="img img-raised" src="$Image.Link" alt="$Image.Title">
										</div>
									</div>
								</div>
							</div>
						<% end_loop %>
					</div>
				<% end_if %>
			</div>
		</div>
	</div>
</section>