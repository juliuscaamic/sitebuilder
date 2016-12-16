<section class="cardBlock" class="section section-content cd-section <% if $BackgroundImage %>header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="cards">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="title">
		    			<h2>$Title</h2>
					</div>
					<div class="description semi-lead">
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
					<div class="section-space"></div>
				</div>
			</div>

			<div class="row">
				<% if $Cards %>
					<% loop $Cards %>
						<div class="col-md-4">
							<div class="card <% if $BackgroundImage %>card-background<% else %>card-plain<% end_if %>" style="<% if $BackgroundImage %>background-image: url('$BackgroundImage.Link');<% end_if %>">
								<% if $Image %>
									<div class="card-image">
										<a href="<% if $RedirectPage %>$RedirectPage.Link<% end_if %>">
											<img class="img" src="$Image.CroppedImage(800, 600).Link" alt="$Image.Title" />
										</a>
									</div>
								<% end_if %>
								<div class="content <% if $BackgroundColor %>content-primary<% end_if %>" style="<% if $BackgroundColor %>background:#{$BackgroundColor};<% end_if %>">
									<% if $Title %>
										<a href="$RedirectPage.Link" title="Go to $RedirectPage.Title page">
											<h4 class="card-title">$Title</h4>
										</a>
									<% end_if %>
									<div class="card-description">
										$Content
									</div>

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
							</div>	
						</div>			
					<% end_loop %>
				<% end_if %>
			</div>		
		</div>
	</div>
</section>