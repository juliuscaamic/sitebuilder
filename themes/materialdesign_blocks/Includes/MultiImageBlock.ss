<section class="section section-content cd-section imageblock <% if $BackgroundImage %>header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1 <% if $Alignment == 'Center' %>text-center<% end_if %>">
				<h2 class="title">$Title</h2>
			</div>
		</div>
		<% if $BlockImages %>
			<% loop $BlockImages %>
				<div class="card card-plain card-blog">
					<div class="row">
						<div class="col-md-3 col-md-offset-1">
							<div class="card-image">
								<img class="img img-raised" src="$Image.Link">
							</div>
						</div>
						<div class="col-md-7">
							<h3 class="card-title">$Title</h3>
							<div class="card-description">
								$Content
							</div>
						</div>
					</div>
				</div>			
			<% end_loop %>
		<% end_if %>
	</div>
</section>