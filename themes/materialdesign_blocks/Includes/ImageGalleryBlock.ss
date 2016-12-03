<section id="imageGallery" class="section section-content cd-section section-dark" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %>">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2 class="title">$Title</h2>

				<div class="m-p-g">

				    <div class="m-p-g__thumbs" data-google-image-layout data-max-height="350">
				    	<% loop $ImageGalleries %>
			            	<img src="$Image.Link" data-full="$Image.Link" class="m-p-g__thumbs-img" />
			            <% end_loop %>
			            <!-- Rest of your thumbnails... -->
				    </div>

				    <div class="m-p-g__fullscreen"></div>
				</div>				
				<!--<img class="img img-raised" width="200" src="$ThemeDir/img/examples/blog1.jpg">
				<img class="img img-raised" width="200" src="$ThemeDir/img/examples/blog3.jpg">
				<img class="img img-raised" width="200" src="$ThemeDir/img/examples/blog4.jpg">
				<img class="img img-raised" width="200" src="$ThemeDir/img/examples/blog5.jpg">-->
			</div>
		</div>
	</div>
</section>