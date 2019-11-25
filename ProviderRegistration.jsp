<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />


<script language="Javascript">
 
     
function validEmail() {
	var mail=document.ureg.t1.value;
	if(mail== ""){
        alert("Enter mailid");
        document.ureg.t1.value="";
        document.ureg.t1.focus();
        return false;
    }
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail))  
    {  
    }else{
    	alert("Enter mailid");
    	document.ureg.t1.value="";
    	 document.ureg.t1.focus();
       return false;
	}
}

 
 
    function AllowAlphabet() {
        if (!ureg.t2.value.match(/^[a-zA-Z]+$/)
                && ureg.t2.value != "") {
        	ureg.t2.value = "";
        	ureg.t2.focus();
            alert("Please Enter only alphabet in text");
        }
        
        if (!ureg.t3.value.match(/^[a-zA-Z]+$/) 
        		&& ureg.t3.value != "") {
        	ureg.t3.value = "";
        	ureg.t3.focus();
            alert("Please Enter only alphabets in text");
        }
        if (!ureg.t8.value.match(/^[a-zA-Z]+$/) 
        		&& ureg.t8.value != "") {
        	ureg.t8.value = "";
        	ureg.t8.focus();
            alert("Please Enter only alphabets in text");
        }


    }
</script>
 
 <script>
        function Validate()
        { 
            var y = document.ureg.t9.value;
           
           if(isNaN(y)||y.indexOf(" ")!=-1)
           {
        	   
        	   ureg.t9.value="";
        	   ureg.t9.focus();
              alert("Enter numeric value");
              return false;
           }
            if (y.length!=10)
           {
                alert("enter 10 characters");
                return false;
           } 
           
           if (!y.match(/^[0-9]+$/) 
           		&& y != "") {
           	y = "";
           	ureg.t9.focus();
               alert("Please Enter only Digits in text");
           }

        }
        </script>
 
 <script language="Javascript">
function validation()

{
if(document.ureg.t2.value== "")
{
alert("Please enter User First Name");
document.ureg.t2.value="";
document.ureg.t2.focus();
return false;
}



if(document.ureg.t3.value== "")
{
alert("Please enter User Last name");
document.ureg.t3.value="";
document.ureg.t3.focus();
return false;
}


if(document.ureg.t8.value== "")
{
alert("Please enter City");
document.ureg.t8.value="";
document.ureg.t8.focus();
return false;
}

if(document.ureg.t9.value== "")
{
alert("Please enter Mobile number");
document.ureg.t9.value="";
document.ureg.t9.focus();
return false;
}


if(document.ureg.t1.value== "")
{
alert("Please enter Email Id");
document.ureg.t1.value="";
document.ureg.t1.focus();
return false;
}


if(document.ureg.t5.value== "")
{
alert("Please enter Password");
document.ureg.t5.value="";
document.ureg.t5.focus();
return false;
}


if(document.ureg.t6.value== "")
{
alert("Please enter Confirm password");
document.ureg.t6.value="";
document.ureg.t6.focus();
return false;
}
 }


</script>
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
<%
if(request.getParameter("success")!=null){
	   out.println("<script>alert('Successfully registred...');</script>"); 
	}

if(request.getParameter("Exist")!=null){
   out.println("<script>alert('Email already exists...'); document.uRegister.email.focus();</script>"); 
}
%>
<div class="top_bot"></div>
<div style="height:17px"></div>
        <!-- content begins -->
        		<div class="cont_top"></div>
       			<div id="content">
                	<div class="cont_home_bot">
                           
                        <div class="home_box" style="margin-left: auto; margin-right: auto; width:400px">
                          <form action="ProviderRegisteration" name="ureg" onsubmit="return validation()">
                           
                            <table class="border_grey" width="400px" cellspacing="20" cellpadding="0" border="0.1" align="top" style="background:#ffff left top repeat-x;">
			<tr>
                <td colspan="2"><h2>New User Registration</h2></td>
   			</tr>               
             <tr>
                <td colspan="2">&nbsp;</td>
   			</tr>
                        
                 
           
             <tr>
               <td> First name   </td><td><input type="text" name="t2" onblur="return AllowAlphabet()"/></td>
                               
            </tr> 
                
                 <tr>
               <td> Last name   </td><td><input type="text" name="t3" onblur="return AllowAlphabet()"/></td>
                               
            </tr>  
                 
                 <tr>
               <td> City  </td><td><input type="text" name="t8" onblur="return AllowAlphabet()"/></td>
                               
            </tr> 
            <tr>
               <td> Mobile number  </td><td><input type="text" name="t9" onblur="return Validate()"/></td>
               
               </tr>
                
                 
                  
            <tr class="separator">
               <td> Email address   </td><td><input type="text" name="t1" onblur="return validEmail()"/></td>
                               
            </tr> 
            <tr>
               <td> Password   </td><td><input type="password" name="t5" /></td>
                               
            </tr> 
                  
                 <tr>
                    <td style="text-align:center;" colspan="2"><input type="submit" name="Submit" value="SUBMIT"></input></td>
                </tr>
                  <tr>
                <td colspan="2">
                   Already a member? 
                   <a href="adminlogin.jsp">Login here</a>
                </td>          </tr>               
               
          </table>
                              </form>
                              
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
