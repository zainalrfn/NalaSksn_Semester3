<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<h2>Daftar Nama Kamar</h2>
<ol>
<?php
for ($i = 1; $i <= 50; $i++) {
echo "<li>Kamar ke-$i</li>";
}
?>
</ol>
</body>
</html>