                        <a href="{PM_ROW_URL}" data-bs-toggle="tooltip" data-bs-title="open and read the message">
                          <div class="d-flex px-2 py-1">
                            <div>
                              <!-- IF {PM_ROW_USER_AVATAR_URL} -->
                              <img src="{PM_ROW_USER_AVATAR_URL}" class="avatar avatar-sm me-3">
                              <!-- ELSE -->
                              <img src="{PHP.R.userimg_default_avatar}" class="avatar avatar-sm me-3">
                              <!-- ENDIF -->
                            </div>
                            <div class="d-flex flex-column justify-content-center">
                              <h5 class="mb-0 text-xs text-dark-cot ff-monts">{PM_ROW_USER_NICKNAME}</h5>
                              <p class="text-xs text-secondary mb-0">
                                <span class="text-dark-cot">{PHP.row.pm_title}</span> {PM_ROW_DESC|strip_tags($this)|cot_string_truncate($this,36)} ...
                              </p>
									<!-- IF {PHP|cot_module_active('files')} -->
									<!-- IF {PM_ROW_ID|cot_files_count('pm', $this, '', '')} > 0 -->
									<div>
										<div uk-tooltip="Всего прикрепленно файлов / из них картинок / другие файлы"><span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: image; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{PM_ROW_ID|cot_files_count('pm',$this)}/{PM_ROW_ID|cot_files_count('pm',$this,'','images')}/{PM_ROW_ID|cot_files_count('pm',$this,'','files')}</span></div>
									</div>
									<!-- ENDIF -->
									<!-- ENDIF -->
                            </div>
                          </div>
                        </a>
