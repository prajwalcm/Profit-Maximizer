<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="com.jdbc.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
</head>
<body><form action="adminhome">

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
<div class="top_top"></div>
<div class="top">

 <div id="wrapper">
        <div id="slider-wrapper">        
            <div id="slider" class="nivoSlider">
                <img src="images/s1.jpg" alt="" />
                <img src="images/s2.jpg" alt=""/>
                <img src="images/s3.jpg" alt="" />
            </div>        
        </div>

</div>

<script type="text/javascript" src="lib/jquery-1.4.3.min.js"></script>
    <script type="text/javascript" src="lib/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
</div>
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
                       <table class="border_grey" width="80%" cellspacing="1" cellpadding="1" border="1" align="left" style=" font-size: 15px;">
               
                    <tr> <font size="3" color="red"> Requesting  Configuration </font>  </tr>
                <tr>
                    <%!
                    String uid;
                    String rid;
                 String minval=null;
                   String instance;String user;
                 String vcpu;String memoru;String storage;
                 String OnDemand;String reserved;String pspot;String Cspot;
                 String Pip;String Cip;String Prp;String Crp;
                    String jobsize;
 String idate;
String  itime;
String  reqtype;
 String servicetimeformat; 
String timeslot; 
String status; 
                    %>
                   <% 
                    try{
//                        
//                  HttpSession session=request.getSession();
                 //   String uid=session.getAttribute("sesid").toString();
                    Connection con=ConnectionProvider.getConn();  
                  
                    Statement stat=con.createStatement();
                    
                    String quesry2="select * from custrequest where status='0' ";
                    
                    System.out.println("quesry2"+quesry2);
                    ResultSet rs1=stat.executeQuery(quesry2);
                    while(rs1.next())
                    {
                        uid=rs1.getString("uid");
                        rid=rs1.getString("id");
                       user=rs1.getString("user");
                       instance=rs1.getString("instance");
                       
                       System.out.println("instance->"+instance);
                       vcpu  =rs1.getString("vcpu");      
                       memoru  =rs1.getString("memory");     
                       storage =rs1.getString("storage"); 
                       jobsize=rs1.getString("jobsize");
 idate=rs1.getString("idate");
 itime=rs1.getString("itime");
 reqtype=rs1.getString("reqtype");
 servicetimeformat=rs1.getString("servicetimeformat"); 
timeslot=rs1.getString("timeslot"); 
status=rs1.getString("status"); 
if(status.equals("0"))
       {
    status="InProgress";
}else { status="active";}
                    
          
                          System.out.println("Crp->"+Crp);
                          %>
                                
                      
                      <tr><td style="color: red">user </td><td><%= user %> </td></tr> 
                      <tr><td style="color: green">user id</td><td><%= uid %> </td></tr> 
                       <tr><td style="color: green">request id</td><td><%= rid %> </td></tr> 
                      <tr><td>instance</td><td><%=instance  %></td></tr> 
                      <tr><td>vcpu</td><td><%=vcpu  %> GB</td></tr> 
                      <tr><td>memory</td><td><%=memoru   %> MB</td></tr> 
                      <tr><td> storage</td><td><%= storage  %> GB</td></tr> 
                      <tr><td>jobsize</td><td><%= jobsize %></td></tr> 
                      <tr><td> inastance time</td><td>$<%= idate+":"+ itime %></td></tr> 
                      <tr><td>reqtype</td><td><%=reqtype  %></td></tr> 
                      <tr><td>servicetimeformat ip</td><td>$<%=servicetimeformat  %></td></tr> 
                      <tr><td>timeslot</td><td><%= timeslot %></td></tr> 
                      <tr><td>status</td><td><%= status %></td></tr> 
                      <tr style="color: red;"> <td style="color: red">---------------------------------------------------------------------</td><td style="color: red">---------------------------------------------------------------------</td></tr>
                           
               
                          <%
                        
                    }
                    
                    
                    %>
                    
                    <%
                   }catch(Exception e){e.printStackTrace();
                                                 
                                             }
                    %>
                     <td><font size="4" color="red">
                            <a href="adminloginsucess1.jsp"><-back</ </td>
                     <td>
                         
                     </td>
                     </font><td>  </td> </tr>
                         
                              <%   // }
                   
                  
                              %>
                      
             
             <tr><td>&nbsp; </td> &nbsp;</tr>
            
            
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
