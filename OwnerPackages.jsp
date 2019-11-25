<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="com.user.GlobalFunction"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jdbc.ConnectionProvider"%>
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
<%
if(request.getParameter("incorrect")!=null){
	   out.println("<script>alert('Incorrect Login Details...');</script>"); 
	}

if(request.getParameter("Exist")!=null){
   out.println("<script>alert('User Name already exists...'); document.uRegister.email.focus();</script>"); 
}
%>
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
                           
                        <div class="home_box" style="width:700px; height:360px">
                        <font size="3" color="red"> Packages By Owner</font>  
                       <form action="SetAlgorithm" action="post">
               
                    <%
	             String minval=null;
	               String instance;String user;
	             String vcpu;String memoru;String storage;
	             String OnDemand;String ResearvPrice;String ResearvTime;String Cspot;
	             String Pip;String Cip;String Prp;String Crp;
	                String ip;
					 String rp;
					String  ft;
					String  reqtype="";
					 String lt; 
					String timeslot; 
					String status; 
                         
//                  HttpSession session=request.getSession();
					String Owner = (String)session.getAttribute("sesid");
                   // int pkgID=Integer.parseInt(request.getParameter("pkgID"));
                    
                    Connection con = ConnectionProvider.getConn();
            		Statement stat = con.createStatement();
            		
//                     connector conn=new connector();   
//                     Connection connection=conn.connectionfun();
//                     Statement stat=conn.statementfun();
                    
                    String quesry2="select * from packages where Owner='"+Owner+"'";
                    
                    
                    ResultSet rs1=stat.executeQuery(quesry2);
                    while(rs1.next())
                    {
                      
          
                          
                          %>
                                
                      <table class="border_grey" width="100%" cellspacing="1" cellpadding="1" border="1" align="left" style="background:#ffff left top repeat-x; font: 15px; margin-bottom: 20px">
                
                              <tr style="color:green"><td>Package Name </td><td><%= rs1.getString("InstanceName") %> </td></tr> 
                       
                      <tr><td>Storage</td><td><%=rs1.getString("Storage") %> GB</td></tr> 
                      <tr><td>RAM</td><td><%=rs1.getString("RAM")   %> GB</td></tr> 
                       
                    
                       
                      
                      <tr><td colspan="2">&nbsp;</td></tr> 
         
                           </table>
               </form>
                          <%
                        
                    }
                 
                  
                    %>
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
                <div class="cont_bot"></div>
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
