 <%
if(session.getAttribute("sesid")==null){
	
%>
 <a href="index.jsp" class="but but_t"  title="">Home</a>
      <a href="adminlogin.jsp" class="but" title=""> Provider </a>
      <a href="index.jsp" class="but" title=""> User </a>
      <!--<a href="gallery.html"  class="but" title="">Gallery</a>-->
      <a href="Owner.jsp"  class="but" title="">Owner</a>
      <a href="#" class="but" title="">Contact us</a>
      
 <% 
	
}else if(session.getAttribute("sesid")=="Amazon"){
	
%>
 <a href="OwnerHome.jsp" class="but but_t"  title="">Amazon Home</a>
     
      <a href="OwnerPackages.jsp" class="but" title="" style="display:none">Packages</a>
       <a href="logoutServlet" class="but" title="">Logout</a>
      
 <% 
	
}else if(session.getAttribute("sesid")=="Google"){
	
%>
 <a href="OwnerHome.jsp" class="but but_t"  title="">Google Home</a>
      <a href="provider_requests.jsp" class="but" title="">Request</a>
      <a href="OwnerPackages.jsp" class="but" title="" style="display:none">Contact us</a>
      <a href="logoutServlet" class="but" title="">Logout</a>
      
 <% 
	
}else if(session.getAttribute("sesid")=="Backup"){
	
%>
 <a href="OwnerHome.jsp" class="but but_t"  title="">Backup Home</a>
      <a href="provider_requests.jsp" class="but" title="">Request</a>
      <a href="OwnerPackages.jsp" class="but" title="" style="display:none">Contact us</a>
       <a href="logoutServlet" class="but" title="">Logout</a>
      
 <% 
	
}else{
	
	%>
	 <a href="userhomepage.jsp" class="but but_t"  title="">Home</a>
       <a href="user_packages.jsp"  class="but" title="" style="display:none">Packages</a>
      <a href="userhome1.jsp"  class="but" title="" >Status</a>
            <a href="https://drive.google.com/drive/u/2/my-drive"  class="but" title="" >Storage</a>
      
      <a href="userhome.jsp"  class="but" title="">Request</a>
    <a href="logoutServlet" class="but but_t"  title="">Logout</a>
	
	
	
	<% 
	
	
}

%>