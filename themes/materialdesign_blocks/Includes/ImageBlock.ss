<section id="imageblock" class="section section-content cd-section <% if $BackgroundImage %>header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<div class="card card-plain card-blog">
			<div class="row">
				<% if ImageLeft %>
					<div class="col-md-5">
						<div class="card-image">
							<img class="img img-raised" src="$Image.Link" alt="$Image.Title">
						</div>
					</div>
					<div class="col-md-6 col-md-offset-1">
						<h2 class="card-title" <% if $TextColor %>style="color:#{$TextColor};"<% end_if %>>$Title</h2>
						<div class="card-description" <% if $TextColor %>style="color:#{$TextColor};"<% end_if %>>
							$Content
						</div>

						<% loop $Buttons %>
							<a <% if $TriggerOption == 'Popup' %>data-toggle="modal" data-target="#PopupBlock{$PopupBlockID}"<% else %>href="$RedirectPage.Link" title="Go to $RedirectPage.Title"<% end_if %> class="btn btn-lg" style="<% if $BackgroundColor %>background:#{$BackgroundColor}; box-shadow: 0 2px 2px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.14), 0 3px 1px -2px rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.2), 0 1px 5px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.12);<% end_if %><% if $TextColor %>color:#{$TextColor};<% end_if %>">
								<% if $Icon %>
									<i class="material-icons">$Icon</i>
								<% end_if %>
								$Title
							</a>
						<% end_loop %>

					</div>
				<% else_if $ImageRight %>
					<div class="col-md-6">
						<h2 class="card-title" <% if $TextColor %>style="color:#{$TextColor};"<% end_if %>>$Title</h2>
						<div class="card-description" <% if $TextColor %>style="color:#{$TextColor};"<% end_if %>>$Content</div>

						<% loop $Buttons %>
							<a <% if $TriggerOption == 'Popup' %>data-toggle="modal" data-target="#PopupBlock{$PopupBlockID}"<% else %>href="$RedirectPage.Link" title="Go to $RedirectPage.Title"<% end_if %> class="btn btn-lg" style="<% if $BackgroundColor %>background:#{$BackgroundColor}; box-shadow: 0 2px 2px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.14), 0 3px 1px -2px rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.2), 0 1px 5px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.12);<% end_if %><% if $TextColor %>color:#{$TextColor};<% end_if %>">
								<% if $Icon %>
									<i class="material-icons">$Icon</i>
								<% end_if %>
								$Title
							</a>
						<% end_loop %>

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
						<h2 class="card-title" <% if $TextColor %>style="color:#{$TextColor};"<% end_if %>>$Title</h2>
						<div class="card-description" <% if $TextColor %>style="color:#{$TextColor};"<% end_if %>>
							$Content
						</div>

						<% loop $Buttons %>
							<a <% if $TriggerOption == 'Popup' %>data-toggle="modal" data-target="#PopupBlock{$PopupBlockID}"<% else %>href="$RedirectPage.Link" title="Go to $RedirectPage.Title"<% end_if %> class="btn btn-lg" style="<% if $BackgroundColor %>background:#{$BackgroundColor}; box-shadow: 0 2px 2px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.14), 0 3px 1px -2px rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.2), 0 1px 5px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.12);<% end_if %><% if $TextColor %>color:#{$TextColor};<% end_if %>">
								<% if $Icon %>
									<i class="material-icons">$Icon</i>
								<% end_if %>
								$Title
							</a>
						<% end_loop %>
					</div>
				<% end_if %>						
			</div>
		</div>
	</div>
</section>