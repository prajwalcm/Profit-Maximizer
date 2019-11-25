<%@page import="com.user.GlobalFunction"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
</head>
<body>

<div id="bg_clouds">
<div id="main">
<!-- header begins -->
<div id="header">
	<div id="logo">
    	<a href="#">A Profit Maximization Scheme with Guaranteed Quality of Service</a>
      	<!--<h2><a href="#" id="metamorph">A Price- and-Time-Slot-Negotiation Mechanism</a></h2>-->
    </div>
	<div id="buttons">
     <%@ include file="menu.jsp"%>
    </div>
</div>
<!-- header ends -->
<div class="top_top"></div>
<div class="top">

 

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
                           
                        <div class="home_box" >
                          <div class="home_box">
                       <table  width="100%"  cellspacing="1" cellpadding="1" border="1" style="background:#ffff left top repeat-x; font-size: 15px;">
 
            <tr>
            <% 
            GlobalFunction GF = new GlobalFunction();
           int Userid = Integer.parseInt((String)session.getAttribute("sesid"));
            String FullName = GF.getFullName(Userid);
            %>
                <td> Welcome <%= FullName %> </font> 
                    
                </td>
                 
                           
                </tr>   
                <tr>
                    <td>   <a href="userhome1.jsp">Status</a> </font> 
                     </td>
                </tr>
                  <tr>
                    <td>  <a href="userhome.jsp">Request </a> </font> 
                     </td>
                </tr>
        </table><br><br>
                       </div>
                              
                       </div>
                      	
               	  	</div>
                   
                	<div class="razd_h"></div>
                   
                	<div class="razd_lr_h">
                    	<div id="left_h">
                        <div style="height:10px"></div>
                            
                            <div style="height:15px"></div>
                            
                            
                        </div>
                   	  
                       
                 	</div>
        		</div>
                
    <!-- content ends --> 
    <div style="height:15px"></div>
    <!-- bottom begin -->
    
<!-- bottom end --> 
<!-- footer begins -->
            <div id="footer">
                <%@ include file="footer.jsp" %>
          		
             </div>
        <!-- footer ends -->
</div>

</div>
</body>
</html>
