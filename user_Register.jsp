<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style3 {color: #FF0000}
.style6 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li><a href="admin_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="user_Login.jsp"><span>User</span></a></li>
          <li><a href="about_Project.html"><span></span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h2><span class="style1">CloudRaid Detecting Distributed Concurrency Bugs<br/>
          <small>via Log Mining and Enhancement</small></span></h2>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="294" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="294" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="294" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style6">
        <div class="article">
          <h2 class="style3">User  Registration.</h2>
          
          <div class="clr"></div>
        
          
          <p><form action="user_Insert_Data.jsp" method="post" id="sendemail" enctype="multipart/form-data">
            <ol>
              <li class="style3">
                <label for="name">User Name (required)</label>
                <input id="name" name="userid" class="text" />
              </li>
               <li class="style3">
                <label for="password">Password (required)</label>
                <input type="password" id="password" name="pass" class="text" />
              </li>
              <li class="style3">
                <label for="email">Email Address (required)</label>
                <input id="email" name="email" class="text" />
              </li>
			  <li class="style3">
                <label for="mobile">Mobile Number (required)</label>
                <input id="mobile" name="mobile" class="text" />
              </li>
              
              <li class="style3">
                <label for="address"> Address</label>
                <textarea id="address" name="address" rows="3" cols="50"></textarea>
              </li>
			  <li class="style3">
                <label for="dob">Date of Birth (required)</label>
                <input id="dob" name="dob" class="text" />
              </li>
			  <li class="style3">
                <label for="gender">Select Gender (required)</label>
                <select id="s1" name="gender" style="width:480px;" class="text">
                              <option>--Select--</option>
                              <option>MALE</option>
                              <option>FEMALE</option>
                </select>
              </li>
			  <li class="style3">
                <label for="pincode">Enter Pincode (required)</label>
                <input id="pincode" name="pincode" class="text" />
              </li>
			  <li class="style3">
                <label for="pincode">Enter Location (required)</label>
                <input id="loc" name="location" class="text" />
              </li>
			  <span class="style3">
			 			  </span>
			  <li>
                <span class="style3">
                <label for="pic">Select Profile Picture (required)</label>
                <label for="pic"></label>
                </span>
                <label for="pic"></label>
                <input type="file" id="pic" name="pic" class="text" />
                <ol>
                  
                  <ol>
                      
                    <ol>
                          <li>
                            <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" />
                      </li>
                    </ol>
                  </ol>
                </ol>
			  </li>
              <li>
                <div class="clr"></div>
              </li>
            </ol>
          </form></p>
		  <p></p>
		  <p align="right"><a href="user_Login.jsp">Back</a></p>
		  <div class="clr"></div>
        </div>
        <div class="article">
          
          <div class="clr"></div>
        
          
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
          <li><a href="index.html"><span>Home </span></a></li>
          <li><a href="admin_Login.jsp"><span>Admin</span></a></li>
          <li><a href="user_Login.jsp"><span>User</span></a></li>
          <li><a href="about_Project.html"><span></span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
     
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
