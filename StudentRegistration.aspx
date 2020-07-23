
<%@ Page  Language="C#"   MaintainScrollPositionOnPostback="true"
    AutoEventWireup="true" CodeFile="StudentRegistration.aspx.cs" Inherits="StudentRegistration"  %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <!-- Required meta tags -->
 <!-- Site made with Mobirise Website Builder v4.8.10, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.8.10, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets_student/images/p2dt-122x87.jpg" type="image/x-icon">
  <meta name="description" content="">
  <title>Registration form</title>
  <link rel="stylesheet" href="assets_student2/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets_student2/tether/tether.min.css">
  <link rel="stylesheet" href="assets_student2/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets_student2/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets_student2/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets_student2/dropdown/css/style.css">
  <link rel="stylesheet" href="assets_student2/theme/css/style.css">
  <link rel="stylesheet" href="assets_student2/mobirise/css/mbr-additional.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="Login/css/all.css">
    <link href="Login/css/LatoFont.css" rel="stylesheet">
    <link rel="stylesheet" href="Login/css/bootstrap.min.css">
    <link rel="stylesheet" href="Login/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <!-- <link rel="icon" type="image/png" sizes="32x32" href="img/favicon-32x32.png"> -->
  
    <%--<link href="../css/bootstrap.min.css" rel="stylesheet">--%>
    


  
     <script src="Login/js/jquery.min.js"></script>
    <script src="Login/js/bootstrap.min.js"></script> 
    <link href="../css/grid-edit.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript">
       function ShowSavePupup(msg) {
           $("#divSuccessMsg1").html(msg);
           $('#success-box').modal({ backdrop: 'static', keyboard: false });
        }
       

    </script>
<style>
#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: red;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}
</style>
</head>
    <body>


<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-home" size="30px"></i></button>
  <section class="menu cid-reygXK0YO4" once="menu" id="menu2-0">

    
<span id="USER_ID" style="display:none;" runat="server"></span>
    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top collapsed">
      <div> <a class="navbar-toggler-right" href="#menu" ><i class="fa fa-bars" style="font-size:35px;"></i>
                    </a></div>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="#">
                        <img src="Logo/p4dt-160x114.png" alt="P4DT" title="" style="height: 3.8rem;" id="img_Logo" runat="server">
                    </a>
                </span>
                 
                                   <span id="span_college_code" class="navbar-caption text-primary display-6" runat="server"></span> 
                <span class="navbar-caption-wrap"><a class="navbar-caption text-primary display-6" href="#">
                        &nbspSTUDENT CORNER</a></span>
         
            </div>

         
        </div>


<form>
	
          <nav id="menu">
				<ul class="links">
					<li><a href="students.aspx">Home</a></li>
                                       <li><a href="students.aspx#content4-q">Latest Technologies and Roles</a></li>
					<li><a href="students.aspx#counters2-y"">Events/Workshops</a></li>
					<li><a href="students.aspx#features18-14">Industry Connect</a></li>
					<li><a href="students.aspx#features12-17">Higher Studies</a></li>
                                        
                                        
                                                                      <li>
										<a href="#"><i class="fa fa-user" aria-hidden="true"></i><span id="span_student_name" runat="server"></span></a>
										<ul>
											<li><a 	href="#">Change Password</a></li>
											
											
										</ul>
									</li> 

				</ul>
			</nav>
      

    </nav>
</form>

<section class="engine"><a href="https://mobirise.info/n">free simple website templates</a></section><section class="carousel slide cid-reyhkwCniq" data-interval="false" id="slider1-1">

    

