<nav class="navbar navbar-primary navbar-fixed-top bg-dark">
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
<div class="page-header header-filter header-small" style="background-image: url('$FeaturedImage.Link');">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="title">$Title</h1>
			</div>
		</div>
	</div>
</div>

<div class="blog-post">
	<section class="section section-text">
		<div class="container">
			<div class="row">
				<div class="col-md-12 blog-post">
					$Content
				</div>
			</div>
		</div>
	</section>
</div>

<section class="section section-blog-info">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<% if $SiteConfig.DisqusEnable %>
					<% include Disqus %>				
				<% end_if %>
			</div>

		</div>
	</div>
</section>
$BlockArea(AfterContent)