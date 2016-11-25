<section class="section section-content textblock">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2 class="title">$Title</h2>
				$Content

				<% if $Buttons %>
					<% loop $Buttons %>
						<a class="btn btn-primary" href="$RedirectPage.Link" title="Go to $RedirectPage.Title">$Title</a>
					<% end_loop %>
				<% end_if %>
			</div>
		</div>
	</div>
</section>