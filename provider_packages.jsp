<%@page import="com.user.GlobalFunction"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jdbc.ConnectionProvider"%>
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
<%
if(request.getParameter("success")!=null){
	   out.println("<script>alert('Request sent successfully...');</script>"); 
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
     <%@ include file="adminmenu.jsp"%>
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
                           
                        <div class="home_box" style="width:100%">
                          
Welcome Agent
<table cellpadding="2" cellspacing="5" width="100%">
<tr style="background-color: #ccc; text-align: center">
	<td>Sr.No</td>
	<td>Package Name</td>
	<td>Storage</td>
	<td>RAM</td>
	<td>Duration</td>
	<td>Price</td>

</tr>
 <%
                   // boolean Authorised=false;
                       int providerid = Integer.parseInt((String)session.getAttribute("sesid"));
                        Connection con = ConnectionProvider.getConn();
                        GlobalFunction GF= new GlobalFunction();
                      //  String Admin = (String)session.getAttribute("admin");
                        int srno = 1;
                        String status="";
                        Statement st= con.createStatement();
                        ResultSet rs = st.executeQuery("select * from provider_packages where provider_id="+providerid);
                        while(rs.next()){
                       
                       // String user = GF.getUserName(rs.getInt("uid"));
                       
                        
                        
                            %>
                        
                    
                    <tr style="text-align: center"">
                        <td><%= srno++ %></td>
                        <td>PKG<%= rs.getString("Storage") %></td>
                        <td><%= rs.getString("Storage") %> GB</td>
                        <td><%= rs.getString("RAM") %>GB</td>
                        <td><%= rs.getString("Duration") %> Month</td>
                        <td><%= rs.getString("Price") %> Rs.</td>
                        
                         
                         
                    </tr>
                    <%
                        
                        }
                    
                    %>

</table>
                              
                       </div>
                      	
               	  	</div>
                   
                	
                   
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
