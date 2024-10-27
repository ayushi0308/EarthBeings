<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="EarthBeings.WebForm5" %>
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
				
				<li class="selected">
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
	</div>
   <div class="body">
		<center><div class="contact">
		<b>Contact us for any queries related to our cleanup drives</b><hr /></div></center><br />
			

	<div class="add"><b>MUMBAI</b><br /><br />
		<b>ADDRESS: 1901,Sampada heights,G.D.Ambekar road,Parel-Bhoiwada,Mumbai-400012</b><br /><br />
		<b>PHONE: 9167267969 / 9930479184 / 9769475602</b><br /><br />
		<b>EMAIL: <a href="mailto:info@earthbeings.com"><i>info@earthbeings.com</i></a></b><br /><br />
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3772.3424087681387!2d72.84315111416772!3d19.004627659152327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7cf56791ddc69%3A0x2e9a6abc24d50ee6!2sSampada%20Heights!5e0!3m2!1sen!2sin!4v1663875189310!5m2!1sen!2sin" width="600" style="border-style: none; border-color: inherit; border-width: 0; height: 358px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	</div>

	<div class="contactform" style="width: 497px; height: 482px">
			
		<label><b>Full Name:</b></label><br />
			&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="txtname" runat="server" Height="31px" Width="337px" placeholder="Full-Name"></asp:TextBox><br />&nbsp;&nbsp;&nbsp;
		    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Mandatory!" ControlToValidate="txtname" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator><br />
			<br />
			
		<label><b>Email:</b></label><br />
			&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="txtemail" runat="server" Height="31px" Width="337px" TextMode="Email" placeholder="Email-Id"></asp:TextBox><br />&nbsp;&nbsp;&nbsp; 
		    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a Valid Email Address!" ControlToValidate="txtemail" Display="Dynamic" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
		    <br />
			
			
		<label><b>Phone Number:</b></label><br />
			&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="txtph" runat="server" Height="31px" Width="337px" TextMode="Phone" placeholder="Phone Number"></asp:TextBox><br />&nbsp;&nbsp;&nbsp; 
			<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter a valid phone number!" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" ControlToValidate="txtph" Display="Dynamic" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator><br />
			<br />
			
			
		<label><b>Country:</b></label><br />
			&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="txtcountry" runat="server" Height="31px" Width="337px" placeholder="Your country"></asp:TextBox><br /><br />
			
		<label><b>City:</b></label><br />
			&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="txtcity" runat="server" Height="31px" Width="337px" placeholder="Your City" ></asp:TextBox><br /><br />
			
		<label><b>Message:</b></label><br />
			&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="txtmsg" runat="server"  TextMode="MultiLine" Height="138px" Width="317px" placeholder="Type something here....."></asp:TextBox><br />&nbsp;&nbsp;&nbsp;
			<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter the Message" Font-Bold="True" ControlToValidate="txtmsg" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator><br />
			
		
			
		<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" Height="50px" Width="348px" /><br />
	
			
		&nbsp;&nbsp;&nbsp;
	
			
		<asp:Button ID="btnmsg" runat="server" Text="CONTACT NOW"  Height="49px" Width="230px" OnClick="btnmsg_Click" CssClass="contactbtn" /><br />
		

	</div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>
			
		
</asp:Content>
