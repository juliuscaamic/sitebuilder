<div id="contactUsMap" class="big-map"></div>
<section>
	<div class="container">
		<div class="col-md-6">
			$BlockArea(AfterContent)
			$Content
		</div>
		<div class="col-md-6">
			<% if $Address %>
				<div class="info info-horizontal">
					<div class="icon icon-primary">
						<i class="material-icons fa fa-map-marker"></i>
					</div>
					<div class="description">
						<h4 class="info-title">Find us at</h4>
						<p>$Address</p>
					</div>
				</div>
			<% end_if %>
			<% if $Email %>
				<div class="info info-horizontal">
					<div class="icon icon-primary">
						<i class="material-icons fa fa-envelope"></i>
					</div>
					<div class="description">
						<h4 class="info-title">Give us direct email</h4>
						<p>$Email</p>
					</div>
				</div>
			<% end_if %>
			<% if $ContactNumber %>
				<div class="info info-horizontal">
					<div class="icon icon-primary">
						<i class="material-icons fa fa-phone"></i>
					</div>
					<div class="description">
						<h4 class="info-title">Send us ring</h4>
						<p>$ContactNumber</p>
					</div>
				</div>
			<% end_if %>
		</div>
	</div>
</section>