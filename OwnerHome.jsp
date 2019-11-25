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
<script type="text/javascript" src="canvasjs.min.js"></script>
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
                           
                        <div class="home_box" style="width:100%; height:auto">
                        <font size="3" color="red">Server Congiguration</font>  
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
					//String CloudID = (String)session.getAttribute("CloudID");
					int CloudID = 0;
                   // int pkgID=Integer.parseInt(request.getParameter("pkgID"));
                    
                    Connection con = ConnectionProvider.getConn();
            		Statement stat = con.createStatement();
            		
//                     connector conn=new connector();   
//                     Connection connection=conn.connectionfun();
//                     Statement stat=conn.statementfun();
                    
                    String quesry2="select * from owner where Owner='"+Owner+"'";
                    
                    
                    ResultSet rs1=stat.executeQuery(quesry2);
                    while(rs1.next())
                    {
                      
                    	CloudID =  rs1.getInt("id");
                          
                          %>
                                
                      <table class="border_grey" cellspacing="1" cellpadding="1" border="1" style="width:300px; margin-left:auto;margin-right:auto;">
                
                              <tr><td>Server ID </td><td><%= rs1.getString("id") %> </td></tr> 
                       
                      <tr><td>Remaining Storage</td><td><%=rs1.getString("Storage") %> GB</td></tr> 
                      <tr><td>Remaining RAM</td><td><%=rs1.getString("RAM")   %> GB</td></tr> 
                        
                    
                       
                      
                      <tr><td colspan="2">&nbsp;</td></tr> 
         
                           </table>
               </form>
                          <%
                        
                    }
                 //con.close();
                  
                    %>
                  </div>
                  
                  <div id="page">
			
			<%
			
			GlobalFunction GF = new GlobalFunction();
			int CloudAvailableMemory = GF.getCloudMemory(CloudID);
			int AllocatedMemory = GF.getAcceptedMemory(CloudID);
			//int TotalM = CloudAvailableMemory + AllocatedMemory;
			
			//float proportionCorrect = ((float) AllocatedMemory) / ((float) TotalM);
		    //double ts =  proportionCorrect * 100;		
		   // DecimalFormat df = new DecimalFormat("##.##");
			//String AcceptedPercent = df.format(ts);
			
			//int Rejected = GF.getRejectedMemory(1);
			
			
			//out.println("----"+GF.getRejectedMemory(1));
			
			%>
			
			<script type="text/javascript">
window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer",
	{
		title:{
			text: "Memory Researvation Graph",
			fontFamily: "arial black"
		},
                animationEnabled: true,
		legend: {
			verticalAlign: "bottom",
			horizontalAlign: "center"
		},
		theme: "theme1",
		data: [
		{        
			type: "pie",
			indexLabelFontFamily: "Garamond",       
			indexLabelFontSize: 20,
			indexLabelFontWeight: "bold",
			startAngle:0,
			indexLabelFontColor: "MistyRose",       
			indexLabelLineColor: "darkgrey", 
			indexLabelPlacement: "inside", 
			toolTipContent: "{name}: {y} GB",
			showInLegend: true,
			indexLabel: "#percent%", 
			dataPoints: [
				{  y: <%= CloudAvailableMemory %>, name: "Total Available Memory", legendMarkerType: "triangle"},
				{  y: <%= AllocatedMemory %>, name: "Allocated Memory", legendMarkerType: "square"}
<%-- 				{  y: <%= Rejected %>, name: "Rejected", legendMarkerType: "circle"} --%>
			]
		}
		]
	});
	chart.render();
}
</script>
			
			<div id="chartContainer" style="height: 300px; width: 100%;"></div>
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
