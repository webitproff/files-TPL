

<!-- IF {PHP|cot_module_active('files')} -->
<!-- IF {PAGE_ID|cot_files_count('page',$this,'','images')} > 0 -->
	{PAGE_ID|cot_files_gallery('page',$this,'','files.gallery.pagefull')}
<!-- ENDIF -->
<!-- ENDIF -->


<!-- IF {PHP|cot_module_active('files')} -->
<div>
	<div uk-tooltip="Всего прикрепленно файлов / из них картинок / другие для бесплатного скачивания"><span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: image; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{PAGE_ID|cot_files_count('page',$this)}/{PAGE_ID|cot_files_count('page',$this,'','images')}/{PAGE_ID|cot_files_count('page',$this,'','files')}</span></div>
</div>
<!-- ENDIF -->


<!-- IF {PHP|cot_module_active('files')} -->
<div class="uk-text-center">
  <!-- IF {PAGE_OWNER_AVATAR_URL} -->
  <img src="{PAGE_OWNER_AVATAR_URL}" class="uk-border-circle shadow-info" title="{PHP.pag.user_name}" alt="{PHP.pag.user_name}" width="120" height="120">
  <!-- ELSE -->
  <img src="{PHP.R.userimg_default_avatar}" class="uk-border-circle" alt="{PHP.pag.user_name}" width="120" height="120">
  <!-- ENDIF -->
</div>
<!-- ENDIF -->

                  

<!-- IF {PHP|cot_module_active('files')} -->
<!-- IF {PAGE_ID|cot_files_count('page',$this)} > 0 -->
<div class="uk-alert uk-alert-success uk-margin-top" uk-alert>
	<h3>{PHP.L.files_attachments}</h3>
	{PAGE_ID|cot_files_display('page',$this)}
</div>
<!-- ENDIF -->
<!-- ENDIF -->
