<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="donate.aspx.cs" Inherits="EarthBeings.WebForm4" %>
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
                <li class="selected">
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
    <div class="body2">
	<center><div class="donateimg">
		<strong>DONATE</strong><hr /><br />
	</div></center>
    <div class="donate" style="left: 46%; top: 85%; height: 343px; width: 74%">
            
            <p style="height: 47px; width: 988px">
		<strong>We are an FCRA registered entity and can accept international donations. If you would like to transfer funds, here are our bank details</strong></p><br /><p style="width: 986px; height: 210px; margin-top: 8px;"><strong>Name of Organisation :</strong>
                EarthBeings<br /><strong>Account Number :</strong> 67589343233<br />
                <strong>Account Type :</strong> Current<br /><strong>Branch Code :</strong> 99876<br /><strong>Address : </strong><br />
                State Bank of India, Mumbai Main Branch, 11, <br /> Bellasis Rd, Mumbai-400008<br />
                <strong>Swift Code :</strong> SBINDA67238<br /><strong>IFSC :</strong> 
                SBIN0000891</p></div>
	
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>
        

  
</asp:Content>
