<section id="testimonialBlock" class="section testimonials-2 <% if $BackgroundImage %>section-dark header-filter<% end_if %>" style="<% if $BackgroundColor %>background-color: #{$BackgroundColor};<% end_if %> <% if $BackgroundImage %>background-image:url('$BackgroundImage.Link');<% end_if %>">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 text-center">
				<h2 class="title">$Title</h2>
				$Content
			</div>
		</div>
		<div class="row">
				<div id="carousel-testimonial" class="carousel slide" data-ride="carousel">

					<div class="carousel-inner" role="listbox">
						<% loop $Testimonials %>
							<div class="item <% if $First %>active<% end_if %>">
								<div class="card card-testimonial card-plain">
									<div class="card-avatar">
										<a href="#pablo">
											<img class="img" src="$Image.CroppedImage(250, 250).Link" alt="$Image.Title" />
										</a>
									</div>

									<div class="content">
										<h5 class="card-description">
											"$Content"
										</h5>
										<h4 class="card-title">$Title</h4>
										<h6 class="category text-muted">$Position</h6>

										<% if $Buttons %>
											<% loop $Buttons %>
												<a class="btn btn-round btn-lg btn-primary" href="$RedirectPage.Link" title="Go to $RedirectPage.Title">$Title</a>
											<% end_loop %>
										<% end_if %>
									</div>
								</div>
							</div>
						<% end_loop %>
					</div>

					<a class="left carousel-control" href="#carousel-testimonial" role="button" data-slide="prev">
						<i class="material-icons" aria-hidden="true">chevron_left</i>
					</a>
					<a class="right carousel-control" href="#carousel-testimonial" role="button" data-slide="next">
						<i class="material-icons" aria-hidden="true">chevron_right</i>
					</a>
				</div>		
		</div>
	</div>
</section>