<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Status</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
</head>
<body style="background:linear-gradient(to right,#aa4b6b,#6b6b83,#3b8d99);">
<?php
session_start();
  
  ?>
  <nav class="navbar navbar-light bg-dark">
  <div class="container-fluid text-white">
    <a class="navbar-brand text-white">Peaceful Services</a>
    <span>
    <i class="fas fa-user-shield"></i>
    
    <i class="fas fa-sign-out-alt"></i>
    <a href="form/logout.php" class="text-decoration-none text-white">Logout</a>
    
    </span>
  </div>
</nav>
<div ><a href="destroy.php"><i class="fas fa-sign-out-alt" style="margin-left:1000px;margin-top:20px;font-size:25px;color:#fff;">&nbsp;session destroy</i></a></div>
<?php
                    
  if(isset($_SESSION['status'])){
  foreach($_SESSION['status'] as $key => $value)
  {
         echo "  
            <table> 
            <form action='asp.php' method='POST'>         
            <div class='col-lg-3 my-5' style='margin-left:40%;'>
                <div class='mb-3'>
                    <label for='sender' class='form-label' style='color:#fff;font-size:16px;font-weight:400;'>sender</label>
                    <input type='text' name='sender' class='form-control' id='sender' placeholder='sender name'>
                </div>
                <div class='mb-3'>
                    <label for='hash' class='form-label' style='color:#fff;font-size:16px;font-weight:400;'>Hash key</label>
                    <input type='text' name='hash' class='form-control' id='hash' placeholder='hash key'>
                </div>
                <div class='mb-3'>
                    <label for='uid' class='form-label' style='color:#fff;font-size:16px;font-weight:400;'>Id</label>
                    <input type='text' name='uid' class='form-control' id='uid' value='$value[uid]'>
                </div>
                <div class='mb-3'>
                    <label for='uname' class='form-label' style='color:#fff;font-size:16px;font-weight:400;'>User Name</label>
                    <input type='text' name='uname' class='form-control' id='uname' value='$value[uname]'>
                </div>
                <div class='mb-3'>
                    <label for='unumber' class='form-label' style='color:#fff;font-size:16px;font-weight:400;'>User ph.no</label>
                    <input type='text'name='unumber' class='form-control' id='unumber' value='$value[unumber]'>
                </div>
                <div class='mb-3'>
                    <label for='uaddress' class='form-label' style='color:#fff;font-size:16px;font-weight:400;'>User address</label>
                    <input type='text' name='uaddress' class='form-control' id='uaddress' value='$value[uaddress]'>
                </div>
                <div class='mb-3'>
                    <label for='umode' class='form-label' style='color:#fff;font-size:16px;font-weight:400;'>pay mode</label>
                    <input type='text' name='umode' class='form-control' id='umode' value='$value[umode]'>
                </div>
                <div class='mb-3'>
                    <label for='exampleFormControlTextarea1' class='form-label' style='color:#fff;font-size:16px;font-weight:400;'>Example textarea</label>
                    <input type='textarea' name='message' class='form-control' id='exampleFormControlTextarea1' placeholder='text'>
                </div>
                <div class='mb-3'>
                
                    <input type='submit' name='sent' class='form-control' value='sent' style='background:#2C7744;color:#fff;font-weight:500;font-size:16px;width:50%;'>
               
                </div>
        </div>
        </form>
        </table>
        ";
  }
}
  ?>
</body>
</html>