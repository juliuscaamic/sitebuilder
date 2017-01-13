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
												<% if $Icon %>
													<% if $RedirectPage %>
														<a href="$RedirectPage.Link" title="Go to $RedirectPage.Title">
															<img class="img" src="$Icon.Link" alt="$Icon.Title" height="60">
														</a>
													<% else %>
														<img class="img" src="$Icon.Link" alt="$Icon.Title" height="60">
													<% end_if %>
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
															<a <% if $TriggerOption == 'Popup' %>data-toggle="modal" data-target="#PopupBlock{$PopupBlockID}"<% else %>href="$RedirectPage.Link" title="Go to $RedirectPage.Title"<% end_if %> class="btn btn-lg" style="<% if $BackgroundColor %>background:#{$BackgroundColor}; box-shadow: 0 2px 2px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.14), 0 3px 1px -2px rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.2), 0 1px 5px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.12);<% end_if %><% if $TextColor %>color:#{$TextColor};<% end_if %>">
																<% if $Icon %>
																	<i class="material-icons">$Icon</i>
																<% end_if %>
																$Title
															</a>
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
											<% if $Icon %>
												<% if $RedirectPage %>
													<a href="$RedirectPage.Link" title="Go to $RedirectPage.Title">
														<img class="img" src="$Icon.Link" alt="$Icon.Title" height="60">
													</a>
												<% else %>
													<img class="img" src="$Icon.Link" alt="$Icon.Title" height="60">
												<% end_if %>
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
													<a <% if $TriggerOption == 'Popup' %>data-toggle="modal" data-target="#PopupBlock{$PopupBlockID}"<% else %>href="$RedirectPage.Link" title="Go to $RedirectPage.Title"<% end_if %> class="btn btn-lg" style="<% if $BackgroundColor %>background:#{$BackgroundColor}; box-shadow: 0 2px 2px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.14), 0 3px 1px -2px rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.2), 0 1px 5px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.12);<% end_if %><% if $TextColor %>color:#{$TextColor};<% end_if %>">
														<% if $Icon %>
															<i class="material-icons">$Icon</i>
														<% end_if %>
														$Title
													</a>
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