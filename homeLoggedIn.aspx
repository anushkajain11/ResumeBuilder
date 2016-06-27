<%@ Page Language="C#" AutoEventWireup="true" Theme="SkinFile" CodeFile="homeLoggedIn.aspx.cs" Inherits="homeLoggedIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #grad1{
             background: linear-gradient(rgb(255,255,255), rgb(252, 246, 120), rgb(255,255,255)); 
        }
    </style>

    <link rel="stylesheet" href="Content/bootstrap.css" type="text/css" />
</head>
<body id="grad1">
    
        <form runat="server">
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

                            <asp:MultiView ID="MultiView10" runat="server">
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

            <div style="margin-left: 10%;margin-top:5%">
        <asp:MultiView ID="MultiView1" runat="server">
            <%--Employee --%>
            <asp:View ID="View3" runat="server">
                <asp:Table ID="Table1" runat="server">
                    <asp:TableRow>
                        <asp:TableCell VerticalAlign="Top">
                            <asp:Panel ID="Panel8" Height="300px" Width="80px" runat="server" SkinID="panelModified" Style="border: solid; background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64)); margin-left: 15%;margin-top:20px">
                                <div style="margin-left: 40px; margin-top: 40px">
                                    <%--Button Table --%>
                                    <asp:Table runat="server" CellPadding="10" Height="237px">
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left">
                                                <asp:Button ID="Button1" runat="server" CausesValidation="false" Text="New Resume" OnClick="Button1_Click" />
                                               
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left">
                                                <asp:Button ID="Button2" runat="server" Text="View old Resume" CausesValidation="false" OnClick="Button2_Click" />
                                               
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left">
                                                <asp:Button ID="Button3" runat="server" Text="Edit Personal Details" CausesValidation="false" OnClick="Button3_Click" />
                                          
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left">
                                                <asp:Button ID="Button4" runat="server" CssClass="btn btn-danger" SkinID="buttonModified" Text="Logout" CausesValidation="false" OnClick="Button4_Click" />
                                                
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </div>
                            </asp:Panel>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" style="margin-left:130px">
                                <ContentTemplate>
                                    <asp:MultiView ID="MultiView3" runat="server" OnActiveViewChanged="MultiView3_ActiveViewChanged">
                                        <%--new resume--%>
                                        <asp:View ID="View7" runat="server">
                                            <asp:Panel ID="Panel9" runat="server" SkinID="panelModified" Style="margin-left: 80px; margin-top: 25px; background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64));" Height="600px" Width="100px" BorderStyle="Solid">
                                                <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="3" Style="margin-top: 50px; margin-left: 50px" ScrollBars="Vertical" Height="500px" Width="750px">
                                                    
                                  
                                                                    <div style="margin-left: 35px; margin-top: 20px">
                                                                        <asp:Label ID="Label3" runat="server" Text="Career Objective " Font-Bold="True" Font-Underline="True" Font-Size="X-Large"></asp:Label><asp:Label ID="Label30" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                                        <br />
                                                                        <asp:TextBox ID="TextBox1" runat="server" Width="500px" SkinID="skinModified"></asp:TextBox><br />
                                                                        <br />
                                                                        <asp:Label ID="Label4" runat="server" Text="Academic Qualifications" Font-Underline="True" Font-Size="X-Large" Font-Bold="True"></asp:Label><br />
                                                                        <asp:Table runat="server" Height="140px" Width="618px">
                                                                            <asp:TableHeaderRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label5" runat="server" Text="Qualification" Font-Bold="True" Font-Underline="True"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell HorizontalAlign="Center">
                                                                                    <asp:Label ID="Label6" runat="server" Text="Year" Font-Underline="True" Font-Bold="True"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label7" runat="server" Text="School and Board" Font-Underline="True" Font-Bold="True"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label8" runat="server" Text="Percentage" Font-Bold="True" Font-Underline="True"></asp:Label>
                                                                                </asp:TableCell>
                                                                            </asp:TableHeaderRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label17" runat="server" Text="Secondary "></asp:Label>
                                                                                    <asp:Label ID="Label31" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" Display="None" ErrorMessage="Please enter Secondary percentage"></asp:RequiredFieldValidator>
                                                                                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox5" Type="Double" MaximumValue="100" MinimumValue="0" Display="None" ErrorMessage="Percentage should be between 0 and 100"></asp:RangeValidator>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" Display="None" ErrorMessage="Please fill secondary pass year"></asp:RequiredFieldValidator>
                                                                                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please enter a valid year" Display="None" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox3"></asp:CustomValidator>

                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label18" runat="server" Text="Senior "></asp:Label>
                                                                                    <asp:Label ID="Label32" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox9" ErrorMessage="Please enter senior Percentage" Display="None"></asp:RequiredFieldValidator>
                                                                                    <asp:RangeValidator ID="RangeValidator1" MinimumValue="0" ControlToValidate="TextBox9" Type="Double" MaximumValue="100" runat="server" Display="None" ErrorMessage="Percentage should be between 0 and 100"></asp:RangeValidator>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox7" runat="server" ErrorMessage="Please enter year" Display="None"></asp:RequiredFieldValidator>
                                                                                    <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox7" OnServerValidate="CustomValidator1_ServerValidate" Display="None" ErrorMessage="Please enter a valid year"></asp:CustomValidator>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label19" runat="server" Text="Graduation"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                                                                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox13" Display="None" Type="Double" MinimumValue="0" MaximumValue="100" ErrorMessage="Percentage should be between 0 and 100"></asp:RangeValidator>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="TextBox11" Display="None" OnServerValidate="CustomValidator1_ServerValidate" ErrorMessage="Please enter valid year"></asp:CustomValidator>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label20" runat="server" Text="Post Grad"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                                                                    <asp:RangeValidator ID="RangeValidator4" runat="server" MinimumValue="0" Display="None" MaximumValue="100" Type="Double" ControlToValidate="TextBox10" ErrorMessage="Percentage should be between 0 and 100"></asp:RangeValidator>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:CustomValidator ID="CustomValidator4" ControlToValidate="TextBox2" Display="None" OnServerValidate="CustomValidator1_ServerValidate" runat="server" ErrorMessage="Please enter valid year"></asp:CustomValidator>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>

                                                                        </asp:Table>
                                                                        <br />
                                                                        <br />
                                                                        <hr style="width: 100px; margin-left: 0px;color:black" />
                                                                        <asp:Label ID="Label22" runat="server" Text="Work Experience" Font-Size="X-Large" Font-Bold="True" Font-Underline="True"></asp:Label><br />
                                                                        <asp:Label ID="Label121" runat="server" Text="Enter the 2 most recent experiences."></asp:Label><br/>
                                                                        <ol>
                                                                           <li style="font-weight:300">
                                                                                <asp:Table runat="server">
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label23" runat="server" Text="From:"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender runat="server" Enabled="True" TargetControlID="TextBox23" ID="TextBox23_CalendarExtender"></ajaxToolkit:CalendarExtender>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell HorizontalAlign="Left">
                                                                                    <asp:Label ID="Label122" runat="server" Text="To:"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell HorizontalAlign="Left">
                                                                                    <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender runat="server" Enabled="True" TargetControlID="TextBox38" ID="TextBox38_CalendarExtender" PopupPosition="BottomRight"></ajaxToolkit:CalendarExtender>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label33" runat="server" Text="Job Title:"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                                
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label123" runat="server" Text="Organisation:"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label24" runat="server" Text="Description or Responsibilities:"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell ColumnSpan="3">
                                                                                    <asp:TextBox ID="TextBox24" Height="100" runat="server" Width="500" TextMode="MultiLine" SkinID="skinModified"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>

                                                                        </asp:Table>
                                                                            </li>
                                                                        
                                                                        <br/>
                                                                            <li style="font-weight:300">
                                                                                <asp:Table runat="server">
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label124" runat="server" Text="From:"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender runat="server" Enabled="True" TargetControlID="TextBox41" ID="TextBox41_CalendarExtender"></ajaxToolkit:CalendarExtender>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell HorizontalAlign="Left">
                                                                                    <asp:Label ID="Label125" runat="server" Text="To:"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell HorizontalAlign="Left">
                                                                                    <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
                                                                                    <ajaxToolkit:CalendarExtender runat="server" Enabled="True" TargetControlID="TextBox42" ID="TextBox42_CalendarExtender"></ajaxToolkit:CalendarExtender>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label126" runat="server" Text="Job Title:"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                                
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label127" runat="server" Text="Organisation:"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label128" runat="server" Text="Description or Responsibilities:"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell ColumnSpan="3">
                                                                                    <asp:TextBox ID="TextBox45" runat="server" Width="500" Height="100" TextMode="MultiLine" SkinID="skinModified"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>

                                                                        </asp:Table>
                                                                            </li>
                                                                        </ol>
                                                                        
                                                                        

                                                                        <br />
                                                                        <br />
                                                                        <hr style="width: 100px;color:black" />
                                                                        <asp:Label ID="Label25" runat="server" Text="Extra Curricular Activities:" Font-Underline="True" Font-Size="X-Large" Font-Bold="True"></asp:Label>
                                                                        <asp:Table runat="server" Height="98px">
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label26" runat="server" Text="1." Font-Bold="True" Font-Size="Larger"></asp:Label><asp:Label ID="Label34" runat="server" Text=" *" ForeColor="Red"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox25" runat="server" Width="500" SkinID="skinModified"></asp:TextBox>
                                                                                    
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label27" runat="server" Text="2." Font-Bold="True" Font-Size="Larger"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox26" runat="server" Width="500" SkinID="skinModified"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label28" runat="server" Text="3." Font-Bold="True" Font-Size="Larger"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox27" runat="server" Width="500" SkinID="skinModified"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                        </asp:Table>
                                                                        <br />
                                                                        <br />
                                                                        <hr style="width: 100px;color:black"  />


                                                                        <asp:Label ID="Label10" runat="server" Text="Personal Details" Font-Bold="True" Font-Size="X-Large" Font-Underline="True"></asp:Label>
                                                                        <asp:Table runat="server" Height="134px" Width="352px">
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label9" runat="server" Text="Address "></asp:Label><asp:Label ID="Label35" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox14" runat="server" SkinID="skinModified"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label11" runat="server" Text="Date of Birth "></asp:Label>
                                                                                    <asp:Label ID="Label36" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox15" runat="server" SkinID="skinModified"></asp:TextBox><ajaxToolkit:CalendarExtender runat="server" Enabled="True" TargetControlID="TextBox15" ID="TextBox15_CalendarExtender"></ajaxToolkit:CalendarExtender>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label21" runat="server" Text="About Yourself "></asp:Label>
                                                                                    <asp:Label ID="Label37" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:TextBox ID="TextBox22" runat="server" TextMode="MultiLine" SkinID="skinModified" Height="80px"></asp:TextBox>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell>
                                                                                    <asp:Label ID="Label129" runat="server" Text="Hobbies:"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell>
                                                                                    <asp:Table ID="Table18" runat="server">
                                                                                        <asp:TableRow>
                                                                                            <asp:TableCell>
                                                                                                1.<asp:Label ID="Label181" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                                                            </asp:TableCell>
                                                                                            <asp:TableCell>
                                                                                                <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" Display="None" ControlToValidate="TextBox46" runat="server" ErrorMessage="Enter 1st Hobby"></asp:RequiredFieldValidator>
                                                                                            </asp:TableCell>
                                                                                        </asp:TableRow>
                                                                                        <asp:TableRow>
                                                                                            <asp:TableCell>
                                                                                                2. <asp:Label ID="Label182" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                                                            </asp:TableCell>
                                                                                            <asp:TableCell>
                                                                                                 <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
                                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" Display="None" ControlToValidate="TextBox47" runat="server" ErrorMessage="Enter2nd Hobby"></asp:RequiredFieldValidator>
                                                                                            </asp:TableCell>
                                                                                        </asp:TableRow>
                                                                                        <asp:TableRow>
                                                                                            <asp:TableCell>
                                                                                                3. 
                                                                                            </asp:TableCell>
                                                                                            <asp:TableCell>
                                                                                                <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
                                                                                            </asp:TableCell>
                                                                                        </asp:TableRow>
                                                                                    </asp:Table>
                                                                                    
                                                                                   
                                                                                    
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                        </asp:Table>
                                                                    </div>
                                                                    <div style="margin-left: 100px; margin-top: 20px">
                                                                        <asp:Table runat="server" Width="400px">
                                                                            <asp:TableRow>
                                                                                <asp:TableCell HorizontalAlign="Right">
                                                                                    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
                                                                                </asp:TableCell>
                                                                                <asp:TableCell HorizontalAlign="Center">
                                                                                    <asp:Button ID="clear" runat="server" Text="Clear" CausesValidation="false" OnClick="clear_Click" />
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>


                                                                        </asp:Table>
                                                                    </div>
                                                                    <br />
                                                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Style="margin-left: 185px" ForeColor="Red" />


                                                               
                                                </asp:Panel>

                                                <ajaxToolkit:DropShadowExtender ID="Panel1_DropShadowExtender" Rounded="true" Opacity="3" TrackPosition="true" Radius="10" runat="server" Enabled="True" TargetControlID="Panel1">
                                                </ajaxToolkit:DropShadowExtender>



                                            </asp:Panel>

                                        </asp:View>
                                        <%--Edit Details--%>
                                        <asp:View ID="View8" runat="server">
                                            <asp:Panel ID="Panel10" runat="server" SkinID="panelModified" Style="margin-left: 80px; margin-top: 25px; background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64))" Height="400px" Width="100px" BorderStyle="Solid">

                                                <asp:Panel runat="server" Height="300px" BorderStyle="Solid" Style="margin-left: 50px; margin-top: 50px" ID="Panel11" Width="650px">
                                                    <div style="margin-top: 30px; margin-left: 20px">
                                                        <asp:Table runat="server" Height="173px" Width="600px">
                                                            <asp:TableRow>
                                                                <asp:TableCell>
                                                                    <asp:Label ID="Label12" runat="server" Text="First Name" Font-Bold="true"></asp:Label>
                                                                </asp:TableCell>
                                                                <asp:TableCell>
                                                                    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                                                                    <%--<asp:Label ID="Label30" runat="server" Text="Label"></asp:Label>--%>
                                                                </asp:TableCell>
                                                                <asp:TableCell>
                                                                    <asp:Label ID="Label71" runat="server" Text="Last Name" Font-Bold="true"></asp:Label>
                                                                </asp:TableCell>
                                                                <asp:TableCell>
                                                                    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                                                                    <%--<asp:Label ID="Label31" runat="server" Text="Label"></asp:Label>--%>
                                                                </asp:TableCell>
                                                            </asp:TableRow>
                                                            <asp:TableRow>
                                                                <asp:TableCell>
                                                                    <asp:Label ID="Label73" runat="server" Text="Mobile No." Font-Bold="true"></asp:Label>
                                                                </asp:TableCell>
                                                                <asp:TableCell>
                                                                    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                                                    <%--<asp:Label ID="Label32" runat="server" Text="Label"></asp:Label>--%>
                                                                </asp:TableCell>
                                                                <asp:TableCell>
                                                                    <asp:Label ID="Label74" runat="server" Text="Email Address" Font-Bold="true"></asp:Label>
                                                                </asp:TableCell>
                                                                <asp:TableCell>
                                                                    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                                                                    <%--<asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>--%>
                                                                </asp:TableCell>
                                                            </asp:TableRow>
                                                            <asp:TableRow>
                                                                <asp:TableCell>
                                                                    <asp:Label ID="Label75" runat="server" Text="Address" Font-Bold="true"></asp:Label>
                                                                </asp:TableCell>
                                                                <asp:TableCell>
                                                                    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                                                                    <%--<asp:Label ID="Label34" runat="server" Text="Label"></asp:Label>--%>
                                                                </asp:TableCell>

                                                            </asp:TableRow>
                                                            <asp:TableRow>
                                                                <asp:TableCell HorizontalAlign="Right" ColumnSpan="2">
                                                                    <asp:Button ID="save" runat="server" Text="Save" OnClick="save_Click" />
                                                                </asp:TableCell>

                                                            </asp:TableRow>
                                                        </asp:Table>
                                                        <%-- <div style="margin-left: 35px">
                                <div style="margin-left: 250px; margin-top: 100px">
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/sourceImages/under-construction-sign.jpg" />
                                </div>
                                <div style="margin-left: 20px; margin-bottom: 200px; width: 600px">
                                    <asp:Label ID="Label11" runat="server" Text="This is a privileged feature...Please come Back at the time of submission of MAJOR PROJECT. Feel free to navigate to other pages....:-D" Font-Bold="true" Font-Size="X-Large"></asp:Label>
                                </div>
                            </div>--%>
                                                    </div>
                                                </asp:Panel>
                                                <ajaxToolkit:DropShadowExtender runat="server" Enabled="True" TargetControlID="Panel11" ID="Panel11_DropShadowExtender"></ajaxToolkit:DropShadowExtender>
                                            </asp:Panel>
                                            <div style="height:105px"></div>
                                        </asp:View>
                                        <%--View old resume--%>
                                        <asp:View ID="View9" runat="server">

                                            <asp:Panel ID="Panel12" runat="server" SkinID="panelModified" Style="margin-left: 80px; margin-top: 25px; background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64));" Height="600px" Width="100px" BorderStyle="Solid">

                                                <asp:Panel runat="server" Width="700px" Style="margin-left: 50px; margin-top: 50px" Height="500px" ScrollBars="Vertical" ID="Panel6">
                                                    <asp:Label ID="Label92" runat="server" Text="Select a Template:" style="margin-left:20px;margin-top:20px" Font-Bold="true" Font-Size="X-Large"></asp:Label>
                                                    <asp:DropDownList ID="DropDownList2" style="margin-left:20px;margin-top:10px" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                                        <asp:ListItem Value="0">Please Select...</asp:ListItem>
                                                        <asp:ListItem Value="1">Template 1</asp:ListItem>
                                                        <asp:ListItem Value="2">Template 2</asp:ListItem>
                                                        <asp:ListItem Value="3">Template 3</asp:ListItem>
                                                    </asp:DropDownList>
                                         
                                                            <asp:Image ID="Image1" runat="server" Visible="false" Height="200px" Width="150px" style="margin-left:40%;margin-top:20px" AlternateText="Image" />
                                                            <br/>
                                                    <asp:Button ID="Button14" runat="server" style="margin-left:48%" Text="Show" OnClick="Button14_Click" Visible="false"/>
                                                    <br />
                                                    <asp:MultiView ID="MultiView5" runat="server" Visible="false">
                                                        <%--Template 1 --%>
                                                        <asp:View ID="View14" runat="server">

                                                            <asp:Panel ID="Panel18" runat="server" Width="600px" Height="750px" style="margin-left:50px;margin-top:20px" SkinID="panelModified" BackColor="White" BorderStyle="Solid">
                                                                <asp:Table ID="Table3" runat="server" Width="600px" style="margin-top:40px">
                                                                    <asp:TableRow>
                                                                        <asp:TableCell HorizontalAlign="Center" VerticalAlign="Middle">
                                                                             <asp:Label ID="Label93" runat="server" Text="Name"
                                                                    Font-Bold="true" Font-Size="Larger"></asp:Label>
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                </asp:Table>
                                                               
                                                                <br />
                                                                <div style="border: hidden; background-color: lightpink;align-content:center;align-items:center">
                                                                    <asp:Label ID="Label94" runat="server" Text="Address:"></asp:Label><asp:Label ID="Label95" runat="server" Text="#"></asp:Label><br/>
                                                                    <asp:Label ID="Label96" runat="server" Text="Mobile No:"></asp:Label><asp:Label ID="Label97" runat="server" Text="#"></asp:Label><br/>
                                                                    <asp:Label ID="Label98" runat="server" Text="Email id:"></asp:Label><asp:Label ID="Label130" runat="server" Text="Label"></asp:Label>
                                                                    <br />
                                                                </div>
                                                                <br />
                                                                <%--<asp:Label ID="Label99" runat="server" Text="vacancy name"
                                                                    Font-Bold="true" Font-Size="Large"
                                                                    Style="margin-left: 42%"></asp:Label>--%>
                                                                <br />
                                                                <asp:Label ID="Label100" runat="server" Text="Objective"></asp:Label>
                                                                <div style="border: hidden; background-color: coral;">
                                                                    <asp:Table ID="Table4" runat="server" Width="600px">
                                                                        <asp:TableRow>
                                                                            <asp:TableCell HorizontalAlign="Center" VerticalAlign="Middle">
                                                                                <asp:Label ID="Label101" runat="server" Text="Key Skill
 Areas"
                                                                         Font-Bold="True"
                                                                        Font-Size="Large"></asp:Label>
                                                                            </asp:TableCell>
                                                                        </asp:TableRow>
                                                                    </asp:Table>

                                                                    
                                                                </div>
                                                                <ul>
                                                                    <li>
                                                                        <asp:Label ID="Label102" runat="server"
                                                                            Text="Label"></asp:Label>
                                                                    </li>
                                                                    <li>
                                                                        <asp:Label ID="Label103" runat="server"
                                                                            Text="Label"></asp:Label></li>
                                                                    <li>
                                                                        <asp:Label ID="Label104" runat="server"
                                                                            Text="Label"></asp:Label>
                                                                    </li>
                                                                    <li>
                                                                        <asp:Label ID="Label105" runat="server"
                                                                            Text="Label"></asp:Label></li>
                                                                </ul>
                                                                <div style="border: hidden; background-color: coral;">
                                                                    <asp:Table ID="Table5" runat="server" Width="600px">
                                                                        <asp:TableRow>
                                                                            <asp:TableCell HorizontalAlign="Center" VerticalAlign="Middle">
                                                                                 <asp:Label ID="Label106" runat="server" Text="Work
 Experience"
                                                                         Font-Bold="true"
                                                                        Font-Size="Large"></asp:Label>
                                                                            </asp:TableCell>
                                                                        </asp:TableRow>
                                                                    </asp:Table>
                                                                   
                                                                </div>


                                                                <ul>
                                                                    <li>
                                                                        <asp:Table ID="Table8" runat="server" Width="520px">
                                                                            <asp:TableRow>
                                                                                <asp:TableCell HorizontalAlign="Left">
                                                                                    <asp:Label ID="Label107" runat="server"
                                                                            Text="Label" Font-Bold="true"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell HorizontalAlign="Center">
                                                                                    <asp:Label ID="Label108" runat="server" Text="date-to-from"
                                                                            Style="margin-left: 80%" Font-Bold="True"></asp:Label>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell ColumnSpan="2">
                                                                                    <asp:Label ID="Label109" runat="server"
                                                                            Text="Description"></asp:Label>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                        </asp:Table>

                                                                        
                                                                    </li>
                                                                    <li>

                                                                        <asp:Table ID="Table9" runat="server" Width="520px">
                                                                            <asp:TableRow>
                                                                                <asp:TableCell HorizontalAlign="Left">
                                                                                    <asp:Label ID="Label110" runat="server"
                                                                            Text="Label" Font-Bold="true"></asp:Label>
                                                                                </asp:TableCell>
                                                                                <asp:TableCell HorizontalAlign="Center">
                                                                                    <asp:Label ID="Label111" runat="server" Text="date-to-from"
                                                                            Style="margin-left: 80%" Font-Bold="True"></asp:Label>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                            <asp:TableRow>
                                                                                <asp:TableCell ColumnSpan="2">
                                                                                     <asp:Label ID="Label112" runat="server"
                                                                            Text="Description"></asp:Label>
                                                                                </asp:TableCell>
                                                                            </asp:TableRow>
                                                                        </asp:Table>

                                                                       
                                                                    </li>
                                                                </ul>
                                                                <div style="border: hidden; background-color: coral;">
                                                                    <asp:Table ID="Table6" runat="server" Width="600px">
                                                                        <asp:TableRow>
                                                                            <asp:TableCell HorizontalAlign="Center" VerticalAlign="Middle">
                                                                                 <asp:Label ID="Label113" runat="server"
                                                                        Text="Education" Font-Bold="True"
                                                                        Font-Size="Large"></asp:Label>
                                                                            </asp:TableCell>
                                                                        </asp:TableRow>
                                                                    </asp:Table>
                                                                   
                                                                </div>
                                                                <asp:BulletedList ID="BulletedList1" runat="server">
                                                                    <asp:ListItem>

                                                                    </asp:ListItem>
                                                                    <asp:ListItem>

                                                                    </asp:ListItem>
                                                                    <asp:ListItem>

                                                                    </asp:ListItem>
                                                                    <asp:ListItem>

                                                                    </asp:ListItem>
                                                                </asp:BulletedList>


