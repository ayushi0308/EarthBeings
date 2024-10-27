<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="EarthBeings.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/admin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <center><h1><strong>ADMIN LOGIN</strong></h1></center><hr style="height: -42px" /><br />
  <center><div class="imgcontainer" style="width: 813px; height: 249px">
      <img src="../images/adminlogin.png" alt="Avatar" class="avatar" style="width: 258px; height: 240px" />
  </div></center><br /><br/>

  <center><div class="container1" style="width: 824px; height: 133px">
    <label for="uname"><b>Username:</b></label>
	  <asp:TextBox ID="adUname" runat="server" TextMode="Email" Height="40px" Width="500px"></asp:TextBox><br /><br />

    <label for="psw"><b>Password:</b></label>
	  <asp:TextBox ID="adpd" runat="server" TextMode="Password" Height="40px" Width="500px"></asp:TextBox></div>
  </center><br /><br />
	
	<center><div class="container1" style="height: 82px; width: 952px">
        <asp:Button ID="adlog" runat="server"  Text="LOGIN" Height="40px" Width="300px"  OnClick="adlog_Click"  CssClass="adloginbtn"  /><br /><br />
		<center>
			<asp:Label ID="lbl2" runat="server" Font-Bold="True" ForeColor="Red" ></asp:Label></center>
      <br /></div>
    
    </form>
</body>
</html>
