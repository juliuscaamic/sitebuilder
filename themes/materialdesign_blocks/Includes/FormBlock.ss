<section id="formBlock" class="section section-content <% if $BackgroundImage %>header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h2 class="title">$Title</h2>
				$Content
			</div>
			<div class="col-md-6">
				<div class="card card-contact">
					<% if $CurrentPage.Action == finished %>
						<div class="alert alert-info">
							<div class="container">
								$CurrentPage.OnCompleteMessage
							</div>
						</div>
					<% end_if %>
					<div class="content">
						$CurrentPage.Form
					</div>
				</div>
			</div>
		</div>
	</div>
</section>