<%--
                                                                <ul>
                                                                    <li>
                                                                        <asp:Label ID="Label114" runat="server"
                                                                            Text="Label"></asp:Label>
                                                                    </li>
                                                                    <li>
                                                                        <asp:Label ID="Label115" runat="server"
                                                                            Text="Label"></asp:Label>
                                                                    </li>
                                                                    <li>
                                                                        <asp:Label ID="Label116" runat="server"
                                                                            Text="Label"></asp:Label>
                                                                    </li>
                                                                    <li>
                                                                        <asp:Label ID="Label117" runat="server"
                                                                            Text="Label"></asp:Label>
                                                                    </li>

                                                                </ul>--%>
                                                                <div style="border: hidden; background-color: coral;">
                                                                    <asp:Table ID="Table7" runat="server" Width="600px">
                                                                        <asp:TableRow>
                                                                            <asp:TableCell HorizontalAlign="Center" VerticalAlign="Middle">
                                                                                <asp:Label ID="Label118" runat="server" Text="Volunteer
 Involvement"
                                                                         Font-Bold="True"
                                                                        Font-Size="Large"></asp:Label>
                                                                            </asp:TableCell>
                                                                        </asp:TableRow>
                                                                    </asp:Table>
                                                                    
                                                                </div>
                                                                <asp:BulletedList ID="BulletedList2" runat="server">
                                                                    <asp:ListItem>

                                                                    </asp:ListItem>
                                                                    <asp:ListItem>
                                                                        
                                                                    </asp:ListItem>
                                                                    <asp:ListItem>

                                                                    </asp:ListItem>
                                                                </asp:BulletedList>
                                                                </asp:Panel>
                                                            <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
                                                        </asp:View>
                                                        <%--Template 2 --%>
                                                        <asp:View ID="View15" runat="server">
                                                            <asp:Panel ID="Panel19" style="margin-left:50px;margin-top:20px" runat="server" BorderStyle="Solid" BackColor="White"
                                                                Width="600px" Height="800px" HorizontalAlign="Justify" SkinID="panelModified">
                                                                <asp:Table ID="Table13" runat="server" Width="600px">
                                                                    <asp:TableRow>
                                                                        <asp:TableCell HorizontalAlign="Center">
                                                                            <asp:Label ID="Label13" runat="server" Text="Name" Font-Bold="true"
                                                                    Font-Size="X-Large"></asp:Label>
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                    <asp:TableRow>
                                                                        <asp:TableCell HorizontalAlign="Center">
                                                                            <asp:Label ID="Label114" runat="server" Text="#"></asp:Label><br/>
                                                                    <asp:Label ID="Label116" runat="server" Text="#"></asp:Label><br/>
                                                                    <asp:Label ID="Label117" runat="server" Text="email id"></asp:Label>
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                </asp:Table>
                                                                
                                                                <hr />
                                                                <br />
                                                                <div style="margin-left:10px">
                                                                <asp:Label ID="Label119" runat="server" Text="CareerObjective" Font-Bold="true" Font-Size="Large"></asp:Label>
                                                                <hr />
                                                                <asp:Label ID="Label120" runat="server" Text="Label"></asp:Label>
                                                                <br />
                                                                <asp:Label ID="Label131" runat="server" Text="Education"
                                                                    Font-Bold="true" Font-Size="Large"></asp:Label>
                                                                <hr />
                                                                <asp:Table ID="Table10" runat="server" BorderStyle="None"
                                                                    HorizontalAlign="Justify" Width="434px">
                                                                    <asp:TableRow>
                                                                        <asp:TableCell VerticalAlign="Top" Font-Bold="true">
                                                                            <asp:Label ID="Label132" runat="server"
                                                                                Text="date-to-from"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell BorderStyle="None">
                                                                            <asp:Label ID="Label133" runat="server"
                                                                                Text="Name of degree" Font-Bold="true"></asp:Label><br />
                                                                            <asp:Label ID="Label134" runat="server"
                                                                                Text="schl/clg"></asp:Label><br />
                                                                            <asp:Label ID="Label135" runat="server"
                                                                                Text="Label"></asp:Label><br />
                                                                            <asp:Label ID="Label136" runat="server"
                                                                                Text="Label"></asp:Label>
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                    <asp:TableRow>
                                                                        <asp:TableCell VerticalAlign="Top">
                                                                            <asp:Label ID="Label137" runat="server"
                                                                                Text="date-to-from" Font-Bold="true"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label138" runat="server"
                                                                                Text="Name of degree" Font-Bold="true"></asp:Label><br />
                                                                            <asp:Label ID="Label139" runat="server"
                                                                                Text="schl/clg"></asp:Label><br />
                                                                            <asp:Label ID="Label140" runat="server"
                                                                                Text="Label"></asp:Label><br />
                                                                            <asp:Label ID="Label141" runat="server"
                                                                                Text="Label"></asp:Label><br />
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                    <asp:TableRow>
                                                                    <asp:TableCell VerticalAlign="Top">
                                                                            <asp:Label ID="Label99" runat="server"
                                                                                Text="date-to-from" Font-Bold="true"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label115" runat="server"
                                                                                Text="Name of degree" Font-Bold="true"></asp:Label><br />
                                                                            <asp:Label ID="Label187" runat="server"
                                                                                Text="schl/clg"></asp:Label><br />
                                                                            <asp:Label ID="Label188" runat="server"
                                                                                Text="Label"></asp:Label><br />
                                                                            <asp:Label ID="Label189" runat="server"
                                                                                Text="Label"></asp:Label><br />
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                    <asp:TableRow>
                                                                    <asp:TableCell VerticalAlign="Top">
                                                                            <asp:Label ID="Label190" runat="server"
                                                                                Text="date-to-from" Font-Bold="true"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label191" runat="server"
                                                                                Text="Name of degree" Font-Bold="true"></asp:Label><br />
                                                                            <asp:Label ID="Label192" runat="server"
                                                                                Text="schl/clg"></asp:Label><br />
                                                                            <asp:Label ID="Label193" runat="server"
                                                                                Text="Label"></asp:Label><br />
                                                                            <asp:Label ID="Label194" runat="server"
                                                                                Text="Label"></asp:Label><br />
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                </asp:Table>
                                                                <br />
                                                                <asp:Label ID="Label142" runat="server" Text="Employment"
                                                                    Font-Bold="true" Font-Size="Large"></asp:Label>
                                                                <hr />
                                                                <asp:Table ID="Table11" runat="server" BorderStyle="None"
                                                                    HorizontalAlign="Justify" Width="459px">
                                                                    <asp:TableRow>
                                                                        <asp:TableCell VerticalAlign="Top" Font-Bold="true">
                                                                            <asp:Label ID="Label143" runat="server"
                                                                                Text="date-to-from"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell BorderStyle="None">
                                                                            <asp:Label ID="Label144" runat="server"
                                                                                Text="Name of company" Font-Bold="true"></asp:Label><br />
                                                                            <asp:Label ID="Label145" runat="server"
                                                                                Text="Description"></asp:Label>
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                    <asp:TableRow>
                                                                        <asp:TableCell VerticalAlign="Top">
                                                                            <asp:Label ID="Label146" runat="server"
                                                                                Text="date-to-from" Font-Bold="true"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label147" runat="server"
                                                                                Text="Name of company" Font-Bold="true"></asp:Label><br />
                                                                            <asp:Label ID="Label148" runat="server"
                                                                                Text="Description"></asp:Label><br />
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                </asp:Table>
                                                                <br />
                                                                <asp:Label ID="Label149" runat="server" Text="Key Skills"
                                                                    Font-Bold="true" Font-Size="Large"></asp:Label>
                                                                <hr />
                                                                <asp:Table ID="Table12" runat="server" BorderStyle="None"
                                                                    HorizontalAlign="Justify" Width="555px">
                                                                    <asp:TableRow>
                                                                        <asp:TableCell Font-Bold="true" VerticalAlign="Top">
                                                                            <asp:Label ID="Label150" runat="server"
                                                                                Text="Skill1" Style="vertical-align: top"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell BorderStyle="None">
                                                                            <asp:Label ID="Label151" runat="server"
                                                                                Text="Description" Font-Bold="true"></asp:Label><br />
                                                                            <asp:Label ID="Label152" runat="server"
                                                                                Text="Label"></asp:Label>
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                    <asp:TableRow>
                                                                        <asp:TableCell VerticalAlign="Top">
                                                                            <asp:Label ID="Label153" runat="server"
                                                                                Text="Skill2" Font-Bold="true"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label154" runat="server"
                                                                                Text="Description" Font-Bold="true"></asp:Label><br />
                                                                            <asp:Label ID="Label155" runat="server"
                                                                                Text="Label"></asp:Label><br />
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                </asp:Table>
                                                                    </div>
                                                            </asp:Panel>
                                                            <asp:Label ID="Label15" runat="server" Text=""></asp:Label>

                                                        </asp:View>
                                                        <%--Template 3 --%>
                                                        <asp:View ID="View16" runat="server">
                                                            <asp:Panel ID="Panel20" Style="margin-left: 10px; margin-top: 20px" runat="server" Width="700px" Height="900px" SkinID="panelModified" BackColor="White" BorderStyle="Solid">
                                                                <asp:Panel ID="Panel22" runat="server" Height="200px" SkinID="panelModified" style="margin-left:30px;margin-top:10px">
                                                                    <asp:Table ID="Table14" runat="server" Height="200px">
                                                                        <asp:TableRow>
                                                                            <asp:TableCell
                                                                                Style="background-color: crimson;">
                                                                                <asp:Label ID="Label38" runat="server"
                                                                                    Text="Name" Font-Bold="true" Font-Size="X-Large"
                                                                                    ForeColor="AntiqueWhite" Style="margin-left: 40px; margin-top: 100px;"></asp:Label>
                                                                                <hr style="margin-left: 50px;" />
                                                                                <asp:Label ID="Label61" runat="server"
                                                                                    Text="Name of Vacancy" Style="margin-left: 70px;"></asp:Label>
                                                                            </asp:TableCell>
                                                                            <asp:TableCell
                                                                                Style="background-color: antiquewhite; width: 400px;">
                                                                                <asp:Table ID="Table15" runat="server"
                                                                                    Style="margin-left: 30px;">
                                                                                    <asp:TableRow>
                                                                                        <asp:TableCell Width="150px">
                                                                                            <asp:Label ID="Label39"
                                                                                                runat="server" Text="Full Name"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label40"
                                                                                                runat="server" Text=":"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label41"
                                                                                                runat="server" Text="Label"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                    </asp:TableRow>
                                                                                    <asp:TableRow>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label42"
                                                                                                runat="server" Text="Address"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label43"
                                                                                                runat="server" Text=":"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label44"
                                                                                                runat="server" Text="Label"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                    </asp:TableRow>
                                                                                    <asp:TableRow>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label49"
                                                                                                runat="server" Text="Date of Birth"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label50"
                                                                                                runat="server" Text=":"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label51"
                                                                                                runat="server" Text="Label"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                    </asp:TableRow>
                                                                                    <asp:TableRow>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label52"
                                                                                                runat="server" Text="Phone"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label53"
                                                                                                runat="server" Text=":"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label54"
                                                                                                runat="server" Text="Label"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                    </asp:TableRow>
                                                                                    <asp:TableRow>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label55"
                                                                                                runat="server" Text="Email id"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label56"
                                                                                                runat="server" Text=":"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label57"
                                                                                                runat="server" Text="Label"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                    </asp:TableRow>
                                                                                    <asp:TableRow>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label58"
                                                                                                runat="server" Text="Nationality"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label59"
                                                                                                runat="server" Text=":"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                        <asp:TableCell>
                                                                                            <asp:Label ID="Label60"
                                                                                                runat="server" Text="Label"></asp:Label>
                                                                                        </asp:TableCell>
                                                                                    </asp:TableRow>
                                                                                </asp:Table>

                                                                            </asp:TableCell>
                                                                        </asp:TableRow>

                                                                    </asp:Table>
                                                                </asp:Panel>
                                                                <br />
                                                                <asp:Label ID="Label45" runat="server" Text="CAREER "
                                                                    ForeColor="crimson" Font-Size="Large"
                                                                    Style="margin-left: 30px;"></asp:Label>
                                                                <asp:Label ID="Label46" runat="server" Text="OBJECTIVE"
                                                                    Font-Size="Large"></asp:Label><br />
                                                                <br />
                                                                <asp:Label ID="Label47" runat="server" Text="Label"
                                                                    Style="margin-left: 30px"></asp:Label>
                                                                <br />
                                                                <br />
                                                                <asp:Label ID="Label48" runat="server" Text="WORK "
                                                                    Font-Size="Large" ForeColor="OrangeRed"
                                                                    Style="margin-left: 30px"></asp:Label>
                                                                <asp:Label ID="Label62" runat="server" Text="EXPERIENCE"
                                                                    Font-Size="Large"></asp:Label><br />
                                                                <br />
                                                                <asp:Table ID="Table17" runat="server">
                                                                    <asp:TableRow>
                                                                        <asp:TableCell VerticalAlign="Top">
                                                                            <asp:Label ID="Label63" runat="server" Text="1. " BackColor="AntiqueWhite" Style="margin-left: 30px;"></asp:Label>  
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label64" runat="server" Text="  Name of Company  :  "></asp:Label>
                                                                            <asp:Label ID="Label65" runat="server" Text="Label"></asp:Label><br />
                                                                           
                                                                            <asp:Label ID="Label68" runat="server" Text="  Position  :  "></asp:Label>
                                                                            <asp:Label ID="Label69" runat="server" Text="Label"></asp:Label><br />
                                                                             <asp:Label ID="Label66" runat="server" Text="  Responsibilites :  "></asp:Label>
                                                                            <asp:Label ID="Label67" runat="server" Text="Label"></asp:Label><br />
                                                                            <asp:Label ID="Label70" runat="server" Text="  Work Duration  :  "></asp:Label>
                                                                            <asp:Label ID="Label158" runat="server" Text="Label"></asp:Label><br />
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                    <asp:TableRow>
                                                                        <asp:TableCell VerticalAlign="Top">
                                                                             <asp:Label ID="Label159" runat="server" Text="2. " BackColor="AntiqueWhite" Style="margin-left: 30px;"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label160" runat="server" Text="  Name of Company  :  "></asp:Label>
                                                                            <asp:Label ID="Label161" runat="server" Text="Label"></asp:Label><br />
                                                                           
                                                                            <asp:Label ID="Label164" runat="server" Text="  Position  : "></asp:Label>
                                                                            <asp:Label ID="Label165" runat="server" Text="Label"></asp:Label><br />
                                                                             <asp:Label ID="Label162" runat="server" Text="  Responsibilities  :  "></asp:Label>
                                                                            <asp:Label ID="Label163" runat="server" Text="Label"></asp:Label><br />
                                                                            <asp:Label ID="Label166" runat="server" Text="  Work Duration  :  "></asp:Label>
                                                                            <asp:Label ID="Label167" runat="server" Text="Label"></asp:Label><br />
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>

                                                                </asp:Table>

                                                                <br />

                                                                <asp:Label ID="Label168" runat="server" Text="EDUCATIONAL " Font-Size="Large" ForeColor="Tomato" Style="margin-left: 30px;"></asp:Label>
                                                                <asp:Label ID="Label169" runat="server" Text="QUALIFICATIONS"></asp:Label><br />
                                                                <br />
                                                                <asp:Table ID="Table16" runat="server" Style="margin-left: 32px"
                                                                    Width="659px">
                                                                    <asp:TableRow>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label170" runat="server"
                                                                                Text="Post Graduation" Font-Bold="true"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label171" runat="server"
                                                                                Text="Univ Name"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label172" runat="server"
                                                                                Text="Percent"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label173" runat="server"
                                                                                Text="Year"></asp:Label>
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                    <asp:TableRow>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label174" runat="server"
                                                                                Text="Graduation" Font-Bold="true"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label175" runat="server"
                                                                                Text="Univ Name"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label176" runat="server"
                                                                                Text="Percent"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label177" runat="server"
                                                                                Text="Year"></asp:Label>
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                    <asp:TableRow>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label195" runat="server"
                                                                                Text="Senior School" Font-Bold="true"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label196" runat="server"
                                                                                Text="Univ Name"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label197" runat="server"
                                                                                Text="Percent"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label198" runat="server"
                                                                                Text="Year"></asp:Label>
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                    <asp:TableRow>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label199" runat="server"
                                                                                Text="Secondary School" Font-Bold="true"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label200" runat="server"
                                                                                Text="Univ Name"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label201" runat="server"
                                                                                Text="Percent"></asp:Label>
                                                                        </asp:TableCell>
                                                                        <asp:TableCell>
                                                                            <asp:Label ID="Label202" runat="server"
                                                                                Text="Year"></asp:Label>
                                                                        </asp:TableCell>
                                                                    </asp:TableRow>
                                                                </asp:Table>
                                                                <br />
                                                                
                                                                <asp:Label ID="Label183" runat="server" Text="INTEREST & "
                                                                    Font-Size="Large" ForeColor="SeaGreen"
                                                                    Style="margin-left: 30px;"></asp:Label>
                                                                <asp:Label ID="Label184" runat="server"
                                                                    Text="HOBBIES"></asp:Label><br />
                                                                <br />
                                                                <asp:BulletedList ID="BulletedList3" runat="server">
                                                                    <asp:ListItem></asp:ListItem>
                                                                    <asp:ListItem></asp:ListItem>
                                                                    <asp:ListItem></asp:ListItem>
                                                                </asp:BulletedList>
                                                                <br />

                                                                <asp:Label ID="Label178" runat="server" Text="ABOUT "
                                                                    Font-Size="Large" ForeColor="SpringGreen"
                                                                    Style="margin-left: 30px;"></asp:Label>
                                                                <asp:Label ID="Label179" runat="server"
                                                                    Text="YOURSELF"></asp:Label><br />
                                                                <asp:Label ID="Label180" runat="server" Text="Label" style="margin-left:46px"></asp:Label>
                                                                <br />

                                                            </asp:Panel>
                                                            <asp:Label ID="Label186" runat="server" Text=""></asp:Label>
                                                        </asp:View>
                                                    </asp:MultiView>   


                                                   <%-- <div style="background-color: white; width: 600px; margin-left: 50px; height: 750px;margin-top:20px">
                                                        <asp:Table BorderWidth="2" BorderStyle="Double" runat="server" Width="600" Height="750" Style="margin-left: 0px">
                                                            <asp:TableRow>
                                                                <asp:TableCell>

                                                                    <div style="margin-left: 250px">
                                                                        <asp:Label ID="Label68" runat="server" Text="Resume" Font-Bold="true" Font-Size="X-Large" Font-Underline="true"></asp:Label>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div style="margin-left: 20px">
                                                                        <asp:Label ID="Label38" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label><br />
                                                                        <asp:Label ID="Label39" runat="server" Text="Label"></asp:Label><br />
                                                                        <asp:Label ID="Label40" runat="server" Text="Label"></asp:Label><br />
                                                                        <asp:Label ID="Label41" runat="server" Text="Label"></asp:Label><br />
                                                                    </div>
                                                                    <hr style="margin-left: 20px; margin-right: 20px" />
                                                                    <br />
                                                                    <div style="margin-left: 20px">
                                                                        <asp:Label ID="Label42" runat="server" Text="Academic Qualifications:" Font-Bold="true" Font-Size="Larger" Font-Underline="true"></asp:Label><br />
                                                                    </div>
                                                                    <div style="margin-left: 40px">
                                                                        <asp:Label ID="Label43" runat="server" Text="1. " Font-Bold="true"></asp:Label><asp:Label ID="Label47" runat="server" Text="Label"></asp:Label><br />
                                                                        <asp:Label ID="Label44" runat="server" Text="2. " Font-Bold="true"></asp:Label><asp:Label ID="Label48" runat="server" Text="Label"></asp:Label><br />
                                                                        <asp:Label ID="Label45" runat="server" Text="3. " Font-Bold="true"></asp:Label><asp:Label ID="Label49" runat="server" Text="Label"></asp:Label><br />
                                                                        <asp:Label ID="Label46" runat="server" Text="4. " Font-Bold="true"></asp:Label><asp:Label ID="Label50" runat="server" Text="Label"></asp:Label><br />
                                                                    </div>
                                                                    <br />
                                                                    <div style="margin-left: 20px">
                                                                        <asp:Label ID="Label51" runat="server" Text="Summer Training" Font-Bold="true" Font-Size="Larger" Font-Underline="true"></asp:Label><br />
                                                                    </div>
                                                                    <div style="margin-left: 40px">
                                                                        <asp:Label ID="Label52" runat="server" Text="1." Font-Bold="true"></asp:Label><asp:Label ID="Label54" runat="server" Text="Label"></asp:Label><br />
                                                                        <asp:Label ID="Label53" runat="server" Text="2." Font-Bold="true"></asp:Label><asp:Label ID="Label55" runat="server" Text="Label"></asp:Label><br />
                                                                    </div>
                                                                    <br />
                                                                    <div style="margin-left: 20px">
                                                                        <asp:Label ID="Label56" runat="server" Text="Achievements" Font-Bold="true" Font-Underline="true" Font-Size="Larger"></asp:Label><br />
                                                                    </div>
                                                                    <div style="margin-left: 40px">
                                                                        <asp:Label ID="Label57" runat="server" Text="1. " Font-Bold="true"></asp:Label><asp:Label ID="Label60" runat="server" Text="Label"></asp:Label><br />
                                                                        <asp:Label ID="Label58" runat="server" Text="2. " Font-Bold="true"></asp:Label><asp:Label ID="Label61" runat="server" Text="Label"></asp:Label><br />
                                                                        <asp:Label ID="Label59" runat="server" Text="3. " Font-Bold="true"></asp:Label><asp:Label ID="Label62" runat="server" Text="Label"></asp:Label><br />
                                                                    </div>
                                                                    <br />
                                                                    <div style="margin-left: 20px">
                                                                        <asp:Label ID="Label63" runat="server" Text="Personal Details" Font-Bold="true" Font-Underline="true" Font-Size="Larger"></asp:Label><br />
                                                                    </div>
                                                                    <div style="margin-left: 40px">
                                                                        <asp:Label ID="Label64" runat="server" Text="Sex : " Font-Bold="true"></asp:Label><asp:Label ID="Label66" runat="server" Text="Label"></asp:Label><br />
                                                                        <asp:Label ID="Label65" runat="server" Text="Something about myself :" Font-Bold="true"></asp:Label><br />
                                                                        <asp:Label ID="Label67" runat="server" Text="Label"></asp:Label><br />
                                                                        <asp:Label ID="Label69" runat="server" Text="DOB : " Font-Bold="true"></asp:Label><asp:Label ID="Label70" runat="server" Text="Label"></asp:Label><br />
                                                                    </div>



                                                                </asp:TableCell>
                                                            </asp:TableRow>

                                                        </asp:Table>--%>
                                                        <br />
                                                        <br />
                                                        <div style="margin-left: 25%; margin-top: 20px; margin-bottom: 20px">
                                                            <asp:Table runat="server" Width="250px">
                                                                <asp:TableRow>
                                                                    <asp:TableCell>
                                                                        <asp:Button ID="Button10" runat="server" Text="Save" OnClick="Button10_Click" Visible="false" />
                                                                    </asp:TableCell>
                                                                    <asp:TableCell>
                                                                        <asp:Button ID="Button11" runat="server" Text="Email" OnClick="Button11_Click" Visible="false" />
                                                                    </asp:TableCell>
                                                                </asp:TableRow>
                                                            </asp:Table>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                            </asp:Panel>
                                            <ajaxToolkit:DropShadowExtender ID="Panel6_DropShadowExtender" Rounded="true" Opacity="3" Radius="10" TrackPosition="true" runat="server" Enabled="True" TargetControlID="Panel6">
                                            </ajaxToolkit:DropShadowExtender>



                                            <asp:Panel ID="Panel17" runat="server"  BorderStyle="Solid" BackColor="YellowGreen" Visible="false" >
                                                <asp:Label ID="Label72" runat="server" Text="Authentication:" Font-Bold="true" Font-Size="Larger"></asp:Label>
                                                <br />
                                                <asp:Table runat="server">
                                                    <asp:TableRow>
                                                        <asp:TableCell>
                                                            <asp:Label ID="Label87" runat="server" Text="Username"></asp:Label>
                                                        </asp:TableCell>
                                                        <asp:TableCell>
                                                            <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow>
                                                        <asp:TableCell>
                                                            <asp:Label ID="Label88" runat="server" Text="Password"></asp:Label>
                                                        </asp:TableCell>
                                                        <asp:TableCell>
                                                            <asp:TextBox ID="TextBox34" TextMode="Password" runat="server"></asp:TextBox>
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                    
                                                </asp:Table>
                                                <br />
                                                <asp:Label ID="Label89" runat="server" Text="Details:" Font-Bold="true" Font-Size="Larger"></asp:Label><br></br>
                                                <asp:Table runat="server">
                                                    <asp:TableRow>
                                                        <asp:TableCell>
                                                            <asp:Label ID="Label90" runat="server" Text="To:"></asp:Label>
                                                        </asp:TableCell>
                                                        <asp:TableCell>
                                                            <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow>
                                                        <asp:TableCell>
                                                            <asp:Label ID="Label91" runat="server" Text="Subject:"></asp:Label>
                                                        </asp:TableCell>
                                                        <asp:TableCell>
                                                            <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow>
                                                        <asp:TableCell>
                                                            <asp:Label runat="server" Text="Body:"></asp:Label>
                                                        </asp:TableCell>                                                        
                                                    </asp:TableRow>
                                                    <asp:TableRow>
                                                        <asp:TableCell>
                                                            <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
                                                        </asp:TableCell>                                                        
                                                    </asp:TableRow>
                                                </asp:Table>
                                                <br />
                                                <asp:Button ID="sendButton" runat="server" Text="Send" OnClick="sendButton_Click" />
                                            </asp:Panel>



                                        </asp:View>
                                        <%--Notifications --%>
                                        <asp:View ID="View10" runat="server">
                                            <asp:Panel ID="Panel4" SkinID="panelModified" runat="server" Height="530px" style="margin-left:8%">
                                                <asp:Label ID="Label80" runat="server" Text="Notifications" Font-Bold="true" Font-Size="X-Large"></asp:Label><br />


                                                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" BorderWidth="0px" CellPadding="0" CellSpacing="10">
                                                    <ItemTemplate>
                                                        <asp:Panel ID="Panel25" runat="server" BorderColor="#FF9933" SkinID="panelModified"
                                                            BorderWidth="6px" Height="250px" Width="270px" Style="margin-left: 10px;margin-top:10px" BackImageUrl="~/sourceImages/notifyUs.jpg">

                                                            <table style="margin-left: 10px; margin-left: 10px">
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label81" runat="server" Text="Post: " Font-Bold="true"></asp:Label>
                                                                        <asp:Label ID="Label82" runat="server" Text='<%#Eval("post") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="lbl" runat="server" Text="Stream:" Font-Bold="true"></asp:Label>
                                                                        <asp:Label ID="Label83" runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <span style="color: Black; font-weight: bold;">Responsibilities:</span><br />
                                                                        <asp:Label ID="lbl2" runat="server" Text='<%#Eval("responsibilities") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td><span style="color: Black; font-weight: bold;">Experience:</span>
                                                                        <br />
                                                                        <asp:Label ID="lbl3" runat="server" Text='<%#Eval("experience") %>'></asp:Label><asp:Label ID="Label86" runat="server" Text=" years"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <span style="color: Black; font-weight: bold;">Number of Vacancies:</span><br />
                                                                        <asp:Label ID="Label85" runat="server" Text='<%#Eval("count") %>'></asp:Label>
                                                                    </td>
                                                                </tr>

                                                            </table>

                                                        </asp:Panel>
                                                        <ajaxToolkit:DropShadowExtender runat="server" Enabled="True" TargetControlID="Panel25" ID="Panel25_DropShadowExtender" Rounded="True" Opacity="2"></ajaxToolkit:DropShadowExtender>

                                                    </ItemTemplate>
                                                    <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                                                </asp:DataList>



                                            </asp:Panel>

                                        </asp:View>
                                    </asp:MultiView>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                                    <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                                    <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click" />
                                    <asp:AsyncPostBackTrigger ControlID="Button4" EventName="Click" />
                                    <asp:PostBackTrigger ControlID="submit" />
                                    <asp:PostBackTrigger ControlID="save" />
                                    <asp:PostBackTrigger ControlID="sendButton" />
                                    <asp:PostBackTrigger ControlID="Button10" />
                                </Triggers>
                            </asp:UpdatePanel>


                        </asp:TableCell>
                    </asp:TableRow>

                </asp:Table>

            </asp:View>
            <%--Admin --%>
            <asp:View ID="View4" runat="server">
                
                <asp:Table ID="Table2" runat="server" Width="526px">
                    <asp:TableRow>
                        <asp:TableCell VerticalAlign="Top">
                            <asp:Panel ID="Panel13" Height="300px" SkinID="panelModified" Width="80px" runat="server" Style="border: solid;background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64)); margin-left: 30px;margin-top:20px">
                                <div style="margin-left: 40px; margin-top: 20px">
                                    <%--Button Table --%>
                                    <asp:Table runat="server" CellPadding="10" Height="237px">
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left">
                                               <asp:Button ID="Button5" runat="server"  Text="Post New Job" CausesValidation="false" OnClick="Button5_Click" />
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left">
                                                <asp:Button ID="Button6" runat="server" Text="Search" OnClick="Button6_Click" CausesValidation="false" />
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left">
                                                <asp:Button ID="Button7" CausesValidation="false" runat="server" Text="Edit vacancies" OnClick="Button7_Click" />
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left">
                                                 <asp:Button ID="Button8" runat="server" SkinID="buttonModified" CssClass="btn btn-danger" CausesValidation="false" Text="Logout" OnClick="Button4_Click" />
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </div>
                            </asp:Panel>
                </asp:TableCell>
            <asp:TableCell>

                 <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:MultiView ID="MultiView2" runat="server">
                            <%--Post a Job --%>
                            <asp:View ID="View5" runat="server">

                                <asp:Panel ID="Panel14" runat="server" Style="margin-left: 80px; margin-top: 25px; background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64));" SkinID="panelModified" Height="550px" Width="100px" BorderStyle="Solid">

                                <asp:Panel ID="Panel5" Width="700px" ScrollBars="Vertical" runat="server" Style="margin-top: 50px; margin-left: 50px;background:linear-gradient(rgb(255, 255, 255), rgba(191, 251, 62, 0.64), rgb(255, 255, 255))" Height="450px">
                                    <asp:Label ID="Label16" runat="server" Text="Post a vacancy" style="margin-left:10px" Font-Bold="true" Font-Size="XX-Large"></asp:Label><br />
                                    <div style="margin-left:10%">
                                    <asp:Label ID="Label76" runat="server" Text="Post:" Font-Bold="true"></asp:Label>&nbsp;<asp:TextBox ID="TextBox28" runat="server"></asp:TextBox><br />
                                    <asp:Label ID="Label77" runat="server" Text="Stream:" Font-Bold="true"></asp:Label>&nbsp;<asp:TextBox ID="TextBox29" runat="server"></asp:TextBox><br />
                                    <asp:Label ID="Label78" runat="server" Text="Responsibilities:" Font-Bold="true"></asp:Label><br />
                                    <asp:TextBox ID="TextBox30" runat="server" Rows="3" TextMode="MultiLine" SkinID="skinModified" Width="400px" Wrap="False"></asp:TextBox><br />
                                    <asp:Label ID="Label79" runat="server" Text="Experience:(in yrs)" Font-Bold="true"></asp:Label>&nbsp;<asp:TextBox ID="TextBox31" SkinID="skinModified" Width="40px" runat="server"></asp:TextBox><br />
                                        <asp:Label ID="Label84" runat="server" Text="Number of Open Positions:" Font-Bold="true"></asp:Label>&nbsp;<asp:TextBox ID="TextBox32" runat="server" SkinID="skinModified" Width="40px"></asp:TextBox>
                                    <br />
                                        </div>
                                    <asp:Button ID="Button12" runat="server" CausesValidation="true" Text="Post" Style="margin-left:15%" OnClick="Button12_Click" />&nbsp;<asp:Button ID="Button13" CausesValidation="false" runat="server" Text="Clear" Style="margin-left:30px" OnClick="Button13_Click" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox28" ErrorMessage="Please fill the post" Display="None"></asp:RequiredFieldValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox29" ErrorMessage="Please fill the Stream" Display="None"></asp:RequiredFieldValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox30" ErrorMessage="Please fill the responsibilities of the post" Display="None"></asp:RequiredFieldValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox31" ErrorMessage="Please fill the experience needed" Display="None"></asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="TextBox31" ErrorMessage="Please enter experience between 0 to 100 years" MaximumValue="100" MinimumValue="0" Display="None"></asp:RangeValidator>
                                    <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="TextBox32" ErrorMessage="Please enter the vacancies correctly" MaximumValue="1000" MinimumValue="0" Display="None"></asp:RangeValidator>
                                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" Style="margin-top:20px;margin-left:10%" />
                                </asp:Panel>
                                
                            </asp:Panel>
                                <ajaxToolkit:DropShadowExtender runat="server" Enabled="True" TargetControlID="Panel5" ID="Panel5_DropShadowExtender" Rounded="False" Radius="10"></ajaxToolkit:DropShadowExtender>
                            </asp:View>
                            <%-- Search--%>
                            <asp:View ID="View6" runat="server">

                                 <asp:Panel ID="Panel15" runat="server" SkinID="panelModified" Style="margin-left: 80px; margin-top: 25px; background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64))" Height="500px" Width="100px" BorderStyle="Solid">
                                <asp:Panel ID="Panel2" runat="server" Style="margin-top: 50px; margin-left: 50px" Height="400px" Width="750px">

                                    <asp:Label ID="Label29" runat="server" Text="Search" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" Style="margin-top: 20px"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Style="margin-left: 25px" CellSpacing="-1" CellPadding="-1" Width="350px">
                                        <asp:ListItem Value="byname"> Name    </asp:ListItem>
                                        <asp:ListItem Value="byskill"> Skill    </asp:ListItem>
                                        <asp:ListItem Value="bylocation"> Location    </asp:ListItem>
                                        <asp:ListItem Value="byusername"> Username    </asp:ListItem>
                                    </asp:RadioButtonList>

                                    <br />
                                    <asp:TextBox ID="TextBox21" runat="server" Width="381px" Style="margin-left: 25px"></asp:TextBox><br />
                    <asp:Button ID="search" runat="server" Text="Search" OnClick="search_Click"  Style="margin-left: 25px"/><br />
                                    <br />
                                    <asp:Label ID="Label156" runat="server" Text="Results" Font-Bold="True" Font-Underline="True"></asp:Label><br />
                                    <br />
                                    <asp:GridView ID="GridView1" OnRowCommand="GridView1_RowCommand"  runat="server" Style="margin-left: 128px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="464px">
                                        <Columns>
                                            <asp:BoundField DataField="username" HeaderText="Username" />
                                            <asp:BoundField DataField="fname" HeaderText="First Name" />
                                            <asp:BoundField DataField="lname" HeaderText="Last name" />
                                            <asp:BoundField DataField="mobno" HeaderText="Mobile No." />
                                            <asp:ButtonField Text="View Resume" CausesValidation="false" ButtonType="Link"></asp:ButtonField>
                                        </Columns>
                                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                        <RowStyle BackColor="White" ForeColor="#330099" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                    </asp:GridView>
                                    </asp:Panel>
                                     <ajaxToolkit:DropShadowExtender runat="server" Enabled="True" TargetControlID="Panel2" ID="Panel2_DropShadowExtender" Rounded="False" Radius="10"></ajaxToolkit:DropShadowExtender>
                                 </asp:Panel>
                            </asp:View>
                            <%--Edit the vacancies --%>
                            <asp:View ID="View11" runat="server">

                                <asp:Panel ID="Panel16" runat="server" SkinID="panelModified" Style="margin-left: 80px; margin-top: 25px; background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64));" Height="600px" Width="100px" BorderStyle="Solid">

                                <asp:Panel ID="Panel7" runat="server" Style="margin-top: 50px; margin-left: 50px" Height="500px" Width="810px">
                                    <asp:GridView ID="GridView2" OnRowEditing="GridView2_RowEditing" Style="margin-top:30px" runat="server" AutoGenerateEditButton="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing="10" Width="807px">

                                        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="S.No"></asp:BoundField>
                                            <asp:BoundField DataField="post" HeaderText="Post"></asp:BoundField>
                                            <asp:BoundField DataField="stream" HeaderText="Stream"></asp:BoundField>
                                            <asp:BoundField DataField="responsibilities" HeaderText="Responsibility">
                                                <ItemStyle Width="300px"></ItemStyle>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="count" HeaderText="Count"></asp:BoundField>
                                        </Columns>
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></FooterStyle>

                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                        <PagerStyle HorizontalAlign="Center" BackColor="#FFCC66" ForeColor="#333333"></PagerStyle>

                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333"></RowStyle>

                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy"></SelectedRowStyle>

                                        <SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>

                                        <SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

                                        <SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

                                        <SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
                                    </asp:GridView>
                                </asp:Panel>
                                    <ajaxToolkit:DropShadowExtender runat="server" Enabled="True" TargetControlID="Panel7" ID="Panel7_DropShadowExtender" Radius="10"></ajaxToolkit:DropShadowExtender>
                                </asp:Panel>
                               <%-- <div style="margin-left: 250px; margin-top: 100px">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/sourceImages/under-construction-sign.jpg" />
                                </div>
                                <div style="margin-left: 20px; margin-bottom: 200px; width: 600px">
                                    <asp:Label ID="Label72" runat="server" Text="This is a privileged feature...Please come Back at the time of submission of MAJOR PROJECT. Feel free to navigate to other pages....:-D" Font-Bold="true" Font-Size="X-Large"></asp:Label>
                                </div>
