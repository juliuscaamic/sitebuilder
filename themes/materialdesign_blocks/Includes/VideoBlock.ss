<section id="videoBlock" class="section section-content cd-section <% if $BackgroundImage %>header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<div class="row">
			<% if VideoLeft %>
				<div class="col-md-4 col-md-offset-1">
                    <div class="iframe-container">
                        <iframe src="{$VideoURL}?modestbranding=1&autohide=1&showinfo=0" frameborder="0" allowfullscreen height="250"></iframe>
                    </div>
				</div>
				<div class="col-md-6">
					<h2 class="card-title">$Title</h2>
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
			<% else %>
				<div class="col-md-6 col-md-offset-1">
					<h2 class="card-title">$Title</h2>
					$Content

					<% if $Buttons %>
						<% loop $Buttons %>
							<a class="btn btn-primary" href="$RedirectPage.Link" title="Go to $RedirectPage.Title" style="<% if $BackgroundColor %>background:#{$BackgroundColor}; box-shadow: 0 2px 2px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.14), 0 3px 1px -2px rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.2), 0 1px 5px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.12);<% end_if %><% if $TextColor %>color:#{$TextColor};<% end_if %>">
								$Title 
								<% if $Icon %>
									<i class="material-icons">$Icon</i>
								<% end_if %>
							</a>
						<% end_loop %>
					<% end_if %>

				</div>
				<div class="col-md-4">
                    <div class="iframe-container">
                        <iframe src="{$VideoURL}?modestbranding=1&autohide=1&showinfo=0" frameborder="0" allowfullscreen height="250"></iframe>
                    </div>
				</div>
			<% end_if %>						
		</div>
	</div>
</section>