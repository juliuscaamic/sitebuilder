<section id="featureBlock" class="section section-content">
	<div class="container">
		<% if not $Image %>
			<div class="row">
				<div class="col-md-12">
					<h2 class="title">$Title</h2>
					$Content
				</div>
			</div>
			<% if $Features %>
				<div class="row">
					<% loop $Features %>
						<div class="col-md-3">
						   	<div class="info">
								<div class="icon icon-info">
									<i class="material-icons">$Icon</i>
								</div>
								<div class="description">
									<h4 class="info-title">$Title</h4>
									<% if $Content %><p>$Content</p><% end_if %>
									<% if $Buttons %>
										<% loop $Buttons %>
											<a href="#pablo">Find more...</a>
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
							<img src="$Image.Link" alt="$Image.Title">
						</div>
					</div>
					<div class="col-md-6">

						<h2 class="title">$Title</h2>
						$Content

						<% loop $Features %>
							<div class="info info-horizontal">
								<div class="icon icon-primary">
									<i class="material-icons">$Icon</i>
								</div>
								<div class="description">
									<h4 class="info-title">$Title</h4>
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