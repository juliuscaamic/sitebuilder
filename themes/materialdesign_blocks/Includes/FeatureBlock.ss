<section id="featureBlock" class="section section-content cd-section <% if $BackgroundImage %>header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<% if not $Image %>
			<div class="row">
				<div class="col-md-8 <% if $Alignment == 'Center' %>col-md-offset-2 text-center<% end_if %>">
					<h2 class="title">$Title</h2>
					$Content
				</div>
			</div>
			<% if $Features %>
				<div class="row">
					<% loop $Features %>
						<div class="col-md-$Top.ColNum() <% if $Top.Alignment == 'Center' %>text-center<% end_if %>">
						   	<div class="info">
								<% if $Icon %>
									<% if $RedirectPage %>
										<a href="$RedirectPage.Link" title="Go to $RedirectPage.Title">
											<img class="img" src="$Icon.Link" alt="$Icon.Title" height="100">
										</a>
									<% else %>
										<img class="img" src="$Icon.Link" alt="$Icon.Title" height="100">
									<% end_if %>
								<% end_if %>

								<div class="description">
									<% if $RedirectPage %>
										<a href="$RedirectPage.Link" title="Go to $RedirectPage.Title page">
											<h4 class="info-title">$Title</h4>
										</a>
									<% else %>
										<h4 class="info-title">$Title</h4>
									<% end_if %>

									<% if $Content %><p>$Content</p><% end_if %>
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
					<% end_loop %>
				</div>
			<% end_if %>

		<% else %>
			<div class="features-3">
				<div class="row">
					<div class="col-md-6">
						<div class="card-image">
							<% if $RedirectPage %>
								<a href="$RedirectPage.Link" title="Go to $RedirectPage.Title page">
									<img class="img img-raised" src="$Image.Link" alt="$Image.Title">
								</a>
							<% else %>
								<img class="img img-raised" src="$Image.Link" alt="$Image.Title">
							<% end_if %>
						</div>
					</div>
					<div class="col-md-5 col-md-offset-1">

						<h2 class="title">$Title</h2>
						<div class="description">$Content</div>

						<% loop $Features %>
							<div class="info info-horizontal">
								<div class="icon">
									<% if $Icon %>
										<% if $RedirectPage %>
											<a href="$RedirectPage.Link" title="Go to $RedirectPage.Title">
												<img class="img" src="$Icon.Link" alt="$Icon.Title" height="50">
											</a>
										<% else %>
											<img class="img" src="$Icon.Link" alt="$Icon.Title" height="50">
										<% end_if %>
									<% end_if %>

								</div>
								<div class="description">
									<% if $RedirectPage %>
										<a href="$RedirectPage.Link" title="Go to $RedirectPage.Title page">
											<h4 class="info-title">$Title</h4>
										</a>
									<% else %>
										<h4 class="info-title">$Title</h4>
									<% end_if %>
									<p>$Content</p>
								</div>
							</div>
						<% end_loop %>
					</div>
				</div>				
			</div>
		<% end_if %>
	</div>
</section>