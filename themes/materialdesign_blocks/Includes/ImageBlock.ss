<section class="section section-content cd-section imageblock <% if $BackgroundImage %>header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card card-plain card-blog">
					<div class="row">
						<% if ImageLeft %>
							<div class="col-md-5">
								<div class="card-image">
									<img class="img img-raised" src="$Image.Link" alt="$Image.Title">
								</div>
							</div>
							<div class="col-md-7">
								<h2 class="card-title">$Title</h2>
								<div class="card-description">
									$Content
								</div>

								<% if $Buttons %>
									<% loop $Buttons %>
										<a class="btn btn-lg btn-round btn-primary" href="$RedirectPage.Link" title="Go to $RedirectPage.Title">
											$Title 
											<% if $Icon %>
												<i class="material-icons">$Icon</i>
											<% end_if %>
										</a>
									<% end_loop %>
								<% end_if %>

							</div>
						<% else_if $ImageRight %>
							<div class="col-md-6">
								<h2 class="card-title">$Title</h2>
								<div class="card-description">$Content</div>

								<% if $Buttons %>
									<% loop $Buttons %>
										<a class="btn btn-lg btn-round btn-primary" href="$RedirectPage.Link" title="Go to $RedirectPage.Title">
											$Title 
											<% if $Icon %>
												<i class="material-icons">$Icon</i>
											<% end_if %>
										</a>
									<% end_loop %>
								<% end_if %>

							</div>
							<div class="col-md-5 col-md-offset-1">
								<div class="card-image">
									<img class="img img-raised" src="$Image.Link" alt="$Image.Title">
								</div>
							</div>
						<% else %>
							<div class="col-md-8 col-md-offset-2 text-center">
								<div class="card-image">
									<img class="img img-raised" src="$Image.Link" alt="$Image.Title">
								</div>
								<br>
								<h2 class="card-title">$Title</h2>
								<div class="card-description">
									$Content
								</div>

								<% if $Buttons %>
									<% loop $Buttons %>
										<a class="btn btn-lg btn-round btn-primary" href="$RedirectPage.Link" title="Go to $RedirectPage.Title">
											$Title 
											<% if $Icon %>
												<i class="material-icons">$Icon</i>
											<% end_if %>
										</a>
									<% end_loop %>
								<% end_if %>								
							</div>
						<% end_if %>						
					</div>
				</div>
			</div>
		</div>
	</div>
</section>