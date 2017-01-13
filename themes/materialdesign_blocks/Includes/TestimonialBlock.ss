<section id="testimonialBlock" class="section testimonials-3 <% if $BackgroundImage %>section-dark header-filter<% end_if %>" style="<% if $BackgroundColor %>background-color: #{$BackgroundColor};<% end_if %> <% if $BackgroundImage %>background-image:url('$BackgroundImage.Link');<% end_if %>">
	<div class="container">
		<div class="row">
			<div class="col-md-8 <% if $Alignment == 'Center' %>col-md-offset-2 text-center<% end_if %>">
				<h2 class="title">$Title</h2>
				<div class="description">
					$Content
				</div>
			</div>
		</div>

		<div class="row">
			<% if $Testimonials %>
				<% loop $Testimonials %>
					<div class="col-md-$Top.ColNum">
						<div class="card card-testimonial">
							<div class="icon">
								<i class="material-icons">format_quote</i>
							</div>
							<div class="content">
								<h5 class="card-description">$Content</h5>
							</div>

							<div class="footer">
								<h4 class="card-title">$Title</h4>
								<h6 class="category">$Position</h6>
								<% if $Image %>
									<div class="card-avatar">
										<a href="">
											<img class="img" src="$Image.Link" />
										</a>
									</div>
								<% end_if %>
							</div>
						</div>
					</div>
				<% end_loop %>
			<% end_if %>
		</div>

		<div class="section-space"></div>
		<div class="row">
			<div class="col-md-8 <% if $Alignment == 'Center' %>col-md-offset-2 text-center<% end_if %>">
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
		</div>

	</div>
</section>