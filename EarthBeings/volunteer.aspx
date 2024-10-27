<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="volunteer.aspx.cs" Inherits="EarthBeings.WebForm3" %>
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
					<li>
						<a href="Login.aspx">Login</a>
					</li>
					<li class="selected">
						<a href="volunteer.aspx">Join Us</a>
					</li>
					<%}
                        else
                        {%>
					<li>
                        <a href="logout.aspx">Logout</a>
                    </li>
                    <li>
                        <a href="Register.aspx">Register</a>
                    </li>
				<li >
                        <a href="Events.aspx">Events</a>
                    </li>
					<%} %>
			</ul>
		</div>
	</div>

<center>
    

	<div class="volunteer">
    <h1>SIGN UP</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

       <center> <img src="images/signup.png" style="width: 257px; height: 235px" /></center><br /><br />

    <label for="fullname"><b>Full Name:</b></label>
        <asp:TextBox ID="txtFullName" runat="server" Height="40px" Width="200px" TextMode="SingleLine" placeholder="Full Name"></asp:TextBox><br />
		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Full Name is Mandatory!" ControlToValidate="txtFullName" Font-Bold="True" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />

    <label for="emailad"><b>Email Address:</b></label>
        <asp:TextBox ID="txtEmail" runat="server" Height="40px" Width="200px" TextMode="Email" placeholder="Email"></asp:TextBox><br />
		<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a valid email address!" ControlToValidate="txtEmail" Display="Dynamic" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br /><br />

    <label for="passwd"><b>Password:</b></label>
        <asp:TextBox ID="txtPwd" runat="server" Height="40px" Width="200px" TextMode="Password" placeholder="Password" ></asp:TextBox><br />
		<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is Mandatory!" Font-Bold="True" ControlToValidate="txtPwd" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
</div>
	<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True" Font-Bold="True" />
    <asp:Button ID="btnSubmit" runat="server" Text="Join To Earthbeings"  OnClick="btnSubmit_Click" Height="50px" Width="220px" CssClass="signupbtn" /><br /><br />

</center>

    
</asp:Content>
