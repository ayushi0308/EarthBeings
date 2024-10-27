<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="adminDash.aspx.cs" Inherits="EarthBeings.admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="content2">
            <div class="cards2">
                <div class="card2">
                    <div class="box2"><b>100</b><br /> Registered users<br />
                    </div>&nbsp &nbsp &nbsp &nbsp &nbsp
                        <div class="icon">
                            <img src="../images/Register.png" />

                        </div>
                    
                </div>
            

            <div class="card2">
                    <div class="box2">
                        <b>60</b><br />No of Donations<br />
                    </div>&nbsp &nbsp &nbsp &nbsp &nbsp
                        <div class="icon"><img src="../images/donatesym.png" />

                        </div>
                    
            </div>

             <div class="card2">
                    <div class="box2">
                        <b>45</b><br />No of Events held<br />
                    </div>&nbsp &nbsp &nbsp &nbsp &nbsp
                        <div class="icon">
                            <img src="../images/broom.png" />
                        </div>
                    
            </div>
                     </div>


               </div>

    
    
    <div class="content" style="left: 0px; top: 0px; height: 100px">
            <div class="cards">
                <div class="card">
                    <div class="box"><center><img src="../images/list.png" /></center><br />
                        <a href="adminlist.aspx">List of Registered Volunteers</a>
                    </div>
                     </div>

                <div class="card">
                    <div class="box"><center>
                        <img src="../images/query.png" /></center><br />
                        
                        <a href="adminquery.aspx">Queries</a>
                    </div>
                    
                     </div>

                <div class="card">
                    <div class="box"><center>
                        <img src="../images/update.png" /><br />
                        </center>
                        <a href="adminupdate.aspx">Update Events</a>
                    </div>
                     </div>


               </div>
        <div class="organizerslist">
                    <div class="title">
                        <h2>Team Information</h2>
                        
                    </div>
                    <table>
                        <tr>
                            <th>Profile</th>
                            <th>Name</th>
                            <th>Occupation</th>
                            <th>Phone Number</th>
                            <th>Email</th>
                            <th>City</th>
                        </tr>
                        <tr>
                            <td><img src="../images/aish.jpg" /></td>
                            <td>Aishwarya D</td>
                            <td>Assistant Manager,IDFC</td>
                            <td>9876578449</td>
                            <td>aish26@gmail.com</td>
                            <td>Mumbai</td>
                        </tr>
                        <tr>
                            <td>
                                <img src="../images/dev.jpg" /></td>
                            <td>Devika Dhamale</td>
                            <td>Student</td>
                            <td>9876555449</td>
                            <td>dev@gmail.com</td>
                            <td>Mumbai</td>
                        </tr>
                        <tr>
                            <td>
                                <img src="../images/tanu.jpeg" /></td>
                            <td>Tanvi Pandit</td>
                            <td>Student</td>
                            <td>9555578449</td>
                            <td>tanu@gmail.com</td>
                            <td>Mumbai</td>
                        </tr>
                        <tr>
                            <td>
                                <img src="../images/riyu.jpeg" /></td>
                            <td>Riya Gupta</td>
                            <td>Student</td>
                            <td>9876578129</td>
                            <td>riya@gmail.com</td>
                            <td>Mumbai</td>
                        </tr>
                        <tr>
                            <td>
                                <img src="../images/niru.jpeg" /></td>
                            <td>Nirmal Pai</td>
                            <td>Student</td>
                            <td>8765678449</td>
                            <td>niru@gmail.com</td>
                            <td>Mumbai</td>
                        </tr>
                        <tr>
                            <td><img src="user.png" alt=""></td>
                            <td>Ashish Gudekar</td>
                            <td>Engineer,Google</td>
                            <td>9876589987</td>
                            <td>ash@gmail.com</td>
                            <td>Mumbai</td>
                        </tr>

                    </table>
                </div>
    </div>

    <br /><br />

        
    </div>
    
    

    
</asp:Content>
