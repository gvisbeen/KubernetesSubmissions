<?php
$hash =  bin2hex(random_bytes(16));

while(1===1) {
    $date = new DateTime("now", new DateTimeZone('UTC'));
    echo $hash . '    ' . str_replace(' ', 'T', $date->format('Y-m-d H:i:s.up')) . "\n";
    sleep(5);
}