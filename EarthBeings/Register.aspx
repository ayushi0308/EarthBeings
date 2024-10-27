<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EarthBeings.WebForm8" %>
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

	<center><div class="register">
    <h1>Register</h1>
		<p>You can volunteer for Beach clean-up drives organized by Earthbeings. Every week on sundays Earthbeings plans to organize beach clean-up drive with the help of students, corporate volunteers, local volunteers. Please fill in this form to register for a Cleanup drive.</p>
    <hr>
		
    <label for="name"><b>Name:</b></label>
		<asp:TextBox runat="server" placeholder="FullName" Height="40px" Width="200px" ID="namereg"></asp:TextBox><br />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter valid name!" ControlToValidate="namereg" Display="Dynamic" Font-Bold="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator><br />
    <label for="email"><b>Email:</b></label>
		<asp:TextBox ID="emailreg" runat="server" placeholder="Email" TextMode="Email" Height="40px" Width="200px"></asp:TextBox><br />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email Address!" Font-Bold="true" ForeColor="Red" ControlToValidate="emailreg" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" EnableViewState="True"></asp:RegularExpressionValidator><br />

    <label for="number"><b>Phone Number:</b></label>
		<asp:TextBox ID="phreg" runat="server" TextMode="Phone" placeholder="Phone Number" Height="40px" Width="200px"></asp:TextBox><br />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter a Valid Phone Number!" ControlToValidate="phreg" Display="Dynamic" Font-Bold="True" ForeColor="Red" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$"></asp:RegularExpressionValidator><br />

	<label for="location"><b>Location:</b></label>
		<asp:DropDownList ID="locreg" runat="server" Height="30px" Width="200px">
            <asp:ListItem Selected="True">Dadar Beach</asp:ListItem>
            <asp:ListItem>Juhu Beach</asp:ListItem>
            <asp:ListItem>Girgaon Chowpatty</asp:ListItem>
            <asp:ListItem>Versova Beach</asp:ListItem>
            <asp:ListItem>Gorai Beach</asp:ListItem>
            <asp:ListItem>Aksa Beach</asp:ListItem>
            <asp:ListItem>Marine Drive Beach</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EarthbeingsDBConnectionString %>" SelectCommand="SELECT [location] FROM [Register]"></asp:SqlDataSource>
        <br /><br />

		<label for="date"><b>Date:</b></label>
		<asp:TextBox ID="datereg" runat="server" Height="40px" Width="200px" TextMode="Date"></asp:TextBox><br /><br />
		<asp:Button ID="btnreg" runat="server" Text="Register"  Height="40px" Width="300px" OnClick="btnreg_Click" CssClass="registerbtn" />
  </div></center><br /><br />


</asp:Content>
