<div class="header-3">
    <nav class="navbar navbar-transparent navbar-absolute">
    	<div class="container">

        	<div class="navbar-header">
        		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example">
            		<span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
        		</button>
        		<a class="navbar-brand" href="$BaseHref" title="Go to $SiteConfig.Title Home page">
        			<img src="$SiteConfig.Logo.Link" alt="$SiteConfig.Title" />
        		</a>
        	</div>

        	<div class="collapse navbar-collapse" id="navigation-example">
				<ul class="nav navbar-nav navbar-right">
					<% loop $CurrentPage.Menu(1) %>
	                    <li>
	                        <a href="$Link">
	                            $MenuTitle.XML
	                        </a>
	                    </li>
					<% end_loop %>
                </ul>
        	</div>
    	</div>
    </nav>
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		<div class="carousel slide" data-ride="carousel">

			<% if $IsRotatingBanner %>
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<% loop $Banners %>
						<li data-target="#carousel-example-generic" data-slide-to="$IndexNumber($Pos)" class="<% if $First %>active<% end_if %>"></li>
					<% end_loop %>
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
</div>