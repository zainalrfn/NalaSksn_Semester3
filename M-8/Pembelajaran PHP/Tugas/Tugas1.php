<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" 
    crossorigin="anonymous">
</head>
<body>
<?php
date_default_timezone_set("Asia/Bangkok");
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Olah Nama Dosen</title>
</head>
<body>
    <h1>PHP From Validation Example</h1><br>
  <form class="text-center" action="bantuan.php" method="post" >
    <label for="">Name: </label>
    <input type="text" name="name" autocomplete="off" required> <br><br>
    <label for="">E-mail: </label>
    <input type="text" name="email" autocomplete="off" required> <br><br>
    <label for="">Webshite: </label>
    <input type="text" name="webshite" autocomplete="off"> <br><br>
    <label for="">Comment: </label>
    <textarea name="comment" id="" cols="50" rows="7"></textarea><br><br>
    <label for="" >Gender: </label>
    <input type="radio" name="gender" value="female" required>boy
    <input type="radio" name="gender" value="male" required>girl <br><br>
    <button type="submit" name="submit" value = <?php echo date("h:i:sa"); ?> >Submit</button>
  </form>
</body>
</html>
</body>
</html>