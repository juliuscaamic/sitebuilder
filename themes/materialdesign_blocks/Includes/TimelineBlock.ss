<section class="section section-content cd-section imageblock <% if $BackgroundImage %>header-filter<% end_if %>" style="background: <% if $BackgroundColor %>#{$BackgroundColor}<% end_if %> <% if $BackgroundImage %>url('$BackgroundImage.Link')<% end_if %>;">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2 class="title">$Title</h2>
                <div class="card card-plain">
                    <div class="card-content">
                    	<% if $Timelines %>
	                        <ul class="timeline">
	                        	<% loop $Timelines %>
                                    <li class="<% if $Odd %>timeline-inverted<% end_if %>">
                                        <div class="timeline-badge primary">
                                            $Date.Format('Y')
                                        </div>
                                        <div class="timeline-panel">
                                            <h6>
                                                <i class="fa fa-calendar"></i> $Date.Format('F d, Y')
                                            </h6>
                                        	<% if $Title %>
                                            <div class="timeline-heading">
                                                <h3 class="title">$Title</h3>
                                            </div>
                                            <% end_if %>
                                            <% if $Content %>
                                            <div class="timeline-body">
                                                $Content
                                            </div>
                                            <% end_if %>
                                        </div>
                                    </li>
	                        	<% end_loop %>
	                        </ul>
                    	<% end_if %>
                    </div>
                </div>				
			</div>
		</div>
	</div>
</section>