--%>

                            </asp:View>
                            <%--Notofications --%>
                            <asp:View ID="View17" runat="server">
                                <asp:Panel ID="Panel21" runat="server" Height="500px" Width="100px" BorderStyle="Solid" SkinID="panelModified" style="background:linear-gradient(rgba(3, 131, 6, 0.64), rgb(255, 255, 255), rgba(3, 131, 6, 0.64));margin-top:20px">
                                    <asp:Panel ID="Panel3" runat="server" Height="400px" Width="600px" style="margin-top:50px;margin-left:50px">
                                    <div style="margin-top:50px">
                                        <asp:Label ID="Label157" runat="server" Font-Bold="true" Font-Size="X-Large" Text="This is the place where you can do the powerful stuff."></asp:Label>
                                    </div>
                                </asp:Panel>
                                    <ajaxToolkit:DropShadowExtender runat="server" Enabled="True" TargetControlID="Panel3" ID="Panel3_DropShadowExtender" Radius="10"></ajaxToolkit:DropShadowExtender>
                                </asp:Panel>
                                <div style="height:10px"></div>
                            </asp:View>

                        </asp:MultiView>


                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Button5" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="Button6" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="Button7" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="Button8" EventName="Click" />
                        <asp:PostBackTrigger ControlID="GridView1" />
                        <asp:PostBackTrigger ControlID="search" />
                        <asp:PostBackTrigger ControlID="Button12" />
                    </Triggers>
                </asp:UpdatePanel>


            </asp:TableCell>
                </asp:TableRow>
                    </asp:Table>
                
               
               

            </asp:View>
        </asp:MultiView>
    </div>
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
