<?php
session_start();
$txt = $_POST['txt'];
$deleteid = $_POST['deleteid'];
$function = $_POST['func'];
include '../ajax/dbConnect.php';

if ($function == "addcart") {
  $sql = "SELECT ID,Name,Image,Description,FoodID,Category,Price FROM Food WHERE FoodID = $txt";
  if ($result = $mysqli->query($sql)) {
    while ($row = $result->fetch_array()) {

      $_SESSION['cart'][$txt] = [
        'count' => $_POST['count'],
        'name' => $row["Name"],
        'price' => $row["Price"],
        'image' => $row["Image"],
        'allprodprice' =>  $row["Price"] * $_POST['count'],
        'foodid' => $row["FoodID"]
      ];

      // session_destroy();
      $_SESSION['allcount'] = 0;
      // session_destroy();
      foreach ($_SESSION['cart'] as $item) {
        // $_SESSION['cart_cost'] += $item['price'] *  $item['count'];
        echo '<div class="row"style="background-color:;color:#c9c9c9;margin-right:10px;margin-left:10px;margin-bottom:10px;margin-top:10px;">
          <div class="col-4">
              <img style="height:70px;width:85px!important;" src="' . $item["image"] . '">
              
          </div>
          <div class="col-4">
          <h style="font-weight:200;color:#666666;font-size:1em;">' . $item["name"] . '</h><br>
          <h style="font-weight:500;color:black;font-size:1em;">' . $item["price"] . ' GEL</h><br>
          <h style="font-weight:400;color:black;font-size:1em;">' . $item["count"] . ' </h>
          <a href="javascript:void(0)" class="closebtn" style="margin-top:-20px;margin-right:-120px;font-size:30px!important;" onclick="deleteitem' . $item["foodid"] . '()">&times;</a>
          
          </div>
          
          
      </div><hr>
      <script>
        function deleteitem' . $item["foodid"] . '() {

          var func = "deleteitem";
          // console.log(parts);
          // let txt = "Hello";
          $.ajax({
              url: "/ajax/cart.php",
              type: "POST",
              data: {
                  func: func,
                  deleteid:' . $item["foodid"] . '
              },
              success: function(data) {
                  $("div.out").html(data);
                  document.getElementById("mySidenav").style.width = "305px";
              },
              error: function() {
                  console.log("ERROR");
              }

          })

      }
      </script>';

        $_SESSION['allcount'] += $item['allprodprice'];
      }
    }
  }
  echo ' <div class="row">
            <div class="col-12">
              <div class="foottt">
                      <p style="color:black;font-size:2em;">
                        Сумма :' . $_SESSION['allcount'] . ' GEL
                      </p>
              </div>
            </div>
        </div>';

  echo ' <div class="row">
            <div class="col-12 text-center">
              <div class=" foott">
                      <a href="/page/restaurancheckout.php"style="color:white;font-size:1.3em;">
                          Смотреть корзину  
                      </a>
              </div>
            </div>
        </div><hr>
        ';
  // var_dump($_SESSION['allcount']);
  // session_destroy();
}

