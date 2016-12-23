<section id="featureBlock" class="section section-content">
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
						<div class="col-md-3 <% if $Top.Alignment == 'Center' %>text-center<% end_if %>">
						   	<div class="info">
								<div class="icon icon-primary" <% if $IconColor %>style="color:#{$IconColor};"<% end_if %>>
									<i class="material-icons">$Icon</i>
								</div>
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
											<a class="btn btn-primary btn-simple" href="$RedirectPage.Link" title="Go to $RedirectPage.Title page">$Title <i class="material-icons">$Icon</i></a>
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
						<div class="phone-container">
							<% if $RedirectPage %>
								<a href="$RedirectPage.Link" title="Go to $RedirectPage.Title page">
									<img src="$Image.Link" alt="$Image.Title">
								</a>
							<% else %>
								<img src="$Image.Link" alt="$Image.Title">
							<% end_if %>
						</div>
					</div>
					<div class="col-md-6">

						<h2 class="title">$Title</h2>
						$Content

						<% loop $Features %>
							<div class="info info-horizontal">
								<div class="icon icon-primary" <% if $IconColor %>style="color:#{$IconColor};"<% end_if %>>
									<i class="material-icons">$Icon</i>
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