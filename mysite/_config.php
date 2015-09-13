<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'mami',
	"password" => 'DaiYaPeach0-+',
	"database" => 'SS_mysite',
	"path" => '',
);

// Set the site locale
i18n::set_locale('en_US');