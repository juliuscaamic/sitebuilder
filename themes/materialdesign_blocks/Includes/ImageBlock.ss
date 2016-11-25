<section class="section section-content imageblock">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card card-plain card-blog">
					<div class="col-md-6">
						<h2 class="title">$Title</h2>
						$Content

						<% if $Buttons %>
							<% loop $Buttons %>
								<a class="btn btn-primary" href="$RedirectPage.Link" title="Go to $RedirectPage.Title">$Title</a>
							<% end_loop %>
						<% end_if %>

					</div>
					<div class="col-md-5 col-md-offset-1">
						<div class="card-image">
							<img class="img img-raised" src="$Image.Link" alt="$Image.Title">
						</div>
					</div>
				</div>
			</div>
		</div>		
	</div>
</section>