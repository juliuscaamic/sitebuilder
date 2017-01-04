<nav class="navbar navbar-dark navbar-fixed-top navbar-color-on-scroll navbar-transparent" style="<% if $NavigationBackgroundColor %>background:#{$NavigationBackgroundColor};<% end_if %>">
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
									<div class="brand">
										<h1>$Title</h1>
									</div>

									$Content
									<br />

									<% if $Buttons %>
										<div class="buttons">
											<% loop $Buttons %>
												<a href="$RedirectPage.Link" title="Go to $RedirectPage.Title" class="btn btn-primary" style="<% if $BackgroundColor %>background:#{$BackgroundColor}; box-shadow: 0 2px 2px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.14), 0 3px 1px -2px rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.2), 0 1px 5px 0 rgba($BackgroundColor.Red, $BackgroundColor.Green, $BackgroundColor.Blue, 0.12);<% end_if %><% if $TextColor %>color:#{$TextColor};<% end_if %>">
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
