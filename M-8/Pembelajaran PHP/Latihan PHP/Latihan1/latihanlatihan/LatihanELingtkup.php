<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
$x = 5; // global scope
function myTest()
{
// penggunan x didalam function akan menghasilkan error
echo "<p>Variable x didalam function is: $x</p>";
}
myTest();
echo "<p>Variable x diluar function is: $x</p>";
?>


</body>
</html>