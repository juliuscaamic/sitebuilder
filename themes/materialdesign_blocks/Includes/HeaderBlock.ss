<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	<div class="carousel slide" data-ride="carousel">

		<% if $IsRotatingBanner %>
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<% loop $Banners %>
					<li data-target="#carousel-example-generic" data-slide-to="$IndexNumber($Pos)" class="<% if $First %>active<% end_if %>"></li>
				<% end_loop %>
				<!--<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>-->
			</ol>
		<% end_if %>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<% loop $Banners %>
				<div class="item <% if $First %>active<% end_if %>">
					<div class="page-header header-filter" style="background-image: url('$BackgroundImage.Link');">

						<div class="container">
							<div class="row">
								<div class="col-md-8 text-left">
									<h1 class="title">$Title</h1>
									<h4>$Content</h4>
									<br />

									<% if $Buttons %>
										<div class="buttons">
											<% loop $Buttons %>
											<a href="$RedirectPage.Link" title="Go to $RedirectPage.Title" class="btn btn-primary btn-round btn-lg">
												$Title
											</a>
											<% end_loop %>
											<!--<a href="#pablo" class="btn btn-just-icon btn-white btn-simple btn-lg">
												<i class="fa fa-twitter"></i>
											</a>
											<a href="#pablo" class="btn btn-just-icon btn-white btn-simple btn-lg">
												<i class="fa fa-facebook-square"></i>
											</a>
											<a href="#pablo" class="btn btn-just-icon btn-white btn-simple btn-lg">
												<i class="fa fa-get-pocket"></i>
											</a>-->
										</div>
									<% end_if %>
								</div>
							</div>
						</div>
			        </div>

				</div>
			<% end_loop %>

		</div>

		<% if $IsRotatingBanner %>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
				<i class="material-icons">keyboard_arrow_left</i>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
				<i class="material-icons">keyboard_arrow_right</i>
			</a>
		<% end_if %>

	</div>
</div>