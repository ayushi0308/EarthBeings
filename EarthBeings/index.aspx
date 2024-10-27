<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EarthBeings.WebForm1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="header">
		<div>
            
			<a href="index.aspx" id="logo"><img src="images/NewLogo.png" alt="logo"></a>
			<ul>
				<li class="selected" >
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

	<!-- Slideshow container -->
<div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext">1 / 5</div>
    <img src="images/img1.jpg" style="width:100%">
    <div class="text">100% OF BABY SEA TURTLES HAVE PLASTIC IN THEIR MOUTHS</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 5</div>
    <img src="images/img2.jpg" style="width:100%">
    <div class="text">SAVE THE EARTH FROM PLASTIC</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 5</div>
    <img src="images/img3.jpg" style="width:100%">
    <div class="text">LESS PLASTIC MORE LIFE!</div>
  </div>

	<div class="mySlides fade">
    <div class="numbertext">4 / 5</div>
    <img src="images/img5.jpg" style="width:100%">
    <div class="text">BE A PART OF A SOLUTION NOT PART OF POLLUTION</div>
  </div>

    <div class="mySlides fade">
    <div class="numbertext">5 / 5</div>
    <img src="images/img14.jpg" style="width:100%">
    <div class="text">PLASTIC PLASTIC GO AWAY WE WANT OUR EARTH TO PLAY!</div>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>

    <center><div id="body" class="homeabout">
				<div>
					<h1>EarthBeings: Let's Make A Difference</h1>
					<p>
						Marine Litter poses a vast and growing threat to the marine and coastal environment. Around 8 million items of litter enter the marine environment every day endangering the species in the ocean. Among the litter found on the ocean, plastics constitute around 90% (Source: Ocean Conservancy Report 2017) Mumbai the island city has 114 km of coastline and nearly 16 km of beaches stretching from Colaba in the south and Madh and Marve to the north (Maharashtra Maritime Board). Dadar Chowpatty, also known as Chaityabhoomi beach is a popular tourist destination. The high number of footfall make cleanliness at the beach a major challenge for MCGM.
					</p></div></div></center><br />
   <div class="homebody"> <div class="homeimg">
				<a href="about.aspx"><img src="images/img15.png" alt="" style="width: 550px; height: 490px"></a></div><br /><br /><br /><br /><br />
    
    <div class="homeimg1">
        <img src="images/img11.jpg" style="height: 292px" /></div><br /><br /><br /><br /></div>
    
    <div class="homeinfo">
        <h1>By 2050 there could be more plastic than fish</h1>
        <p>Did you know that the ocean is not only the largest but also one of the most important ecosystems on our planet? It regulates global climate temperatures, plays a big role in the carbon cycle, and provides livelihoods for billions around the globe. But did you also know that the amount of plastic in the world’s oceans are projected to outweigh the number of fish by 2050? It is estimated that around 80% of marine pollution originated from land and is manmade. We are seeing governments and businesses finally start to acknowledge this problem, but is that enough? What can we do to help?</p>
    </div><br /><br />
    
    <div class="infoimg">
        <img src="images/fish.jpg" style="width: 900px; height: 460px" />

    </div><br /><br /><br /><br />


    <div class="main">
<h3 style="height: 87px; margin-top: 380px">Upcoming Events</h3>


<div class="row" style="height: 369px">
  <div class="column">
    <div class="content">
      <img src="images/img23.jpg"  style="width:100%">
      <b>Cleanup Drive</b><br />
        <b><i>LOCATION:Dadar Beach</i></b><br /><b><i>29th October,2023</i></b><br /><b><i>Time:10am-12pm</i></b><br /><a href="Login.aspx">Register Now</a>
    </div>
  </div>
  <div class="column">
    <div class="content">
      <img src="images/img22.jpg"  style="width:100%">
     <b>Cleanup Drive</b><br />
        <b><i>LOCATION:Juhu Beach</i></b><br /><b><i>5th November,2023</i></b><br /><b><i>Time:10am-12pm</i></b><br /><a href="Login.aspx">Register Now</a>
    </div>
  </div>
  <div class="column">
    <div class="content">
      <img src="images/img13.jpg"  style="width:100%">
      <b>Cleanup Drive</b><br />
        <b><i>LOCATION:Girgaon Chowpatty</i></b><br /><b><i>12th November,2023</i></b><br /><b><i>Time:10am-12pm</i></b><br /><a href="Login.aspx">Register Now</a>
    </div>
</div>
     <div class="column">
    <div class="content">
      <img src="images/img12.jpg"  style="width:100%">
      <b>Cleanup Drive</b><br />
        <b><i>LOCATION:Versova Beach</i></b><br /><b><i>19th November,2023</i></b><br /><b><i>Time:10am-12pm</i></b><br /><a href="Login.aspx">Register Now</a>
    </div>
</div>
    </div>
       
    </div><br /><br /><br /><br /><br /><br />
        
    
    
	
</asp:Content>
