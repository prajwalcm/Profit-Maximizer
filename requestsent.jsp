<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page contentType="text/html" import="java.util.*" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script type="text/javascript">
        
         function funInstance(){  
             var val=document.getElementById("req").value;
              var val1=document.getElementById("req1").value;
               var val2=document.getElementById("req2").value;
             //  alert("val->"+val.valueOf()+":"+val1.valueOf()+":"+val2.valueOf());
             var ans=val.valueOf();
             if(ans=="small")
                 {
//                      document.getElementById('cpu2').style.display = 'none'; 
//                    document.getElementById('mem2').style.display = 'none'; 
//                     document.getElementById('stor2').style.display = 'none'; 
                   document.getElementById('cpu1').style.display = 'block'; 
                    document.getElementById('mem1').style.display = 'block'; 
                     document.getElementById('stor1').style.display = 'block'; 
                       document.getElementById('cpu11').style.display = 'block'; 
                    document.getElementById('mem11').style.display = 'block'; 
                     document.getElementById('stor11').style.display = 'block'; 
                 }else if(ans=="large")
                 {
//                          document.getElementById('cpu1').style.display = 'none'; 
//                    document.getElementById('mem1').style.display = 'none'; 
//                     document.getElementById('stor1').style.display = 'none'; 
                     
                   document.getElementById('cpu2').style.display = 'block'; 
                    document.getElementById('mem2').style.display = 'block'; 
                     document.getElementById('stor2').style.display = 'block'; 
                      document.getElementById('cpu21').style.display = 'block'; 
                    document.getElementById('mem21').style.display = 'block'; 
                     document.getElementById('stor21').style.display = 'block'; 
                     }
   
         }
    </script>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Metamorphosis Design Free Css Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
</head>
<body><form action="userhome">

<div id="bg_clouds">
<div id="main">
<!-- header begins -->
<div id="header">
	<div id="logo">
    	<a href="#"></a>
      	<!--<h2><a href="#" id="metamorph">A Price- and-Time-Slot-Negotiation Mechanism</a></h2>-->
    </div>
	<div id="buttons">
      <a href="index.jsp" class="but but_t"  title="">Home</a>
      <a href="adminlogin.jsp" class="but" title=""> Admin </a>
      <!--<a href="gallery.html"  class="but" title="">Gallery</a>-->
      <a href="about_us.html"  class="but" title="">About us</a>
    <a href="index.jsp" class="but but_t"  title="">Logout</a>
    </div>
</div>
<!-- header ends -->

<div class="top_bot"></div>
<div style="height:17px"></div>
        <!-- content begins -->
        		<div class="cont_top"></div>
       			<div id="content">
                	<div class="cont_home_bot">
                        <div class="home_box">
                          
                           <br /><br />

                        </div><div style="width: 18px; height:26px; float: left;"></div>
                        <div class="home_box">
                       <table  width="210%"  cellspacing="1" cellpadding="1" border="1" align="middel" style="background:#ffff left top repeat-x; font-size: 15px;">
 
            <tr>
                <td> Thank you <%=session.getAttribute("sesuser").toString() %> For you interest</font> </br>
                    
                </td>
                </br>
                <td> </br><a href="userhomepage.jsp"> Back to Home Page </font> 
                    
                </td>
</tr>          
             
        </table><br><br>
                       </div><div style="width: 18px; height:26px; float: left;"></div>
                        <div class="home_box">
                          
                       </div>
                      	<div style="clear: both"></div>
               	  	</div>
                    <div style="height:10px"></div>
                	<div class="razd_h"></div>
                    <div style="height:10px"></div>
                    <div style="height:25px">
                    	
                    </div>    
                	<div class="razd_lr_h">
                    	<div id="left_h">
                        <div style="height:10px"></div>
                            
                            <div style="height:15px"></div>
                            
                            
                        </div>
                   	  
                        <div style="clear: both"></div>
                 	</div>
        		</div>
                <div class="cont_bot"></div>
    <!-- content ends --> 
    <div style="height:15px"></div>
    <!-- bottom begin -->
<!--    <div id="bottom_bot">
        <div id="bottom">
        <div id="b_col1">
              <h1>Useful Resources</h1>
                <div style="height:10px"></div>
                    <ul class="spis_bot">
                        <li><a href="#">Lorem ipsum dolor sit amet </a></li>
                        <li><a href="#">Maecenas in magna quis augue</a></li>
                        <li><a href="#">Ut a mauris nec eros consect</a></li>
                        <li><a href="#">Nam luctus felis at mauris co </a></li>
                        <li><a href="#">Aliquam sagittis ligula sit amet </a></li>
                        <li><a href="#">Quisque sit amet est id urna</a></li>
                    </ul>
                </div>
                <div id="b_col2">
                    <h1>Contact Information</h1>
                    <div style="height:20px"></div>
                    <div style="padding-left:10px">
                        <div  class="box_us">
                              <div  class="box_us_l">
                                <img src="images/fish_us1.png" alt="" />
                              </div>
                              <div  class="box_us_r">
                                    <b class="lh">1234 Some Street, Brooklyn, NY 11201</b>
                              </div>
                              <div style="clear: both; height:10px;"></div>
                        </div>
                        <div  class="box_us">
                              <div  class="box_us_l">
                                <img src="images/fish_us2.png" alt="" />
                              </div>
                              <div  class="box_us_r">
                                    <b class="lh">Phone:  1(234) 567 8910<br />
                                        Fax: 1(234) 567 8910
                                    </b>
                              </div>
                              <div style="clear: both; height:10px;"></div>
                        </div>
                        <div  class="box_us">
                              <div  class="box_us_l">
                                <img src="images/fish_us3.png" alt="" />
                              </div>
                              <div  class="box_us_r">
                                    <b class="lh">E-mail: companyname@yahoo.com</b>
                              </div>
                              <div style="clear: both; height:10px;"></div>
                        </div>
                    </div>
            </div>
    
            <div id="b_col3">
            	<h1>Share with Others</h1>
              	<div style="height:15px"></div>
                    <ul>
                        <li><img src="images/fu_i1.png" class=" fu_i" alt="" /><a href="#">Subscribe to Blog</a></li>
                        <li><img src="images/fu_i2.png" class=" fu_i" alt="" /><a href="#">Be a fan on Facebook</a></li>
                        <li><img src="images/fu_i3.png" class=" fu_i" alt="" /><a href="#">RSS Feed</a></li>
                        <li><img src="images/fu_i4.png" class=" fu_i" alt="" /><a href="#">Follow us on Twitter</a></li>
                    </ul>  
                        
                </div>
          	<div style="clear: both; height:20px;"></div>
        </div>
    </div>-->
<!-- bottom end --> 
<!-- footer begins -->
            <div id="footer">
          		Copyright  2011. <!-- Do not remove -->Designed by <a href="http://www.metamorphozis.com/free_templates/free_templates.php" title="Free Web Templates">Free Web Templates</a>, coded by <a href="http://www.myfreecsstemplates.com/" title="Free CSS Templates">Free CSS Templates</a><!-- end --><br />
                <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a> | <a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional"><abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="This page validates as CSS"><abbr title="Cascading Style Sheets">CSS</abbr></a>
             </div>
        <!-- footer ends -->
</div>

</div></form>
</body>
</html>
