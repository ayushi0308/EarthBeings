<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="EarthBeings.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="header">
		<div>
			<a href="index.aspx" id="logo"><img src="images/NewLogo.png" alt="logo"></a>
			<ul>
				<li  >
					<a href="index.aspx">Home</a>
				</li>
				<li class="selected">
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
					<li>
						<a href="volunteer.aspx">Join Us</a>
					</li>
					<%}
                        else
                    {%>
                    <li>
                        <a href="Register.aspx">Register</a>
                    </li>
				<li>
                        <a href="Events.aspx">Events</a>
                    </li>
					    
					<li>
                        <a href="logout.aspx">Logout</a>
                    </li>
					<%} %>
				
			</ul>
		</div>
		</div>
			<div class="about">
		<label>About us</label>
		<p><b>EARTHBEINGS </b>is a NGO with a commitment to convert passion into protection and ensure clean water, a vibrant ocean and accessible beaches for all to enjoy by delivering long- lasting solutions to the threats our beach ecosystem faces. The beaches belong to human society- the present generation and the generations that follow.</p>
		
		<label>Our Concern</label>
		<p><b>EARTHBEINGS </b>is deeply concerned about beach pollution such as plastic bags, cans, containers, medical waste, needles & surgical instruments which could be harmful to the environment, and wildlife. In the long-term, any beach pollution would discourage tourist and affect tourism. Hence, it is our mission to relentlessly pursue science and use advanced technology to ensure plastic free beaches.</p>
		
		<label>Our Expertise</label>
		<p>Clean water and healthy beaches are a priority for environmentally conscious governments. The coast would always be a prominent tourist destination. We all have a stake in ensuring the beaches are protected, However, genuine concern alone would not help in keeping the beach clean. It requires professional competency to make a difference.<b>EARTHBEINGS</b> uses its coastal management expertise to completely understand every distinct environment and its practical experience to develop and deliver a holistic solution, best suited to a specific coastal environment.</p>
		<label>Our Work</label>
		<p>We have successfully completed beach cleaning work in several prominent beaches in Mumbai, including Dadar Chowpatty,Juhu Beach,Mahim Beach,Marine Drive Beach,Aksa Beach,Girgaon Chowpatty,Versova Beach,Gorai Beach</p>
		<div class="row">
			 <div class="column">
			 <img src="images/img14.jpg" alt="BeachCleanup" style="width:100%">
		</div>
		<div class="column">
			 <img src="images/img5.jpg" alt="beach" style="width:100%">
		</div>
		<div class="column">
			<img src="images/img7.jpg" alt="cleanup" style="width:100%">
		</div>
			<div class="column">
			 <img src="images/img4.jpg" alt="beach" style="width:100%">
			</div>
</div><br />
				<label>OUR Organizers</label>
				<div class="row">
			 <div class="column" style="width: 22%; height: 269px">
			 <img src="images/ash.jpeg" alt="BeachCleanup" style="width:100%"><br /><b>Aishwarya
		</b>
		</div>
		<div class="column" >
			 <img src="images/riyu1.jpeg" alt="beach" style="width:100%" ><br /><b>Riya Gupta</b>
		</div>
		<div class="column">
			<img src="images/dev1.jpg" alt="cleanup" style="width:100%"><br /><b>Devika Dhamale</b>
		</div>
			
					<div class="column">
			 <img src="images/niru1.jpeg" alt="beach" style="width:100%"><br /><b>Nirmal Pai</b>
			</div>
					
</div>
				
				
	</div>
</asp:Content>
