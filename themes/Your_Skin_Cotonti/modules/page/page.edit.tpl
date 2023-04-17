<!-- IF {PHP|cot_module_active('files')} -->
	<div class="uk-margin">
		<label class="uk-form-label">{PHP.L.Files}/{PHP.L.Image}</label>
		<div class="uk-form-controls">
		{PAGEEDIT_FORM_ID|cot_files_filebox('page', $this)}
		</div>
	</div>
<!-- ENDIF -->