<section class="mbr-section content4 cid-reyDaxWm7F" id="content4-q">

    

    <div class="container">
        <div class="media-container-row">
            <div class="title col-12 col-md-8">

          <div id="success-box" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-green">
                    <%-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        ×</button>--%>
                    <h4 class="modal-title" id="H2">
                        <i class="fa fa-check"></i>&nbsp;Success...
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal form-label-left">
                        <div class="col-sm-12 col-xs-12" id="divSuccessMsg1">
                        </div>
                        <div class="clearfix">
                        </div>
                        <div class="modal-footer modal-footer-new">
                            <button type="button" class="btn btn-primary" data-dismiss="modal" id="ok" aria-hidden="true">
                                Ok</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div id="error-box" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-red">
                    <%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        ×</button>--%><h4 class="modal-title" id="H1">
                            <i class="fa fa-times-circle"></i>&nbsp;Error...
                        </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal form-label-left">
                        <div class="col-sm-12 col-xs-12" id="divErrorMsg">
                        </div>
                        <div class="clearfix">
                        </div>
                        <div class="modal-footer modal-footer-new">
                            <button type="button" class="btn btn-primary" data-dismiss="modal" aria-hidden="true">
                                Ok</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
        <div class="container">
        <form runat="server" method="post">
            <fieldset>
                <input type="hidden" runat="server" name="hidden" id="HdId" />
    <div class="x_panel">

                    <div class="x_title">
                        <div class="col-sm-4 col-xs-12"><button id="myBtn" title="Go to top"><i class="fa fa-home" size="30px"></i></button>
                           <legend><h2>Student Registration
                        
                            </h2></legend> 

                        </div>
                        <div class="col-sm-4 col-xs-12 text-center">
                        </div>

                        <div class="clearfix">
                        </div>
                    </div>

    <div class="x_content">

        <div class="form-group">
            <div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 5% !important">
                <label>
                    Name:<span class="devtoAsterix">*</span>
                </label>
                <asp:TextBox ID="txtname" runat="server" class="form-control col-md-7 col-xs-12"></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtname" ValidationGroup="Group1" errormessage="Please enter your name!" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 5% !important">
                <label>
                    StudentRegistration Number:<span class="devtoAsterix">*</span>
                </label>
                <asp:TextBox ID="txtstudentrn" runat="server" class="form-control col-md-7 col-xs-12"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 5% !important">
                <label>
                    College Name:<span class="devtoAsterix">*</span>
                </label>
                <asp:TextBox ID="txtcollegename" runat="server" class="form-control col-md-7 col-xs-12"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 5% !important">
                <label>
                    Gender:<span class="devtoAsterix">*</span>
                </label>
                <label class="radio-inline">
                    <input type="radio" name="Gender" runat="server" id="rad_MGender" onclick=""><b>Male</b>
                </label>
                <label class="radio-inlineNo" style="padding-top: 5px !important;">
                    <input type="radio" name="Gender" runat="server" id="rad_FGender" onclick="" required="True"><b>Female</b>
                </label>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 5% !important">
                <label>
                    Branch Name:<span class="devtoAsterix">*</span>
                </label>
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control col-md-7 col-xs-12">
                    <asp:ListItem Text="Select Branch" Value="select" Selected="True" required="True"></asp:ListItem>
                    <asp:ListItem Text="CS" Value="CS"></asp:ListItem>
                    <asp:ListItem Text="ECE" Value="ECE"></asp:ListItem>
                    <asp:ListItem Text="EEE" Value="EEE"></asp:ListItem>
                    <asp:ListItem Text="ME" Value="ME"></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 5% !important">
                <label>
                    Type of Registration:<span class="devtoAsterix">*</span>
                </label>
                <asp:TextBox ID="txteventtype" runat="server" class="form-control col-md-7 col-xs-12"></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" ValidationGroup="Group1" controltovalidate="txteventtype" errormessage="Please enter Type of Registration!" />
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 5% !important">
                <label>
                    Registration ForName:<span class="devtoAsterix">*</span>
                </label>
                <asp:TextBox ID="txteventname" runat="server" class="form-control col-md-7 col-xs-12"></asp:TextBox>
<asp:RequiredFieldValidator runat="server" id="reqEvent" controltovalidate="txteventname" ValidationGroup="Group1" errormessage="Please enter Registration ForName!" />
            </div>
        </div>
	<div class="form-group">
            <div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 5% !important">
                <label>
                    Price:<span class="devtoAsterix">*</span>
                </label>
                <asp:TextBox ID="txteventprice" runat="server" class="form-control col-md-7 col-xs-12"></asp:TextBox>
            </div>
        </div>


        <div class="form-group">
            <div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 5% !important">
                <label>
                    Phone Number:<span class="devtoAsterix">*</span>
                </label>
                <asp:TextBox ID="txtphonenumber" runat="server" class="form-control col-md-7 col-xs-12" required="True"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mobile cannot be blank" ValidationGroup="Group1" ControlToValidate="txtphonenumber" ForeColor="Red"></asp:RequiredFieldValidator>  
           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationGroup="Group1" ControlToValidate="txtphonenumber" ErrorMessage="Mobile number must be 10 digit" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>  
               
            
            </div>
        </div>
        
                <div class="form-group">
                    <div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 5% !important">
                        <label>
                            Email Id:<span class="devtoAsterix">*</span>
                        </label>
                        <asp:TextBox ID="txtemailid" runat="server" class="form-control col-md-7 col-xs-12" required="True" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email cannot be blank" ValidationGroup="Group1" ControlToValidate="txtemailid" ForeColor="Red"></asp:RequiredFieldValidator>  
  
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailid" ErrorMessage="Enter proper email format" ValidationGroup="Group1" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
  
           
                       

                    </div>
                </div>

        <div class="form-group">
            <div class="col-md-12 col-sm-12 col-xs-12" style="padding-left: 5% !important">
                <label>
                    Comments
                </label>
                <asp:TextBox ID="txtcomments" runat="server" class="form-control col-md-7 col-xs-12" MaxLength="500" Height="150px" TextMode="MultiLine"></asp:TextBox>
            </div>
        </div>



        <div class="clearfix"></div>
                                    <div style="margin:50px;">
