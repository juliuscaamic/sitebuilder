<section id="contactUsMapBlock">
	<div class="main">
		<div class="contact-content">
			<div class="container">
	        	<h2 class="title">$Title</h2>
				<div class="row">
					<div class="col-md-6 description">
						$Content

						<% if $CurrentPage.Action == finished %>
							<div class="alert alert-info">
								$CurrentPage.OnCompleteMessage
							</div>
						<% end_if %>
						$CurrentPage.Form

					</div>
	            	<div class="col-md-4 col-md-offset-2">
	            		<% if $Email %>
				        	<div class="info info-horizontal">
								<div class="icon">
									<i class="material-icons">email</i>
								</div>
								<div class="description">
									<h4 class="info-title">E-mail</h4>
									<p class="lead"><a href="mailto:$Email">$Email</a></p>
								</div>
				        	</div>
			        	<% end_if %>

	            		<% if $Contact %>
				        	<div class="info info-horizontal">
								<div class="icon">
									<i class="material-icons">phone</i>
								</div>
								<div class="description">
									<h4 class="info-title">Phone</h4>
									<p class="lead">$Contact</p>
								</div>
				        	</div>
			        	<% end_if %>

	            		<% if $Address %>
				        	<div class="info info-horizontal">
								<div class="icon">
									<i class="material-icons">pin_drop</i>
								</div>
								<div class="description">
									<h4 class="info-title">Address</h4>
									<p class="lead">$Address</p>
								</div>
				        	</div>
			        	<% end_if %>
				    </div>
	           </div>
	        </div>
		</div>
	</div>	
	<div id="blockMap" class="big-map map"></div>

</section>