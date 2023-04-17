
<!-- IF {PHP|cot_module_active('files')} AND {LIST_ROW_ID|cot_files_count('page', $this, '', 'images')} > 0 -->
<div class="uk-inline uk-cover-container">
  <canvas width="640" height="380"></canvas>
  <a href="{LIST_ROW_URL}" alt="{FILES_ROW_TITLE}">
	<img uk-cover src="{LIST_ROW_ID|cot_files_get('page', $this)|cot_files_thumb($this, 640, 380, 'crop')}" />
  </a>
</div>
<!-- ELSE -->
<div class="uk-inline thumbnail uk-cover-container uk-visible@s">
  <canvas width="640" height="380"></canvas>
  <img uk-cover src="themes/{PHP.theme}/img/empty-post.webp">
</div>
<!-- ENDIF -->


<!-- IF {PHP|cot_module_active('files')} -->
<hr class="uk-divider-icon uk-margin-remove-top uk-margin-small">
	<div class="uk-grid-small uk-flex-middle" uk-grid>
		<div class="uk-width-auto">
		{LIST_ROW_OWNER_AVATAR}
		</div>
		<div class="uk-width-expand">
			<h4 class="uk-margin-remove"><a class="uk-margin-remove uk-link-text" href="{LIST_ROW_OWNER_DETAILSLINK}">{LIST_ROW_OWNER_NICKNAME}</a></h4>
		</div>
	</div>
</div>
<!-- ENDIF -->


<!-- IF {PHP|cot_module_active('files')} -->
<!-- IF {LIST_ROW_ID|cot_files_count('page', $this, '', '')} > 0 -->
<div>
	<div uk-tooltip="Всего прикрепленно файлов / из них картинок / другие для бесплатного скачивания"><span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: image; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{LIST_ROW_ID|cot_files_count('page',$this)}/{LIST_ROW_ID|cot_files_count('page',$this,'','images')}/{LIST_ROW_ID|cot_files_count('page',$this,'','files')}</span></div>
</div>
<!-- ENDIF -->
<!-- ENDIF -->
