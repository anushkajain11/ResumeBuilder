<%@ Page Language="C#" AutoEventWireup="true" Theme="SkinFile" CodeFile="loginPage.aspx.cs" Inherits="loginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><style>
        #grad1{
             background: linear-gradient(rgb(255,255,255), rgb(252, 246, 120), rgb(255,255,255)); 
        }
    </style>

    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
</head>
<body id="grad1">
    <form id="form1" runat="server">
   <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>
         <div style="width:100%;background-color:rgb(191, 251, 62)" id="topNavBar" class="nav navbar-fixed-top">
                
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
                                        <asp:Button ID="login" runat="server" Text="Login" OnClick="login_Click" CausesValidation="false"/>
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
                                                <asp:Label ID="Label4" style="font-family:'Times New Roman'" runat="server" Text="Hello" Font-Bold="true" Font-Size="X-Large" ForeColor="#3333FF"></asp:Label>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    
                                </asp:View>
                            </asp:MultiView>                          
                            
                            
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
    <asp:Table ID="Table1" runat="server" Width="97%" style="margin-left:5%;margin-top:4%">
        <asp:TableRow>
            <asp:TableCell Width="60%" VerticalAlign="Middle">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/sourceImages/flyingtech_login.png" Height="545px" />
            </asp:TableCell>
            <asp:TableCell VerticalAlign="Middle">
                <asp:Panel ID="Panel2" runat="server" SkinID="panelModified" Height="350px" Width="100px" style="background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64));" BorderStyle="Solid">
        <asp:Panel ID="Panel1" runat="server" Height="250px" Width="320px" style="background:linear-gradient(rgb(255, 255, 255), rgba(191, 251, 62, 0.64), rgb(255, 255, 255));margin-left:50px;margin-top:50px" BorderStyle="Solid">
        <div style="margin-right:10px">
        <asp:Table runat="server" CellSpacing="15" Height="229px" Width="320px">
        <asp:TableHeaderRow>
            <asp:TableCell HorizontalAlign="Right">
                <asp:Label ID="Label1" runat="server" Text="Login:" Font-Bold="true" Font-Size="X-Large"></asp:Label></asp:TableCell>
            <asp:TableCell></asp:TableCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" Display="None" runat="server" ErrorMessage="Please Enter Username"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="None" ControlToValidate="TextBox2" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Right">
                <div style="margin-left:30px">
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                    </div>
            </asp:TableCell>
            <asp:TableCell HorizontalAlign="Center">
                <div style="margin-left:30px">
                <asp:Button ID="Button2" runat="server" CausesValidation="false" Text="Clear" OnClick="Button2_Click"/>
                    </div></asp:TableCell>
            
        </asp:TableRow> 
    </asp:Table>
            </div>
    </asp:Panel>
                     <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="300px" style="margin-left: 80px; margin-top: 20px;" ForeColor="Red"/>
    </asp:Panel>
               
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>


    <ajaxToolkit:DropShadowExtender runat="server" Enabled="True" TargetControlID="Panel1" ID="Panel1_DropShadowExtender" Opacity="3" Radius="10" Rounded="True" Width="10"></ajaxToolkit:DropShadowExtender>
            
       <%-- <div id="bottomNavBar" runat="server" style="background-color:rgb(191, 251, 62) ;max-width:100%;height:100px" class="nav navbar"> 
        <asp:LinkButton ID="LinkButton1" CausesValidation="false" runat="server" style="margin-left:47%" OnClick="LinkButton1_Click">Contact Us</asp:LinkButton><br /><br />
        <asp:Label ID="Label5" runat="server" Text="&copy;Resume Builder Application" style="font-family:'Times New Roman';margin-right:0px;margin-left:85%;" Font-Size="Larger" ForeColor="White"></asp:Label>
                       
    </div>--%>
    <div style="background-color:rgb(191, 251, 62);margin-top:1%" >
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
