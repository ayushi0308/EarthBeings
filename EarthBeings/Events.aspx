<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="EarthBeings.WebForm14" %>
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
					<li >
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
					<li class="selected">
                        <a href="Events.aspx">Events</a>
                    </li>
				<li>
                        <a href="logout.aspx">Logout</a>
                    </li>
					<%} %>
			</ul>
		</div>
	</div>

	<div class="body6">
	<div class="events">
		<h2>Schedule of Upcoming Events</h2>
		<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="SrNo" DataSourceID="SqlDataSource3" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="SrNo" HeaderText="SrNo" InsertVisible="False" ReadOnly="True" SortExpression="SrNo" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:dd-MM-yyyy}" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
	    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EarthbeingsDBConnectionString %>" SelectCommand="SELECT TOP (1000) SrNo, Location, Date, Time FROM Events WHERE (Date &gt;= CURRENT_TIMESTAMP)"></asp:SqlDataSource>
		<h2><a href="Register.aspx">REGISTER NOW!</a></h2>
	</div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>
</asp:Content>
