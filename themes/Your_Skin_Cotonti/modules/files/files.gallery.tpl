<!-- BEGIN: MAIN -->
<div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slider="center: true">
    <ul class="uk-slider-items uk-grid uk-grid-match" uk-height-viewport="min-height: 420; offset-top: true; offset-bottom: 30" uk-lightbox>
	<!-- BEGIN: FILES_ROW -->
		<!-- IF {FILES_ROW_IMG} -->
		<li class="uk-width-1-1 uk-width-3-4@m">
			<div class="uk-cover-container">
			<canvas width="640" height="320"></canvas>
				<a href="{FILES_ROW_URL}" data-caption="{PAGE_SHORTTITLE} {FILES_ROW_TITLE} - {FILES_ROW_FILENAME}" alt="{FILES_ROW_TITLE}">
				<img uk-cover src="{FILES_ROW_ID|cot_files_thumb($this,640,420,'crop')}" alt="{FILES_ROW_TITLE} - {FILES_ROW_FILENAME}" title="{FILES_ROW_TITLE} - {FILES_ROW_FILENAME}" />  
				</a>
				<div class="uk-position-small uk-position-bottom-center uk-panel"><span class="uk-icon-button uk-button-danger">{FILES_ROW_NUM} </span></div>
			</div>
		</li>
		<!-- ENDIF -->
	<!-- END: FILES_ROW -->
    </ul>
<div class="uk-visible@m">
    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>
</div>
</div>
<!-- END: MAIN -->