if ($function == "opencart") {
  // var_dump(($_SESSION['cart']));
  if ($_SESSION['cart'] >=0 ) {
    if ($_SESSION['allcount'] !== 0) {
      foreach ($_SESSION['cart'] as $item) {


        echo '<div class="row"style="background-color:;color:#c9c9c9;margin-right:10px;margin-left:10px;margin-bottom:10px;margin-top:10px;">
          <div class="col-4">
              <img style="height:70px;width:85px!important;" src="' . $item["image"] . '">
              
          </div>
          <div class="col-4">
          <h style="font-weight:200;color:#666666;font-size:1em;">' . $item["name"] . '</h><br>
          <h style="font-weight:500;color:black;font-size:1em;">' . $item["price"] . ' GEL</h><br>
          <h style="font-weight:400;color:black;font-size:1em;">' . $item["count"] . ' </h>
          <a href="javascript:void(0)" class="closebtn" style="margin-top:-20px;margin-right:-120px;font-size:30px!important;" onclick="deleteitem' . $item["foodid"] . '()">&times;</a>
          
          </div>
          
          
      </div><hr>
      <script>
        function deleteitem' . $item["foodid"] . '() {

          var func = "deleteitem";
          // console.log(parts);
          // let txt = "Hello";
          $.ajax({
              url: "/ajax/cart.php",
              type: "POST",
              data: {
                  func: func,
                  deleteid:' . $item["foodid"] . '
              },
              success: function(data) {
                  $("div.out").html(data);
                  document.getElementById("mySidenav").style.width = "305px";
              },
              error: function() {
                  console.log("ERROR");
              }

          })

      }
      </script>';
      }
      echo ' <div class="row">
            <div class="col-12">
              <div class="foottt">
                      <p style="color:black;font-size:2em;">
                        Сумма :' . $_SESSION['allcount'] . ' GEL
                      </p>
              </div>
            </div>
        </div>';

      echo ' <div class="row">
            <div class="col-12 text-center">
              <div class=" foott">
                      <a href="/page/restaurancheckout.php"style="color:white;font-size:1.3em;">
                          Смотреть корзину  
                      </a>
              </div>
            </div>
        </div>';
      // var_dump($_SESSION['allcount']);
    } else {
      echo ' <div class="row">
              <div class="col-12 text-center">
                <div class=" foott">
                        <p style="color:white;font-size:1.4em;">
                            Корзина пуста
                        </p>
                </div>
              </div>
          </div>';
    }
  }
  // var_dump($_SESSION['cart']);
}

if ($function == "deleteitem") {
  $_SESSION['allcount'] -= $_SESSION['cart'][$deleteid]['allprodprice'];
  unset($_SESSION['cart'][$deleteid]);

  // var_dump();
  if (isset($_SESSION['cart'])) {
    if ($_SESSION['allcount'] !== 0) {
      foreach ($_SESSION['cart'] as $item) {


        echo '<div class="row"style="background-color:;color:#c9c9c9;margin-right:10px;margin-left:10px;margin-bottom:10px;margin-top:10px;">
          <div class="col-4">
              <img style="height:70px;width:85px!important;" src="' . $item["image"] . '">
              
          </div>
          <div class="col-4">
          <h style="font-weight:200;color:#666666;font-size:1em;">' . $item["name"] . '</h><br>
          <h style="font-weight:500;color:black;font-size:1em;">' . $item["price"] . ' GEL</h><br>
          <h style="font-weight:400;color:black;font-size:1em;">' . $item["count"] . ' </h>
          <a href="javascript:void(0)" class="closebtn" style="margin-top:-20px;margin-right:-120px;font-size:30px!important;" onclick="deleteitem' . $item["foodid"] . '()">&times;</a>
          
          </div>
          
          
      </div><hr>
      <script>
        function deleteitem' . $item["foodid"] . '() {

          var func = "deleteitem";
          // console.log(parts);
          // let txt = "Hello";
          $.ajax({
              url: "/ajax/cart.php",
              type: "POST",
              data: {
                  func: func,
                  deleteid:' . $item["foodid"] . '
              },
              success: function(data) {
                  $("div.out").html(data);
                  document.getElementById("mySidenav").style.width = "305px";
              },
              error: function() {
                  console.log("ERROR");
              }

          })

      }
      </script>';
      }
      echo ' <div class="row">
            <div class="col-12">
              <div class="foottt">
                      <p style="color:black;font-size:2em;">
                        Сумма :' . $_SESSION['allcount'] . ' GEL
                      </p>
              </div>
            </div>
        </div>';

      echo ' <div class="row">
            <div class="col-12 text-center">
              <div class=" foott">
                      <a href="/page/restaurancheckout.php"style="color:white;font-size:1.3em;">
                          Смотреть корзину  
                      </a>
              </div>
            </div>
        </div>';
      // var_dump($_SESSION['allcount']);
    } else {
      echo ' <div class="row">
              <div class="col-12 text-center">
                <div class=" foott">
                        <p style="color:white;font-size:1.4em;">
                            Корзина пуста
                        </p>
                </div>
              </div>
          </div>';
    }
  }
}
