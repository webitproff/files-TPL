# files-TPL
The folder with templates and examples of connecting templates for displaying images and files on the front end of the site.
## папка с шаблонами и примерами подключения шаблонов для вывода изображений и файлов на фронтэнде сайта.
===
#### :no_entry: <span style="color: #ea0b0b;">Не перезаписывайте этими файлами, файлы шаблонов своей темы! здесь только конструкции - скопировал, вставил, всё!</span>
===
### Каждая подключаемая конструкция должна находится внутри функции проверки, установлени ли и запущен наш модуль "Files" 

```
<!-- IF {PHP|cot_module_active('files')} -->
Здесь теги подключения конструкций "Files" и HTML-код соответствующих шаблонов 
<!-- ENDIF -->
```

Например вывести на странице полной новости слайдер прикрепленных картинок, - это будет так:
в page.tpl вашего скина cotonti вставляем код (назовем "конструкция №1")

```
<!-- IF {PHP|cot_module_active('files')} -->
<!-- IF {PAGE_ID|cot_files_count('page',$this,'','images')} > 0 -->
	{PAGE_ID|cot_files_gallery('page',$this,'','files.gallery.pagefull')}
<!-- ENDIF -->
<!-- ENDIF -->
```

где "files.gallery.pagefull" - это наш шаблон слайдера, который находится по адресу
#### themes/Your_Skin_Cotonti*/modules/files/files.gallery.pagefull.tpl
*Your_Skin_Cotonti - название скина вашей темы (скина) Cotonti

И так, из условий выше, если модуль находится в активном состоянии и к конкретно этой странице прикреплено изображений больше нуля то конструкция №1 подключит наш шаблон слайдера "files.gallery.pagefull.tpl", который у меня к примеру имеет HTML-разметку вида:
```
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
				<div class="uk-position-small uk-position-bottom-center uk-panel"><span class="uk-icon-button uk-button-primary">{FILES_ROW_NUM} </span></div>
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
```
Здесь HTML-разметка использует фронтэнд библиотеку UIkit3 https://getuikit.com/docs/slider
У вас она может быть по вашим нуждам, какой угодно. 
Если например у вас Bootstrap 5.3, - по аналогии, используя HTML-разметку,  вы можете сделать слайдер взяв за пример <a href="https://www.cotonti.com/ru/docs/help/slider-for-cotonti">мою статью </a> 

Если что-то не получается, задавайте [вопросы на форуме.](https://www.cotonti.com/ru/forums?m=posts&q=7715&n=last#bottom)

### :eyes: не знаю что с этим делать! 
#### если нужна персональная поддержка по правке и подключению шаблонов на сдельной основе - [мой телеграм](https://t.me/webitproff)





