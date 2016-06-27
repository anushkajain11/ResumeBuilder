<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>#grad1{
             background: linear-gradient(rgb(255,255,255), rgb(252, 246, 120), rgb(255,255,255)); 
        }
    </style>

    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
</head>
<body id="grad1">
    <form id="form1" runat="server">
    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>
        
        <%--background-color:rgb(191, 251, 62)--%>
        <div style="width:100%;background:rgba(4, 47, 254, 0.80)" id="topNavBar" class="nav navbar-fixed-top">
                
                <%--<asp:ImageButton ID="ImageButton1" CssClass="img-responsive pull-left"  runat="server" BorderWidth="3" ImageUrl="~/sourceImages/logo.jpg" CausesValidation="false" OnClick="ImageButton1_Click" />--%>
                
                <asp:Table runat="server" Width="97%" HorizontalAlign="Center">
                    <asp:TableRow>
                        <asp:TableCell VerticalAlign="Middle">
                            <%--<asp:ImageButton ID="ImageButton1" Height="45px" Width="45px" ImageUrl="~/sourceImages/logoImage.jpg" runat="server" OnClick="ImageButton1_Click" />--%>
                            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="true" Font-Size="XX-Large" ForeColor="White" Font-Underline="false" OnClick="LinkButton2_Click" CausesValidation="false">Resume Builder</asp:LinkButton>
                        </asp:TableCell>
                        <asp:TableCell HorizontalAlign="Right">

                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <asp:Table runat="server" Width="200px">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Button ID="login" runat="server" Text="Login" SkinID="buttonModified" CssClass="btn btn-default" OnClick="login_Click" CausesValidation="false" />
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:Button ID="signup" runat="server" Text="Sign Up" OnClick="signup_Click" CssClass="btn btn-info" SkinID="buttonModified" CausesValidation="false" />
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <asp:Table runat="server" Width="300px">
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left">
                                                <asp:Label ID="Label4" style="font-family:'Times New Roman'" runat="server" Text="Hello" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    
                                </asp:View>
                            </asp:MultiView>                          
                            
                            
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>

        <div style="width:100%;background:linear-gradient(rgba(4, 47, 254, 0.77), rgb(252, 246, 120));height:200px;margin-top:3.4%">
            <div style="width:900px;margin-left:7%;margin-top:30px">
            <asp:Label ID="Label6" runat="server" Font-Bold="true" Font-Size="XX-Large" style="font-size:xx-large" Font-Names="Times New Roman" Text="The Team"></asp:Label><br />
    <asp:Label ID="Label7" runat="server" style="font-family:'Times New Roman';" Font-Bold="true" Font-Size="X-Large" Text="&quot;There are three types of workers: those who get things done, those who watch things get done, and those who wonder how so much got done.&quot;" ></asp:Label>
                </div>
        </div>
    <br /><br/>
    

<%--    There are three types of workers: those who get things done, those who watch things get done, and those who wonder how so much got done--%>
   <%-- The strength of the team is each individual member. The strength of each member is the team.--%>
    <div style="margin-left:23%">
    <asp:Table ID="Table1" runat="server" Width="700px">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Panel ID="Panel1" SkinID="panelModified" style="background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64))" runat="server" Height="190px" Width="50px" BorderStyle="Solid">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/sourceImages/abhinav.jpg" style="margin-left:20px;margin-top:20px" Height="150px" Width="150px" AlternateText="Abhinav Jain"/>

                </asp:Panel>
            </asp:TableCell>

            <asp:TableCell ColumnSpan="2" HorizontalAlign="Right">
                <asp:Label ID="Label1" runat="server"  Text="One Ring to rule them all, One Ring to find them,<br/>One Ring to bring them all and in the darkness bind them"  Font-Bold="true" Font-Size="Larger"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>


    </asp:Table>

        <asp:Table ID="Table2" runat="server" Width="700px">
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                <asp:Label ID="Label2" runat="server" Text="&quot;May the odds be ever in your favor!&quot;" Font-Bold="true" Font-Size="Larger"></asp:Label>
            </asp:TableCell>

             <asp:TableCell HorizontalAlign="Right">
                <asp:Panel ID="Panel2" SkinID="panelModified" style="background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64))" runat="server" Height="190px" Width="50px" BorderStyle="Solid" Direction="RightToLeft">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/sourceImages/anu.jpg" style="margin-right:20px;margin-top:20px" Height="150px" Width="150px" AlternateText="Anushka Jain"/>

                </asp:Panel>
            </asp:TableCell>
        </asp:TableRow>


    </asp:Table>

       <asp:Table ID="Table3" runat="server" Width="700px" style="margin-bottom:100px">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Panel ID="Panel3" runat="server" SkinID="panelModified" Height="190px" Width="50px" BorderStyle="Solid" style="background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64))">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/sourceImages/gaurav.jpg" style="margin-left:20px;margin-top:20px" Height="150px" Width="150px" AlternateText="Gaurav Khubchandani"/>

                </asp:Panel>
            </asp:TableCell>

            <asp:TableCell ColumnSpan="2" HorizontalAlign="Right">
                <asp:Label ID="Label3" runat="server" Text="&quot;This is where we hold them! This is where we FIGHT!<br/> This is where they DIE!&quot;" Font-Bold="true" Font-Size="Larger"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>


    </asp:Table>

    </div>

<div style="background:rgba(4, 47, 254, 0.77);margin-top:1%" >
        <asp:LinkButton ID="LinkButton1" CausesValidation="false" runat="server" style="margin-left:47%" OnClick="LinkButton1_Click">Contact Us</asp:LinkButton><br /><br />
        <asp:Table runat="server" Width="100%">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:Label ID="Label5" runat="server" Text="&copy;Resume Builder Application" style="font-family:'Times New Roman';margin-right:0px;margin-left:85%;" Font-Size="Larger" ForeColor="White"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>            
    </div>
    </form>
</body>
</html>
