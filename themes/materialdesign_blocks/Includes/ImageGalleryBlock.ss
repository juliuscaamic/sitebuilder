<section id="imageGallery" class="section section-content cd-section section-dark" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %>">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2 class="title">$Title</h2>

				<div class="m-p-g">

				    <div class="m-p-g__thumbs" data-google-image-layout data-max-height="350">
				    	<% loop $ImageGalleries %>
			            	<img src="$Image.CroppedImage(300, 300)Link" data-full="$Image.Link" class="m-p-g__thumbs-img" />
			            <% end_loop %>
				    </div>

				    <div class="m-p-g__fullscreen"></div>
				</div>				
			</div>
		</div>
	</div>
</section>