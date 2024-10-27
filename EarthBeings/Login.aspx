<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EarthBeings.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="header">
		<div>
			<a href="index.aspx" id="logo"><img src="images/NewLogo.png" alt="logo"></a>
			<ul>
				<li  >
					<a href="index.aspx">Home</a>
				</li>
				<li>
					<a href="about.aspx">About</a>
				</li>
                <li>
					<a href="donate.aspx">Donate Now</a>
				</li>
				
				<li>
					<a href="contact.aspx">Contact us</a>
				</li>
                <% if (Session["Username"] == null)
                        { %>
					<li class="selected">
						<a href="Login.aspx">Login</a>
					</li>
					<li>
						<a href="volunteer.aspx">Join Us</a>
					</li>
					<%}
                        else
                        {%>
					
                    <li>
                        <a href="Register.aspx">Register</a>
                    </li>
				<li >
                        <a href="Events.aspx">Events</a>
                    </li>
				<li>
                        <a href="logout.aspx">Logout</a>
                    </li>
					<%} %>
			</ul>
		</div>
	</div><br />

	<center><h1><strong>USER LOGIN</strong></h1></center><hr />
  <center><div class="imgcontainer" style="width: 827px; height: 174px">
    <img src="images/login.png" alt="Avatar" class="avatar" style="width: 257px; height: 235px">
  </div></center><br /><br><br />

  <center><div class="container1" style="width: 824px; height: 165px">
    <label for="uname"><b>Username/Email:</b></label>
	  <asp:TextBox ID="txtUname" runat="server" TextMode="Email" placeholder="Username/Email" Height="40px" Width="500px"></asp:TextBox><br />
	   <br />

    <label for="psw"><b>Password:</b></label>
	  <asp:TextBox ID="txtpd" runat="server" TextMode="Password" Placeholder="Password" Height="40px" Width="500px"></asp:TextBox><br />
	  </div>
  </center><br />
	
	<center><div class="container1"><asp:Button ID="btnlog" runat="server" Text="LOGIN" Height="40px" Width="300px"  OnClick="btnlog_Click1" CssClass="loginbtn" /><br /><br />
		<center>
			<asp:Label ID="lbl1" runat="server" Font-Bold="True" ForeColor="Red" ></asp:Label></center>
      <br />
		<center><a href="volunteer.aspx">Don't have an Account,Sign up Now</a></center><br /><br />
    <center><a href="admin/adminlogin.aspx">ADMIN LOGIN</a></center>
  </div></center><br />

</asp:Content>
