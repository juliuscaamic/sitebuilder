<section id="textBlock" class="section section-content <% if $BackgroundImage %>header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1 <% if $Alignment == 'Center' %>text-center<% end_if %>">
				<h2 class="title">$Title</h2>
				<div class="description">
					$Content
				</div>

				<% if $Buttons %>
					<% loop $Buttons %>
						<a class="btn btn-primary" href="$RedirectPage.Link" title="Go to $RedirectPage.Title" style="<% if $BackgroundColor %>background:#{$BackgroundColor}; box-shadow: 0 2px 2px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.14), 0 3px 1px -2px rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.2), 0 1px 5px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.12);<% end_if %><% if $TextColor %>color:#{$TextColor};<% end_if %>">$Title</a>
					<% end_loop %>
				<% end_if %>
			</div>
		</div>
	</div>
</section>