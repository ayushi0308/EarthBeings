<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="adminupdate.aspx.cs" Inherits="EarthBeings.admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="body">
        <div class="events">
           <center> <h2>Upcoming Cleanup Events</h2></center>
            <label>Location:</label><br />
            <asp:TextBox ID="txtlocation" runat="server" Height="30px" Width="355px"></asp:TextBox><br /><br />
            <label>Date:</label><br />
            <asp:TextBox ID="txtdate" runat="server" Height="30px" Width="355px" TextMode="Date"></asp:TextBox><br /><br />
            <label>Time:</label><br />
            <asp:TextBox ID="txttime" runat="server" Height="30px" Width="355px"></asp:TextBox><br /><br />
            <asp:Button ID="btnevent" runat="server" Text="Update Event"  Height="35px" Width="174px" OnClick="btnevent_Click" CssClass="adevents" /><br /><br />
            <asp:Label ID="Label1" runat="server"  Font-Bold="True" ForeColor="#000099"></asp:Label>
        </div>
    </div>
</asp:Content>