<asp:Button ID="Buttonx" runat="server" class="btn btn-primary" Text="PAY" OnClick="Buttonx_Click" ValidationGroup="Group1"/>
<script language="javascript">
    function ValidateIt() {
       document.getElementById("Button2").click();
    }
</script>		
<asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="PAY" style="display:none"/>
 <asp:HiddenField ID="payAmt" runat="server" Value="5000" ></asp:HiddenField>
 <asp:HiddenField ID="payId" runat="server" Value="" ></asp:HiddenField>
        <asp:Button ID="capturePayment" class="btn btn-primary" runat="server" OnClick="DoCapture" style="display:none"/>
       <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
	<script>var amtt;if(document.getElementById('<%= payAmt.ClientID %>').value=='0'){ amtt = '100';}else {amtt=document.getElementById('<%= payAmt.ClientID %>').value; } 
var options = {
    "key": "rzp_live_UgPmY6nou3J6gA",
    "amount":amtt , 
    "name": "Digiverve Technologies",
    "description": "Purchase Description",
       "handler": function (response){
       
	enableSave();
	document.getElementById('<%= payId.ClientID %>').value = response.razorpay_payment_id;
        document.getElementById('capturePayment').click();
	 
	    },
    "prefill": {
        "name": document.getElementById("txtname").value,
        "email":""
	    },
    "notes": {
        "address": ""
    },
    "theme": {
        "color": "#F37254"
    } 
};
var rzp1 = new Razorpay(options);

document.getElementById('Button2').onclick = function startPay(e){
    rzp1.open();
    e.preventDefault();
}
</script>
            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="SAVE" OnClick="Button1_Click" style="display:none" />
	<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
        </div>
        </div>
    </div>
           </fieldset>
 </form>
   </div>      
              
            </div>
        </div>
    </div>
</section>


<section once="" class="cid-reyY0Dz3Ga" id="footer6-18">

    

    

    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="col-12">
                <p class="mbr-text mb-0 mbr-fonts-style display-7">
                    © Copyright 2018 Digiverve Technologies- All Rights Reserved
                </p>
            </div>
        </div>
    </div> 
</section>

  <%--  <div id="divMessagePopup">
    </div>--%>
     <script>$(document).ready(function(){
	if(document.getElementById('<%= payAmt.ClientID %>').value=='0'){
		document.getElementById("Buttonx").style.display = "none";document.getElementById("Button2").disabled = true;
		document.getElementById("Button1").disabled = false;document.getElementById("Button1").style.display = "block";
		}
	else{	document.getElementById("Buttonx").style.display = "block";document.getElementById("Button2").disabled = false;
		document.getElementById("Button1").disabled = false;document.getElementById("Button1").style.display = "none";
		}
});  
function enableSave() {document.getElementById("Button1").disabled = false;} 
function capFail(){
	alert('save done');
}
function aleady(){
	alert('already registered');
}

</script>    
    <script src="js/Common.js" type="text/javascript"></script>


  <script src="assets_student2/web/assets/jquery/jquery.min.js"></script>
  <script src="assets_student2/popper/popper.min.js"></script>
  <script src="assets_student2/tether/tether.min.js"></script>
  <script src="assets_student2/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets_student2/smoothscroll/smooth-scroll.js"></script>
  <script src="assets_student2/dropdown/js/script.min.js"></script>
  <script src="assets_student2/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="assets_student2/ytplayer/jquery.mb.ytplayer.min.js"></script>
  <script src="assets_student2/mbr-popup-btns/mbr-popup-btns.js"></script>
  <script src="assets_student2/parallax/jarallax.min.js"></script>
  <script src="assets_student2/bootstrapcarouselswipe/bootstrap-carousel-swipe.js"></script>
  <script src="assets_student2/viewportchecker/jquery.viewportchecker.js"></script>
  <script src="assets_student2/vimeoplayer/jquery.mb.vimeo_player.js"></script>
  <script src="assets_student2/theme/js/script.js"></script>
  <script src="assets_student2/slidervideo/script.js"></script>
<script src="/static/assets/js/jquery.min.js"></script>
			<script src="/static/assets/js/jquery.scrollex.min.js"></script>
			<script src="/static/assets/js/skel.min.js"></script>
			<script src="/static/assets/js/util.js"></script>
			<script src="/static/assets/js/main.js"></script>
                       
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-133337099-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  USER_ID=document.getElementById("<%=USER_ID.ClientID %>").innerHTML;
   gtag('set', {'user_id': USER_ID}); // Set the user ID using signed-in user_id.
  gtag('config', 'UA-133337099-1');
 
</script>

    </body>
    </html>

