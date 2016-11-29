<div class="subscribe-line subscribe-line-image" <% if $BackgroundImage %>style="background-image: url('$BackgroundImage.Link');"<% end_if %>>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<div class="text-center">
					<h3 class="title">$Title</h3>
					$Content
				</div>

				<div class="card card-raised card-form-horizontal">
					<div class="content">
						$CurrentPage.MailChimpForm
						<!--<form method="" action="">
							<div class="row">
								<div class="col-sm-8">

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">mail</i>
										</span>
										<input type="email" value="" placeholder="Your Email..." class="form-control" />
									</div>
								</div>
								<div class="col-sm-4">
									<button type="button" class="btn btn-primary btn-block">Subscribe</button>
								</div>
							</div>
						</form>-->
					</div>
				</div>

			</div>
		</div>
	</div>
</div>