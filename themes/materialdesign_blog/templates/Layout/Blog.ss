$BlockArea(BeforeContent)
<section class="section section-content">
	<div class="container">
		<div class="row">
			<% if $PaginatedList.Exists %>
				<% loop $PaginatedList %>
					<% include PostSummary %>
				<% end_loop %>
			<% else %>
				<p><%t Blog.NoPosts 'There are no posts' %></p>
			<% end_if %>
		</div>
	</div>
</section>

<% with $PaginatedList %>
	<section class="section section-blog-info">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<% include Pagination %>
				</div>
			</div>
		</div>
	</section>
<% end_with %>

$BlockArea(AfterContent)