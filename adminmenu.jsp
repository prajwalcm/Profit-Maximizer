 <%
if(session.getAttribute("sesid")==null){
	
%>
 <a href="index.jsp" class="but but_t"  title="">Home</a>
      <a href="adminlogin.jsp" class="but" title=""> Agent </a>
      <a href="index.jsp" class="but" title=""> User </a>
      <!--<a href="gallery.html"  class="but" title="">Gallery</a>-->
      <a href="#"  class="but" title="">About us</a>
      <a href="#" class="but" title="">Contact us</a>
      
 <% 
	
}else{
	
	%>
	 <a href="adminloginsucess1.jsp" class="but but_t"  title="">Home</a>
      
      <a href="user_requests.jsp"  class="but" title="">User Requests</a>
      <a href="agent_response.jsp"  class="but" title="">Server Response</a>
      <a href="profit_chart.jsp"  class="but" title="">Profit chart</a>
      <a href="provider_packages.jsp"  class="but" title="" style="display:none">Packages</a>
    <a href="logoutServlet" class="but but_t"  title="">Logout</a>
	
	<% 
	
	
}

%>