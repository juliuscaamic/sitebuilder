<section id="videoBlock" class="section section-content cd-section <% if $BackgroundImage %>header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<div class="row">
			<% if VideoLeft %>
				<div class="col-md-5">
                    <div class="iframe-container">
                        <iframe src="$VideoURL" frameborder="0" allowfullscreen height="250"></iframe>
                    </div>
				</div>
				<div class="col-md-7">
					<h2 class="card-title">$Title</h2>
					$Content

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
			<% else %>
				<div class="col-md-6">
					<h2 class="card-title">$Title</h2>
					$Content

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
                    <div class="iframe-container">
                        <iframe src="$VideoURL" frameborder="0" allowfullscreen height="250"></iframe>
                    </div>
				</div>
			<% end_if %>						
		</div>
	</div>
</section>