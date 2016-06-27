<%@ Page Language="C#" AutoEventWireup="true" Theme="SkinFile" CodeFile="registerPage.aspx.cs" Inherits="registerPage" %>

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
                                                <asp:Label ID="Label1" style="font-family:'Times New Roman'" runat="server" Text="Hello" Font-Bold="true" Font-Size="X-Large" ForeColor="#3333FF"></asp:Label>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                    
                                </asp:View>
                            </asp:MultiView>                          
                            
                            
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>

        
    <br />
    <div style="margin-left: 15%;margin-top:2%">
    <asp:Label ID="Label8" runat="server" Text="Sign Up" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
        </div>
    <ajaxToolkit:DropShadowExtender ID="DropShadowExtender1" Rounded="true" Opacity="4" Width="10" TargetControlID="Panel1" Radius="4"  runat="server"></ajaxToolkit:DropShadowExtender>
    <asp:Panel ID="Panel2" runat="server" SkinID="panelModified" Height="500px" Width="100px" style="margin-left:200px;background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64))" BorderStyle="Solid">
        <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Height="400px" Width="800px" BorderWidth="2" BorderStyle="Solid" style="margin-top:50px;margin-left:50px;background:linear-gradient(rgb(255, 255, 255), rgba(191, 251, 62, 0.64), rgb(255, 255, 255))">
        <div style="margin-left: 50px; margin-top: 40px">
            <asp:Table runat="server" Width="680px" Height="343px">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="Label3" Font-Bold="true" runat="server" Text="First Name "></asp:Label>
                        <asp:Label ID="Label11" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="First Name Required" Display="None" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </asp:TableCell>

                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="Label4" runat="server" Font-Bold="true" Text="Last Name "></asp:Label>
                        <asp:Label ID="Label12" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2" runat="server" Display="None" ErrorMessage="Last Name Required"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="Label5" runat="server" Text="Sex " Font-Bold="true"></asp:Label>
                        <asp:Label ID="Label13" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    </asp:TableCell>

                    <asp:TableCell>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="200px">
                            <asp:ListItem> Male   </asp:ListItem>
                            <asp:ListItem> Female</asp:ListItem>
                        </asp:RadioButtonList>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList1" Display="None" ErrorMessage="Please select Sex"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="Label6" runat="server" Text="State " Font-Bold="true"></asp:Label>
                        <asp:Label ID="Label14" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="DropDownList1" Width="200px" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataTextField="name" DataValueField="stateid" AutoPostBack="True"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please select state" ControlToValidate="DropDownList1" Display="None"></asp:RequiredFieldValidator>

                    </asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="Label7" runat="server" Text="City " Font-Bold="true"></asp:Label>
                        <asp:Label ID="Label15" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:DropDownList ID="DropDownList2" Width="200px" runat="server" DataTextField="name" AutoPostBack="False" DataValueField="cityid"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please select city" Display="None" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>

                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>


                    </asp:TableCell>
                </asp:TableRow>


                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="Label9" runat="server" Text="Username " Font-Bold="true"></asp:Label>
                        <asp:Label ID="Label16" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Display="None" runat="server" ErrorMessage="Username Required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" Display="None" ErrorMessage="Username Exists, try another username" ControlToValidate="TextBox3" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="Label10" runat="server" Text="Password " Font-Bold="true"></asp:Label>
                        <asp:Label ID="Label17" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                        <ajaxToolkit:PasswordStrength runat="server" Enabled="True" TargetControlID="TextBox4" ID="TextBox4_PasswordStrength"></ajaxToolkit:PasswordStrength>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Password is required" ControlToValidate="TextBox4" Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="None" ErrorMessage="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="Label18" Font-Bold="true" runat="server" Text="Email ID "></asp:Label>
                        <asp:Label ID="Label19" runat="server" Text="*" ForeColor="Red"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter Email ID" ControlToValidate="TextBox5" Display="None"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                        <asp:Label ID="Label20" runat="server" Font-Bold="true" Text="Mobile No."></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox6" Display="None" OnServerValidate="CustomValidator2_ServerValidate" ErrorMessage="Please Enter a valid 10 digit mobile number"></asp:CustomValidator>
                    </asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>


            </asp:Table>
        </div>
        <br />
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:Button ID="Button1" CssClass="btn btn-primary" Style="margin-left: 160px" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Button ID="Button2" CssClass="btn btn-default" Style="margin-left: 80px" runat="server" Text="Clear" CausesValidation="false" OnClick="Button2_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Style="margin-left: 209px" ForeColor="Red" />
        <br />
    </asp:Panel>
 

    </asp:Panel>

<div style="background-color:rgb(191, 251, 62);margin-top:1%" >
        <asp:LinkButton ID="LinkButton1" CausesValidation="false" runat="server" style="margin-left:47%" OnClick="LinkButton1_Click">Contact Us</asp:LinkButton><br /><br />
        <asp:Table runat="server" Width="100%">
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Right">
                    <asp:Label ID="Label2" runat="server" Text="&copy;Resume Builder Application" style="font-family:'Times New Roman';margin-right:0px;margin-left:85%;" Font-Size="Larger" ForeColor="White"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>            
    </div>
    </form>
</body>
</html>
