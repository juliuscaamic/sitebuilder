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
					<% if $IsVertical %>
                        <div class="row">
                            <div class="col-md-2">
                                <ul class="nav nav-pills nav-pills-icons nav-stacked" role="tablist">
                                	<% loop $Tabs %>
	            						<li class="<% if $First %>active<% end_if %>">
	            							<a href="#pill-$ID" role="tab" data-toggle="tab">
	            								<% if $TabIcon %>
	            									<i class="material-icons">$TabIcon</i>
	            								<% end_if %>

	            								$TabTitle
	            							</a>
	            						</li>
                                	<% end_loop %>
                                </ul>
                            </div>
                            <div class="col-md-10">
                                <div class="tab-content">
                                	<% loop $Tabs %>
	                            	    <div class="tab-pane <% if $First %>active<% end_if %>" id="pill-$ID">
											<div class="row">
												<div class="col-md-7">
													<h3 class="title">$Title</h3>
													$Content
													<% if $Buttons %>
														<% loop $Buttons %>
															<a class="btn btn-round btn-primary" href="$RediectPage.Link" title="Go to $RedirectPage.Title">$Title</a>
														<% end_loop %>
													<% end_if %>
												</div>
												<div class="col-md-5">
													<img class="img img-raised img-responsive" src="$Image.Link" alt="$Image.Title">
												</div>
											</div>
	                            	    </div>
                                	<% end_loop %>
                            	</div>
                            </div>
                        </div>
					<% else %>
						<ul class="nav nav-pills nav-pills-icons" role="tablist">
							<% loop $Tabs %>
								<li class="<% if $First %>active<% end_if %>">
									<a href="#pill$ID" data-toggle="tab">
										<% if $TabIcon %>
											<i class="material-icons">$TabIcon</i>
										<% end_if %>
											$TabTitle
									</a>
								</li>
							<% end_loop %>
						</ul>

						<div class="tab-content tab-space">
							<% loop $Tabs %>
								<div class="tab-pane <% if $First %>active<% end_if %>" id="pill$ID">
									<div class="row">
										<div class="col-md-7">
											<h3 class="title">$Title</h3>
											$Content
											<% if $Buttons %>
												<% loop $Buttons %>
													<a class="btn btn-round btn-primary" href="$RediectPage.Link" title="Go to $RedirectPage.Title">$Title</a>
												<% end_loop %>
											<% end_if %>
										</div>
										<div class="col-md-5">
											<img class="img img-raised img-responsive" src="$Image.Link" alt="$Image.Title">
										</div>
									</div>
								</div>
							<% end_loop %>
						</div>
					<% end_if %>

				<% end_if %>
			</div>
		</div>
	</div>
</section>