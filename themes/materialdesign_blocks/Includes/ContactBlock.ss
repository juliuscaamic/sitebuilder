<section id="contactUsMapBlock">
	<div id="blockMap" class="big-map map"></div>
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
								<div class="icon icon-primary">
									<i class="material-icons">email</i>
								</div>
								<div class="description">
									<h5 class="info-title description">$Email</h5>
								</div>
				        	</div>
			        	<% end_if %>

	            		<% if $Contact %>
				        	<div class="info info-horizontal">
								<div class="icon icon-primary">
									<i class="material-icons">phone</i>
								</div>
								<div class="description">
									<h5 class="info-title">$Contact</h5>
								</div>
				        	</div>
			        	<% end_if %>

	            		<% if $Address %>
				        	<div class="info info-horizontal">
								<div class="icon icon-primary">
									<i class="material-icons">pin_drop</i>
								</div>
								<div class="description">
									<h5 class="info-title">$Address</h5>
								</div>
				        	</div>
			        	<% end_if %>
				    </div>
	           </div>
	        </div>
		</div>
	</div>	
</section>
<!--<section class="cd-section">
	<div class="contactus-2">
		<div id="block-map" class="map"></div>
			<div class="card card-contact card-raised">
				<div class="header header-raised header-rose text-center">
					<h4 class="card-title">Contact Us</h4>
				</div>
				<div class="content">

					<div class="row">
						<% if $Contact %>
							<div class="col-md-6">
								<div class="info info-horizontal">
									<div class="icon icon-rose">
										<i class="material-icons">phone</i>
									</div>
									<div class="description">
										<h5 class="info-title">Give us a ring</h5>
										<p>$Contact</p>
									</div>
								</div>
							</div>
						<% end_if %>

						<% if $Address %>
							<div class="col-md-6">
								<div class="info info-horizontal">
									<div class="icon icon-rose">
										<i class="material-icons">pin_drop</i>
									</div>
									<div class="description">
										<h5 class="info-title">Find us at the office</h5>
										<p>$Address</p>
									</div>
								</div>
							</div>
						<% end_if %>
					</div>

					<div class="row">
						<div class="cold-md-12">
							<% if $CurrentPage.Action == finished %>
								<div class="alert alert-info">
									$CurrentPage.OnCompleteMessage
								</div>
							<% end_if %>
							$CurrentPage.Form
						</div>
					</div>
				</div>

			</div>
	</div>
</section>-->
