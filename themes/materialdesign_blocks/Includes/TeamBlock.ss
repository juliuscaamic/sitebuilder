<section class="section section-content cd-section team-5 section-image <% if $BackgroundImage %>header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<% if $Title %><h2 class="title">$Title</h2><% end_if %>
				<% if $Content %>
					$Content
				<% end_if %>
			</div>
		</div>

		<div class="row">

			<% if $Members %>
				<% loop $Members %>
					<div class="col-md-6">
						<div class="card card-profile card-plain">
							<div class="col-md-5">
								<div class="card-image">
									<a href="javascript::void();">
										<img class="img" src="$Image.Link" alt="$Image.Title" />
									</a>
								</div>
							</div>
							<div class="col-md-7">
								<div class="content">
									<h4 class="card-title">$Title</h4>
									<h6 class="category text-muted">$Position</h6>

									<p class="card-description">
										$Content
									</p>
								</div>
							</div>
						</div>
					</div>				
				<% end_loop %>
			<% end_if %>
		</div>		
	</div>
</section>