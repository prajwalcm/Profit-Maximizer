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
       			<div style="width: 100%;float: left;height: auto;background-color:#AFC9EA;">
                	
                           
                        
                          
                        <span style="margin-left:20px; font-size:20px; color:red">  Configuration request </span>  
                       
              
                  
                            
                             <%
	             String minval=null;
	               String instance;String user;
	             String Storage;String RAM;String Processor;
	             String Duration;String reserved;String pspot;String Cspot;
	             String Pip;String Cip;String Prp;String Crp;
	                String jobsize;
					 String idate;
					String  itime;
					String  reqtype="";
					 String servicetimeformat; 
					String timeslot; 
					String status; 
                         
//                  HttpSession session=request.getSession();
                    String uid=session.getAttribute("sesid").toString();
                    
                    Connection con = ConnectionProvider.getConn();
            		Statement stat = con.createStatement();
            		
//                     connector conn=new connector();   
//                     Connection connection=conn.connectionfun();
//                     Statement stat=conn.statementfun();
                    
                    String quesry2="select * from custrequest where uid="+uid;
                    GlobalFunction GF = new GlobalFunction();
                    System.out.println("quesry2"+quesry2);
                    ResultSet rs1=stat.executeQuery(quesry2);
                    float UserNewPrice =0;
                    while(rs1.next())
                    {
                       
                       
                    	Storage  =rs1.getString("Storage");      
                       RAM  =rs1.getString("RAM");     
                       Processor =GF.getProcName(Integer.parseInt(rs1.getString("Processor"))); 
                       Duration=rs1.getString("Duration");
                       Duration=rs1.getString("Duration");
                       UserNewPrice = rs1.getFloat("New_User_Price");
						status=rs1.getString("status"); 
						
// 						if(status.equals("0"))
// 						       {
// 						    status="<span style='color:red'>InProgress</span>";
// 						}else { status="active";}
                    
          
                          
                          %>   
                      <table cellspacing="1" cellpadding="1" border="1"  style="width:600px; margin-left:50px; font: 15px; margin-bottom: 20px">
                
                              <tr><td>Request ID </td><td><%= rs1.getString("id") %> </td></tr> 
                       
                      <tr><td>Storage</td><td><%=Storage  %> GB</td></tr> 
                      <tr><td>RAM</td><td><%=RAM   %> GB</td></tr> 
                      <tr><td>Processor</td><td><%= Processor  %></td></tr> 
                      
                      <tr><td>Duration</td><td><%= Duration %> Month</td></tr> 
                   
                      <tr><td>status</td><td>
                      
                      
                      <% 
                     
                      if(UserNewPrice!=0){
                    	  %>
							<a href="View_provider_response.jsp?reqID=<%= rs1.getString("id") %>">View Provider Response</a>
							<%
						}else{
							if(status.equalsIgnoreCase("Waiting")){
								%>
								<span style="color:red">Waiting</span>
								<%
							}else{
								%>
								<span style="color:green">InProgress</span>
								<%
								
							}
							
						}
                    	
                      %>
                      
                      </td></tr> 
             
                          </table>
               
                          <%
                        
                    }
                 
                  
                    %>
                     
                   
        		</div>
                
    
    <div style="height:15px"></div>

            <div id="footer">
                <%@ include file="footer.jsp" %>
          		
             </div>
        <!-- footer ends -->
</div>

</div>
</body>
</html>
