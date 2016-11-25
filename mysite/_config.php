<?php

global $project;
$project = 'mysite';

global $database;
$database = 'sentro';

require_once("conf/ConfigureFromEnv.php");

i18n::set_locale('en_US');
HtmlEditorConfig::get('cms')->setOption('content_css', project() . '/css/editor.css');