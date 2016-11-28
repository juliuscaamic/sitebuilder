<div class="page-header header-filter" style="background-image: url('$FeaturedImage.Link');">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2 text-center">
				<h1 class="title">$Title</h1>
				<h4>Posted on $PublishDate.Format(d F Y) by $Authors.First.FirstName</h4>
			</div>
		</div>
	</div>
</div>

<section class="section section-content">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2 blog-post">
				$Content
			</div>
		</div>
	</div>
</section>

<section class="section section-blog-info">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<% if $SiteConfig.DisqusEnable %>
					<% include Disqus %>				
				<% end_if %>
			</div>

		</div>
	</div>
</section>
