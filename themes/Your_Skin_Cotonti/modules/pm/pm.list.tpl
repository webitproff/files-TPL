                        <a href="{PM_ROW_URL}" class="uk-link-reset">
                          <div class="uk-grid-medium uk-flex-middle uk-grid" uk-grid="">
                            <div class="uk-width-1-1 uk-width-1-3@s uk-text-center uk-first-column">
                              <!-- IF {PM_ROW_USER_AVATAR_URL} -->
                              <img src="{PM_ROW_USER_AVATAR_URL}" class="uk-comment-avatar uk-border-circle shadow-info" width="50" height="50">
                              <!-- ELSE -->
                              <img src="{PHP.R.userimg_default_avatar}" class="uk-comment-avatar uk-border-circle shadow-info" width="75" height="75">
                              <!-- ENDIF -->
                              <p class="uk-comment-title uk-margin-remove uk-text-center">
                                <span class="uk-link-reset">{PHP.row.user_name} <span>
                              </p>
                            </div>
                            <div class="uk-width-1-1 uk-width-expand@s ">
                              <div class="uk-comment-meta-top">
                                <p class=" uk-margin-remove uk-text-center uk-text-left@s uk-text-dark uk-text-bold">{PHP.row.pm_title}
                                </p>
                                <p class=" uk-text-center uk-text-left@s uk-text-dark">{PM_ROW_DESC|strip_tags($this)|cot_string_truncate($this,76)} ...</p>
                              </div>
                            </div>
                          </div>
                        </a>
