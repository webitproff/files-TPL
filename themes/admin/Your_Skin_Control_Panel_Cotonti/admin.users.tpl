<!-- BEGIN: MAIN -->
    <!-- BEGIN: ADMIN_USERS_DEFAULT -->
	<!-- Обязательно берем в условие "ADMIN_USERS_NGRP_PFS_MAX***" 
	потому, что модули PFS и Files используют этот тег -->
	<!-- IF {PHP|cot_module_active('files')} -->
	<tr>
		<td>{PHP.L.adm_maxsizesingle}:<br>(2147483647) - это Максимальный размер всех файлов: 2,1 GB</td>
		<td>{ADMIN_USERS_NGRP_PFS_MAXFILE}</td>
	</tr>
	<tr>
		<td>{PHP.L.adm_maxsizeallpfs}:<br>(10000000) - это Максимальный размер файла: 10,0 MB</td>
		<td>{ADMIN_USERS_NGRP_PFS_MAXTOTAL}</td>
	</tr>
	<tr>
		<td>Максимальное число файлов для каждой формы: <br>(1 - 12)</td>
		<td>{ADMIN_USERS_NGRP_ATTACH_PER_POST}</td>
	</tr>
	<!-- ENDIF -->
    <!-- END: ADMIN_USERS_DEFAULT -->

    <!-- BEGIN: ADMIN_USERS_EDIT -->
	<!-- Обязательно берем в условие "ADMIN_USERS_EDITFORM_GRP_PFS_MAX***" 
	потому, что модули PFS и Files используют этот тег -->
	<!-- IF {PHP|cot_module_active('files')} -->
	<tr>
		<td>{PHP.L.adm_maxsizesingle}:<br>(2147483647) - это Максимальный размер всех файлов: 2,1 GB</td>
		<td>{ADMIN_USERS_EDITFORM_GRP_PFS_MAXFILE}</td>
	</tr>
	<tr>
		<td>{PHP.L.adm_maxsizeallpfs}:<br>(10000000) - это Максимальный размер файла: 10,0 MB</td>
		<td>{ADMIN_USERS_EDITFORM_GRP_PFS_MAXTOTAL}</td>
	</tr>
	<tr>
		<td>Максимальное число файлов для каждой формы: <br>(1 - 12)</td>
		<td>{ADMIN_USERS_EDITFORM_GRP_ATTACH_PER_POST}</td>
	</tr>
	<!-- ENDIF -->
    <!-- END: ADMIN_USERS_EDIT -->

<!-- END: MAIN -->