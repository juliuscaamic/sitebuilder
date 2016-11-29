<section id="formBlock" class="section section-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2 class="title">$Title</h2>
				$Content
					<% if $CurrentPage.Action == finished %>
						<div class="alert alert-info">
							<div class="container">
								$CurrentPage.OnCompleteMessage
							</div>
						</div>
					<% end_if %>
					$CurrentPage.Form
			</div>
		</div>
	</div>
</section>