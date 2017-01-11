<section class="section section-content">
	<div class="container">
		<div class="row">
			<% if $CurrentPage.PaginatedList.Exists %>
				<% loop $CurrentPage.PaginatedList %>
					<div class="col-md-6">
						<div class="card card-raised card-background blog-item" style="background-image: url('$FeaturedImage.Link')">
							<div class="content">
								<% if $Categories.exists %>
									<h6 class="category text-info">Categories: 	
										<% loop $Categories %>
											$Title</a> <% if not Last %>, <% end_if %>
										<% end_loop %>
									</h6>
								<% end_if %>

								<a href="$Link" title="Go to $TitleXML page">
									<h3 class="card-title">
										<% if $MenuTitle %>
											$MenuTitle
										<% else %>
											$Title
										<% end_if %>
									</h3>
								</a>
								<p class="card-description">
									<% if $Summary %>
										$Summary
									<% else %>
										<p>$Excerpt</p>
									<% end_if %>
								</p>
								<a href="$Link" title="Read More about $Title" class="btn btn-danger btn-round">
									<i class="material-icons">format_align_left</i> Read Article
								</a>
							</div>
						</div>				
					</div>			
				<% end_loop %>
			<% else %>
				<p><%t Blog.NoPosts 'There are no posts' %></p>
			<% end_if %>
		</div>
	</div>
</section>

<% with $CurrentPage.PaginatedList %>
	<section class="section section-blog-info">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<% if $MoreThanOnePage %>
						<ul class="pagination pagination-primary">
							<% if $NotFirstPage %>
								<li><a href="{$PrevLink}">prev</a></li>
							<% end_if %>

							<% loop $PaginationSummary(4) %>
								<% if $CurrentBool %>
									<li class="active"><a href="$Link">$PageNum</a></li>
								<% else %>
									<li><a href="$Link">$PageNum</a></li>
								<% end_if %>
							<% end_loop %>

							<% if $NotLastPage %>
								<li><a href="{$NextLink}">next </a></li>
							<% end_if %>
						</ul>				
					<% end_if %>
				</div>
			</div>
		</div>
	</section>
<% end_with %>