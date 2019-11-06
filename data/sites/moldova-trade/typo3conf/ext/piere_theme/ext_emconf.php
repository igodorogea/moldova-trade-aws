<?php

/* * *************************************************************
 * Extension Manager/Repository config file for ext "introduction".
 *
 * Auto generated 23-06-2015 10:40
 *
 * Manual updates:
 * Only the data in the array - everything else is removed by next
 * writing. "version" and "dependencies" must not be touched!
 * ************************************************************* */

$EM_CONF[$_EXTKEY] = array(
    'title' => 'Site theme',
    'description' => 'This distribution extension extends bootstrap_package theme and allows you to customize it',
    'category' => 'distribution',
    'version' => '1.0.0',
    'state' => 'beta',
    'uploadfolder' => true,
    'createDirs' => 'fileadmin/user_upload/documents/,fileadmin/user_upload/images/,fileadmin/user_upload/news/',
    'clearcacheonload' => true,
    'author' => 'Ivan Godorogea',
    'author_email' => 'igodorogea@gmail.com',
    'author_company' => 'Winify AG',
    'constraints' => array(
        'depends' => array(
            'typo3' => '6.2.0-7.9.99',
            'bootstrap_package' => '6.2.0-7.9.99',
            'realurl' => '1.12.8-2.99.99',
            'crawler' => '3.6.0-0.0.0',
            // no dependency, only auto install
            'indexed_search' => '6.2.0',
            'scheduler' => '6.2.0-7.2.99',
            'recycler' => '6.2.0-7.2.99',
        ),
        'conflicts' => array(),
        'suggests' => array(),
    ),
);
