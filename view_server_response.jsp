<%@page import="com.user.GlobalFunction"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jdbc.ConnectionProvider"%>
<%@page contentType="text/html" import="java.util.*" %>
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
	   out.println("<script>alert('Successfully sent...');</script>"); 
	}

if(request.getParameter("user")!=null){
   out.println("<script>alert('Incorrect login details...'); document.ulogin.email.focus();</script>"); 
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
                           
                        <div class="home_box" >
                          <div class="home_box" style="width:700px; height:300px">
                        <font size="3" color="red">  Configuration requesting for </font>  
                       <form action="SendToUser" action="post">
               
                    <%
	            
					String status=""; 
                         
    
                    int id=Integer.parseInt(request.getParameter("reqID"));
                    
                    Connection con = ConnectionProvider.getConn();
            		Statement stat = con.createStatement();
            		
					GlobalFunction GF = new GlobalFunction();
                    String quesry2="select * from custrequest where id="+id;
                    
                   
                    ResultSet rs1=stat.executeQuery(quesry2);
                    while(rs1.next())
                    {
                      
						status=rs1.getString("status"); 
						if(status.equals("0"))
						       {
						    status="<span style='color:red'>InProgress</span>";
						}else { status="active";}
                    
						 String user = GF.getFullName(rs1.getInt("uid"));
						 int Duration = Integer.parseInt(rs1.getString("Duration"));
						 
						 int ServerPrice = Integer.parseInt(rs1.getString("Server_Price"));
						 
						 float NSPS = (ServerPrice*Duration)/100;
						 float newServerPrice = NSPS + ServerPrice;
						 
						 String eligibility="";
						 if(Duration>=5 && Duration<=8){
							 eligibility="+ 1 Month";
						 }else if(Duration>=8){
							 eligibility="+ 2 Month";
							 
						 }else{
						 
							 eligibility="+ 0 Month";
						 }
						 String Processor =GF.getProcName(Integer.parseInt(rs1.getString("Processor")));
                          %>
                                
                      <table class="border_grey" width="100%" cellspacing="1" cellpadding="1" border="1" align="left" style="background:#ffff left top repeat-x; font: 15px; margin-bottom: 20px">
                
                              <tr><td>Request ID </td><td><%= rs1.getString("id") %> </td></tr> 
                       
                      <tr><td>User</td><td><%=user  %></td></tr> 
                      <tr><td>Storage</td><td><%=rs1.getString("Storage")   %> GB</td></tr> 
                      <tr><td>RAM</td><td><%= rs1.getString("RAM")  %> GB</td></tr> 
                      <tr><td>Processor</td><td><%= Processor %></td></tr> 
                      <tr><td>Duration</td><td><%= rs1.getString("Duration") %> Month
                      <% if(eligibility.equalsIgnoreCase("")){
                    	 out.println(eligibility);
                     }else{
                    	 out.println(eligibility);
                     }
                    	 
                    	 %>
                      </td></tr> 
                      <tr><td>Policy</td><td><%= rs1.getString("request_level") %></td></tr>
                      
                      <tr><td colspan="2">&nbsp;</td></tr> 
            
            	  <%
            	  String New_User_Price = rs1.getString("New_User_Price");
            	  
            	  if(New_User_Price.equalsIgnoreCase("0")){
            		  
            		  %>
            		  <tr><td>Server Price</td><td><%= rs1.getString("Server_Price") %> Rs.</td></tr>
            		  <tr><td colspan="2">&nbsp;<input type="hidden" value="<%= rs1.getString("id")  %>" name="reqID"></input></td></tr>
                      <tr><td>New Price</td><td>Rs. <input type="text" value="<%= newServerPrice  %>" name="New_User_Price"></input></td></tr> 
                     <tr><td colspan="2"><input type="submit" value="Send To User"/></td></tr>
           	
           	<%
            		  
            		  
            	  }else{
            		  
	            		  String NSP = rs1.getString("New_User_Price");
		            	  if(NSP.equalsIgnoreCase("0")){
		            		  %>
		            		  <tr><td colspan="2">Request Already Sent to User.</td></tr> 
		            		  <%
		            	  }else{
		            		  %>
		            		   <tr><td>Accepted Price </td><td><%= NSP %> Rs.</td></tr>
		            		  <tr><td colspan="2">Request Already Sent to User.</td></tr> 
		            		  <%		            		  
		            	  }
            		  
            		  %>
                      
                    
           	
           	<% 
            	  
            	  }
            	%>
                           </table>
               </form>
                          <%
                        
                    }
                 
                  
                    %>
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
