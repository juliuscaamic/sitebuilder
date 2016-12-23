<nav class="navbar navbar-dark navbar-fixed-top navbar-color-on-scroll navbar-transparent">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="logo navbar-brand" href="$BaseHref">
                <img src="$SiteConfig.Logo.Link" alt="$SiteConfig.Title" />
            </a>
        </div>

        <div class="collapse navbar-collapse" id="navigation-example">
            <ul class="nav navbar-nav navbar-right">
                <% loop $CurrentPage.Menu(1) %>
                    <li class="<% if $Children %>dropdown<% end_if %>">
                        <a <% if $Children %>class="dropdown-toggle" data-toggle="dropdown"<% end_if %> href="<% if $Children %>javascript::void();<% else %>$Link<% end_if %>">
                            $MenuTitle.XML
                            <% if $Children %>
                                <b class="caret"></b>
                            <% end_if %>
                        </a>
                        <% if $Children %>
                            <ul class="dropdown-menu">
                                <% loop $Children %>
                                    <li>
                                        <a href="$Link" title="Go to $Title.XML page">
                                            $MenuTitle.XML
                                        </a>
                                    </li>
                                <% end_loop %>
                            </ul>
                        <% end_if %>
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
								<div class="col-md-8 <% if $Top.Alignment == 'Center' %>col-md-offset-2 text-center<% else %>text-left<% end_if %>">
									<h1 class="title">$Title</h1>
									$Content
									<br />

									<% if $Buttons %>
										<div class="buttons">
											<% loop $Buttons %>
											<a href="$RedirectPage.Link" title="Go to $RedirectPage.Title" class="btn btn-primary btn-lg">
												$Title
												<% if $Icon %>
													<i class="material-icons">$Icon</i>
												<% end_if %>
											</a>
											<% end_loop %>
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
