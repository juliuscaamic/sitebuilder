<section class="section section-content cd-section team-1 <% if $BackgroundImage %>section-image header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<div class="row">
			<div class="col-md-8 <% if $Alignment == 'Center' %>col-md-offset-2 text-center<% end_if %>">

				<% if $Title %>
					<h2 class="title">$Title</h2>
				<% end_if %>

				<div class="description">
					$Content
				</div>
			</div>
		</div>

		<div class="row">
			<% if $Members %>
				<% loop $Members %>
					<div class="col-md-$Top.ColNum">
						<div class="card card-profile card-plain">
							<% if $Image %>
								<div class="card-avatar">
									<a href="#pablo">
										<img class="img" src="$Image.Link" alt="$Image.Title" />
									</a>
								</div>
							<% end_if %>

							<div class="content">
								<h4 class="card-title">$Title</h4>
								<h6 class="category text-muted">$Position</h6>

								<p class="card-description">
									$Content
								</p>
							</div>
						</div>
					</div>
				<% end_loop %>
			<% end_if %>
		</div>
		<div class="row">
			<div class="col-md-8 <% if $Alignment == 'Center' %>col-md-offset-2 text-center<% end_if %>">
				<% if $Buttons %>
					<% loop $Buttons %>
						<a class="btn" href="$RedirectPage.Link" title="Go to $RedirectPage.Title" style="<% if $BackgroundColor %>background:#{$BackgroundColor}; box-shadow: 0 2px 2px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.14), 0 3px 1px -2px rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.2), 0 1px 5px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.12);<% end_if %><% if $TextColor %>color:#{$TextColor};<% end_if %>">
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