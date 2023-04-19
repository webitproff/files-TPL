<!-- IF {PHP|cot_module_active('files')} -->
<!-- IF {PM_ID|cot_files_count('pm',$this)} > 0 -->
<h6>{PHP.L.files_attachments}</h6>
{PM_ID|cot_files_display('pm',$this)}
<!-- ENDIF -->
<!-- ENDIF -->
