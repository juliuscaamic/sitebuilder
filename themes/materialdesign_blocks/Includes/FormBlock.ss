<section id="formBlock" class="section <% if $BackgroundImage %>section-image header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor} !important<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link') no-repeat !important<% end_if %>;">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h2 class="title">$Title</h2>
				<div class="description">
					$Content
				</div>
			</div>
			<div class="col-md-5 col-md-offset-1">
				<div class="card card-contact">
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
	</div>
</section>