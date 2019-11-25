
<%@page import="com.jdbc.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.user.GlobalFunction"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
       			<div id="content">
                	<div class="cont_home_bot">
                           
                        <div class="home_box" >
                          <div class="home_box" style="width:700px">
                          <form action="userhome">
                       <table  width="100%"  cellspacing="10" cellpadding="1" border="1" align="middel" style="background:#ffff left top repeat-x; font-size: 15px;">
 
            <tr>
               
                 <td colspan="2"><font size="3" color="red">Cloud VM Reservation  </font> 
                    
                </td>
                
            <tr>
               
                 <td colspan="2">&nbsp;  
                    
                </td>
       
            </tr>
                  <tr>
                <td>Customer name
                    <% 
            GlobalFunction GF = new GlobalFunction();
           int Userid = Integer.parseInt((String)session.getAttribute("sesid"));
            String FullName = GF.getFullName(Userid);
            %>
                </td> <td><input type="text" name="user" value="<%=FullName %>" disabled="disabled">
                    
                </td>
       
            </tr>
                
             <tr>
               <td>Storage
                    
                </td> <td>
                <select name="Storage">
                <option value="">--Select Storage--</option>
	                <option value="10">10</option>
	                <option value="20">20</option>
	                <option value="30">30</option>
	                <option value="40">40</option>
	                <option value="50">50</option>
	                <option value="60">60</option>
	                <option value="70">70</option>
	                <option value="80">80</option>
	                <option value="90">90</option>
	                <option value="100">100</option>
	                               
                </select> GB
                
                
                <input type="hidden" name="Userid" value="<%= Userid %>">
                    
                </td>
       
            </tr>
             <tr>
               <td>Processor
                    
                </td> <td>
                <select name="processor" class="input-text" > 
                            <option name="">--Select Processor--</option>
                           <%
                           Connection con = ConnectionProvider.getConn();
                         
                          Statement st = con.createStatement();
                          
                          
                           ResultSet rs = st.executeQuery("select * from processor");
                           while(rs.next()){
                           int procId = rs.getInt(1);
                           
                           String ProcName = rs.getString(2);
                               %>
                               <option name="<%= ProcName %>" value="<%= procId %>"><%= ProcName %></option>
                               <%
                          
                           }
                           %>
                            
                            
                            
                        </select>
                
                </td>
       
            </tr>
              <tr>
               <td>RAM
                    
                </td> <td><input type="text" name="RAM"> GB
                    
                </td>
       
            </tr>   
              <tr>
               <td>Duration
                    
                </td> <td>
				<select name="Duration">
				 <option value="">--Select Duration--</option>
	                <option value="1">1</option>
	                <option value="2">2</option>
	                <option value="3">3</option>
	                <option value="4">4</option>
	                <option value="5">5</option>
	                <option value="6">6</option>
	                <option value="7">7</option>
	                <option value="8">8</option>
	                <option value="9">9</option>
	                <option value="10">10</option>
	                <option value="11">11</option>
	                <option value="12">12</option>                        
                </select> Month

                </td>
       
            </tr> 
            
                
                 
                <tr>
               <td colspan="2">
                    <input type="submit" value="Submit Query">
                </td>
       
            </tr> 
        </table>
        </form>
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
