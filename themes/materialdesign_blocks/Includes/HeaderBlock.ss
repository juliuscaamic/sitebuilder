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

<% if $BackgroundImage || $BackgroundColor %>
<div id="headerBlock" class="page-header <% if $BackgroundImage %>header-filter<% end_if %>" style="<% if $BackgroundColor %>background-color:#{$BackgroundColor};<% end_if %> <% if $BackgroundImage %>background-image:url('$BackgroundImage.Link');<% end_if %>;">
	<div class="container">
        <div class="row">
            <div class="col-md-<% if $Image %>7<% else %>12<% end_if %>">
                <h1 class="title">$Title</h1>
                $Content
                <% if $Buttons %>
                    <% loop $Buttons %>
                        <a class="btn btn-lg btn-primary" href=""></a>
                    <% end_loop %>
                <% end_if %>
            </div>
            <% if $Image %>
                <div class="col-md-4">
                    <div class="card-image">
                        <img class="img-responsive img" src="$Image.SetRatioSize(600, 600, #000).Link" alt="$Image.Title">
                    </div>
                </div>
            <% end_if %>
        </div>            
    </div>
</div>
<% else %>
    <div class="section-space"></div>
<% end_if %>