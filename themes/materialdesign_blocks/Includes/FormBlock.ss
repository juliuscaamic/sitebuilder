<% if $Display == 'Section' %>
<section id="formBlock" class="section <% if $BackgroundImage %>section-image header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor} !important<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link') no-repeat !important<% end_if %>;">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h2 class="title">$Title</h2>
				<div class="description">
					$Content
				</div>
			</div>
			<div class="col-md-5 col-md-offset-1">
				<div class="card card-contact">
					<% if $CurrentPage.Action == finished %>
						<div class="alert alert-info">
							<div class="container">
								$CurrentPage.OnCompleteMessage
							</div>
						</div>
					<% end_if %>
					$CurrentPage.Form
				</div>
			</div>
		</div>
	</div>
</section>
<% else %>
<div class="modal fade" id="PopupBlock{$ID}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-form">
        <div class="modal-content">
            <div class="modal-header <% if $Alignment == 'Center' %>text-center<% end_if %>">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="material-icons">clear</i></button>
                <h2 class="modal-title card-title" id="myModalLabel">$Title</h2>
                <div class="description">
                    $Content
                </div>
            </div>
            <div class="modal-body">
                $CurrentPage.Form
            </div>
        </div>
    </div>
</div>
<% end_if %>