<?php

require __DIR__ . '/vendor/autoload.php';

$db = new PDO("mysql:dbname=vz413309_form;host=vz413309.mysql.tools", 'vz413309_form', '^3iN2K4)ge');
$sql = "SELECT * FROM `tbl_form` WHERE `age` > 18";

$data = $db->query($sql);

foreach ($data as $val)
{
    $client = new \Google_Client();
    $client->setApplicationName('My php app');
    $client->setScopes([\Google_Service_Sheets::SPREADSHEETS]);
    $client->setAccessType('offline');

    $client->setAuthConfig('key.json');

    $service = new Google_Service_Sheets($client);

    $spreadsheetId = '1iV6p6yk4DLwxuZ7zMaHCnIMgxNHmBT6Fi_u3sFkYh5M';

    $range = 'list1';

    $valueInputOption = "RAW";


    $names = $val['name'];
    $surnames = $val['surname'];
    $ages = $val['age'];

    $values = [
        [$names, $surnames, $ages]
    ];

    $body = new Google_Service_Sheets_ValueRange([
        'values' => $values
    ]);

    $params = ['valueInputOption' => $valueInputOption];

    $result = $service->spreadsheets_values->append($spreadsheetId, $range, $body, $params);


}



