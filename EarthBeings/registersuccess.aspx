<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="registersuccess.aspx.cs" Inherits="EarthBeings.WebForm10" %>
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
				
				<li >
					<a href="contact.aspx">Contact us</a>
				</li>
				<% if (Session["Username"] == null)
                        { %>
					<li>
						<a href="Login.aspx">Login</a>
					</li>
					<li>
						<a href="volunteer.aspx">Join Us</a>
					</li>
					<%}
                        else
                        {%>
					<li class="selected">
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
	</div>
	<div class="body3"><div class="registermsg">
   <img src="images/register1.jpg" style="width: 343px; height: 280px" /><br /><br />

	Thank-You for Registering for our Cleanup Drive
	You'll be added to our whatsapp group for further details!</div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>
</asp:Content>
