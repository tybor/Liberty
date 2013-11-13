<?php
$repobaselink = "http://git.savannah.gnu.org/cgit/liberty-eiffel.git/tree";
$commitbaselink = "http://git.savannah.gnu.org/cgit/liberty-eiffel.git/commit/?id=";
$BaseDir = "/home/et";
$LibertyBase = "$BaseDir/Liberty";
$out = "$BaseDir/Liberty/website/et";
$stageout = "$out/stages";

$historysize = 5; // note: delete stagehistory manually on decrease

$lock = "$BaseDir/check.lock";
$request = "$out/request.new";
$requestJsonObj = "$out/request.serialjson";
$activeJsonObj = "$out/active.serialjson";

$currentTimes = "$out/current_times";
$timesHistory = "$out/times_history";

$templates = "$out/html_templates";

$dateFormat = "Y-m-d G:i:s O (T)";

$publicBase = "";
$img = "$publicBase/images";

$gitBranch = "master";
if (file_exists("$BaseDir/branch")) {
   $gitBranch = trim(file_get_contents("$BaseDir/branch"));
}
?>