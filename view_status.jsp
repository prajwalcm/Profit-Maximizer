<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jdbc.ConnectionProvider"%>
<%@page import="com.user.GlobalFunction"%>
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
                          <div class="home_box" style="width:700px; height:360px">
                        <font size="3" color="red">  Configuration requesting for </font>  
                       <form action="ClientConfirmation" action="post">
               
                    <%
	             String minval=null;
	               String instance;String user;
	             String vcpu;String memoru;String storage;
	             String OnDemand;String reserved;String pspot;String Cspot;
	             String Pip;String Cip;String Prp;String Crp;
	                String jobsize;
					 String idate;
					String  itime;
					String  reqtype="";
					 String servicetimeformat; 
					String timeslot; 
					String status; 
                         
//                  HttpSession session=request.getSession();
                    int id=Integer.parseInt(request.getParameter("reqID"));
                    
                    Connection con = ConnectionProvider.getConn();
            		Statement stat = con.createStatement();
            		
//                     connector conn=new connector();   
//                     Connection connection=conn.connectionfun();
//                     Statement stat=conn.statementfun();
                    
                    String quesry2="select * from custrequest where id="+id;
                    
                   
                    ResultSet rs1=stat.executeQuery(quesry2);
                    while(rs1.next())
                    {
                       user=rs1.getString("user");
                       instance=rs1.getString("instance");
                       
                       
                       vcpu  =rs1.getString("vcpu");      
                       memoru  =rs1.getString("memory");     
                       storage =rs1.getString("memory"); 
                       jobsize=rs1.getString("jobsize");
						 idate=rs1.getString("idate");
						 itime=rs1.getString("itime");
						// reqtype=rs1.getString("reqtype");
						 servicetimeformat=rs1.getString("servicetimeformat"); 
						timeslot=rs1.getString("timeslot"); 
						status=rs1.getString("status"); 
						if(status.equals("0"))
						       {
						    status="<span style='color:red'>InProgress</span>";
						}else { status="active";}
                    
          
                          
                          %>
                                
                      <table class="border_grey" width="100%" cellspacing="1" cellpadding="1" border="1" align="left" style="background:#ffff left top repeat-x; font: 15px; margin-bottom: 20px">
                
                              <tr><td>Request ID </td><td><%= rs1.getString("id") %> </td></tr> 
                       <tr><td>Method</td><td><span style="color:red"><%= rs1.getString("Algorithm")   %></span></td></tr>
                      <tr><td>cpu</td><td><%=vcpu  %> GB</td></tr> 
                      <tr><td>Memory</td><td><%=memoru   %> MB</td></tr> 
                        
                      <tr><td>Initial Price</td><td><%= rs1.getString("ip")  %> GB</td></tr> 
                      <tr><td>Least Preferred Price</td><td><%= rs1.getString("rp") %></td></tr> 
                      <tr><td>First time slot</td><td><%= rs1.getString("ft") %></td></tr> 
                      <tr><td>Last time slot</td><td><%= rs1.getString("lt")  %></td></tr> 
                      <tr><td>Jobsize</td><td> <%= rs1.getString("jobsize")  %></td></tr> 
                      <tr><td>Instance Time</td><td><%= idate+":"+ itime %></td></tr> 
                      <tr><td>Time Slot</td><td><%= timeslot %></td></tr> 
                      
                      <tr><td colspan="2">&nbsp;</td></tr> 
            
                      <tr><td colspan="2">&nbsp;
                      <input type="hidden" value="<%= rs1.getString("id")  %>" name="reqID"></input>
                      </td></tr> 
             <%
             String confirmation = rs1.getString("confirmation");
             if(confirmation.equalsIgnoreCase("0")){
            	 
            	 
             
             String AgentResp = rs1.getString("UserAgentResponse");
             if(AgentResp.equalsIgnoreCase("1")){
            	 
            	 %>
            	  <tr><td>Package</td><td><%
              String tempP = rs1.getString("tempPackage");
              GlobalFunction GF = new GlobalFunction();
              String[] pac=tempP.split(",");
              for(int i=0;i<pac.length;i++){
            	  String pckName = GF.getPackgeName(Integer.parseInt(pac[i]));
            	 %>
            	 <input type="radio" name="Algorithm" value="<%= pac[i] %>"><a href="view_package.jsp?pkgID=<%= pac[i] %>"><%= pckName %></a>
            	 
            	 <%
            	 // out.println(pckName);
            	  
              }
              
              %></td></tr> 
               <tr><td>Confirmation</td><td>
             
            	 <input type="radio" name="PackageConfirmation" value="Accept">Accept  <input type="radio" name="PackageConfirmation" value="Reject">Reject
            	 
            	</td></tr> 
             <tr><td colspan="2"><input type="submit" value="Confirm"></input></td></tr> 
            
            	 <%
            	 
             }else{
            	 %>
            	 
            	  <tr><td colspan="2">Request Sent to client.</td></tr> 
            	 <%
            	 
             }
             }else{
            	 
            	 %>
            	 <tr><td>Status</td><td> <%= rs1.getString("confirmation")  %></td></tr>  
           	  <tr><td colspan="2"><span style="color:red">Confirmation Sent.</span></td></tr> 
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
