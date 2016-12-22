<main class="main">
	<% if $URLSegment == 'Security' %>
		<section class="section section-content">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<h2 class="title">$Title</h2>
						$Content
						$Form
					</div>
				</div>
			</div>
		</section>
	<% end_if %>
	$BlockArea(AfterContent)
</main>
