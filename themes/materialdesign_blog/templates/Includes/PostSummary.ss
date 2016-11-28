<div class="col-md-6">
	<div class="card card-raised card-background blog-item" style="background-image: url('$FeaturedImage.Link')">
		<div class="content">
		<% include EntryMeta %>
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
