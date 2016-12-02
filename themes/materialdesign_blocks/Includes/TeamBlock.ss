<section class="section section-content cd-section team-5 section-image <% if $BackgroundImage %>header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
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

									<!--
									<div class="footer">
										<a href="#pablo" class="btn btn-just-icon btn-simple btn-twitter"><i class="fa fa-twitter"></i></a>
										<a href="#pablo" class="btn btn-just-icon btn-simple btn-facebook"><i class="fa fa-facebook-square"></i></a>
										<a href="#pablo" class="btn btn-just-icon btn-simple btn-google"><i class="fa fa-google"></i></a>
									</div>-->
								</div>
							</div>
						</div>
					</div>				
				<% end_loop %>
			<% end_if %>
		</div>		
	</div>
</section>