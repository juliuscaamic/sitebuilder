<main class="main">
	$BlockArea(BeforeContent)
		<% if $URLSegment == 'Security' %>
			<section class="section section-content">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<h2 class="title">$Title</h2>
							<% if $Content %>
								$Content
							<% end_if %>
							$Form
						</div>
					</div>
				</div>
			</section>
		<% else  %>
			<% if $Content %>
				<section class="section section-content">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								$Content
							</div>
						</div>
					</div>
				</section>
			<% end_if %>

		<% end_if  %>
	$BlockArea(AfterContent)
</main>
