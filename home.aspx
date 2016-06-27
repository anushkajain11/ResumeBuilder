<%@ Page Language="C#" AutoEventWireup="true" Theme="SkinFile" CodeFile="home.aspx.cs" Inherits="home" %>

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

    <div style="margin-top:30px">
        <asp:Table ID="Table1" runat="server" Width="100%">
            <asp:TableRow>
                <asp:TableCell Height="550px" Width="95px">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/sourceImages/left.jpg" Width="95px" />
                    <ajaxToolkit:AnimationExtender runat="server" Enabled="True" TargetControlID="Image5" ID="Image5_AnimationExtender">
                        <Animations>
                            <OnLoad>
                                <FadeOut Duration=".2" MinimumOpacity=".2" MaximumOpacity="1" />
                            </OnLoad>
                        </Animations>
                    </ajaxToolkit:AnimationExtender>
                </asp:TableCell>
                <asp:TableCell Height="550px" BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle">
                    <asp:Image ID="Image1" ImageUrl="~/sourceImages/homeImage1.jpg" runat="server" AlternateText="Image1" ImageAlign="Middle"/>
                    <ajaxToolkit:AnimationExtender runat="server" Enabled="True" TargetControlID="Image1" ID="Image1_AnimationExtender">
                        <Animations>
                            <OnLoad>
<FadeOut Duration=".5" MinimumOpacity=".5" MaximumOpacity="1" />
</OnLoad>
<OnHoverOut>
<Sequence>
<FadeOut Duration=".5" MinimumOpacity=".5" MaximumOpacity="1" />
</Sequence>
</OnHoverOut>
<OnHoverOver>
<FadeIn Duration=".5" MinimumOpacity=".5" MaximumOpacity="1" />
</OnHoverOver>
                        </Animations>
                    </ajaxToolkit:AnimationExtender>
                </asp:TableCell>
                <asp:TableCell Height="550px">
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/sourceImages/right.jpg" Width="95px" />
                    <ajaxToolkit:AnimationExtender runat="server" Enabled="True" TargetControlID="Image6" ID="Image6_AnimationExtender">
                        <Animations>
                            <OnLoad>
                                <FadeOut Duration=".2" MinimumOpacity=".2" MaximumOpacity="1" />
                            </OnLoad>
                        </Animations>
                    </ajaxToolkit:AnimationExtender>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Image ID="Image9" runat="server" ImageUrl="~/sourceImages/left.jpg" Width="95px" />
                    <ajaxToolkit:AnimationExtender runat="server" Enabled="True" TargetControlID="Image9" ID="Image9_AnimationExtender">
                        <Animations>
                            <OnLoad>
                                <FadeOut Duration=".2" MinimumOpacity=".2" MaximumOpacity="1" />
                            </OnLoad>
                        </Animations>
                    </ajaxToolkit:AnimationExtender>
                </asp:TableCell>
                <asp:TableCell Height="550px" BackColor="LightGray" HorizontalAlign="Center">
                    <asp:Image ID="Image2" ImageUrl="~/sourceImages/homeImage2.jpg" runat="server" AlternateText="Image2" ImageAlign="Middle"/>
                    <ajaxToolkit:AnimationExtender runat="server" Enabled="True" TargetControlID="Image2" ID="Image2_AnimationExtender">
                        <Animations>
                            <OnLoad>
<FadeOut Duration=".5" MinimumOpacity=".5" MaximumOpacity="1" />
</OnLoad>
<OnHoverOut>
<Sequence>
<FadeOut Duration=".5" MinimumOpacity=".5" MaximumOpacity="1" />
</Sequence>
</OnHoverOut>
<OnHoverOver>
<FadeIn Duration=".5" MinimumOpacity=".5" MaximumOpacity="1" />
</OnHoverOver>
                        </Animations>
                    </ajaxToolkit:AnimationExtender>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Image ID="Image10" runat="server" ImageUrl="~/sourceImages/right.jpg"  Width="95px"/>
                    <ajaxToolkit:AnimationExtender runat="server" Enabled="True" TargetControlID="Image10" ID="Image10_AnimationExtender">
                        <Animations>
                            <OnLoad>
                                <FadeOut Duration=".2" MinimumOpacity=".2" MaximumOpacity="1" />
                            </OnLoad>
                        </Animations>
                    </ajaxToolkit:AnimationExtender>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Image ID="Image11" runat="server" ImageUrl="~/sourceImages/left.jpg"  Width="95px"/>
                    <ajaxToolkit:AnimationExtender runat="server" Enabled="True" TargetControlID="Image11" ID="Image11_AnimationExtender">
                        <Animations>
                            <OnLoad>
                                <FadeOut Duration=".2" MinimumOpacity=".2" MaximumOpacity="1" />
                            </OnLoad>
                        </Animations>
                    </ajaxToolkit:AnimationExtender>
                </asp:TableCell>
                <asp:TableCell Height="550px" BackColor="White" HorizontalAlign="Center">
                    <asp:Image ID="Image3" runat="server" AlternateText="Image3" ImageAlign="Middle"/>
                    <ajaxToolkit:AnimationExtender runat="server" Enabled="True" TargetControlID="Image3" ID="Image3_AnimationExtender">
                        <Animations>
                            <OnLoad>
<FadeOut Duration=".5" MinimumOpacity=".5" MaximumOpacity="1" />
</OnLoad>
<OnHoverOut>
<Sequence>
<FadeOut Duration=".5" MinimumOpacity=".5" MaximumOpacity="1" />
</Sequence>
</OnHoverOut>
<OnHoverOver>
<FadeIn Duration=".5" MinimumOpacity=".5" MaximumOpacity="1" />
</OnHoverOver>
                        </Animations>
                    </ajaxToolkit:AnimationExtender>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Image ID="Image12" runat="server" ImageUrl="~/sourceImages/right.jpg" Width="95px" />
                    <ajaxToolkit:AnimationExtender runat="server" Enabled="True" TargetControlID="Image12" ID="Image12_AnimationExtender">
                        <Animations>
                            <OnLoad>
                                <FadeOut Duration=".2" MinimumOpacity=".2" MaximumOpacity="1" />
                            </OnLoad>
                        </Animations>
                    </ajaxToolkit:AnimationExtender>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Image ID="Image7" runat="server" ImageUrl="~/sourceImages/left.jpg"  Width="95px" />
                    <ajaxToolkit:AnimationExtender runat="server" Enabled="True" TargetControlID="Image7" ID="Image7_AnimationExtender">
                        <Animations>
                            <OnLoad>
                                <FadeOut Duration=".2" MinimumOpacity=".2" MaximumOpacity="1" />
                            </OnLoad>
                        </Animations>
                    </ajaxToolkit:AnimationExtender>
                </asp:TableCell>
                <asp:TableCell Height="550px" BackColor="LightGray" HorizontalAlign="Center">
                    <asp:Image ID="Image4" runat="server" AlternateText="Image4" ImageAlign="Middle" />
                    <ajaxToolkit:AnimationExtender runat="server" Enabled="True" TargetControlID="Image4" ID="Image4_AnimationExtender">
                        <Animations>
                            <OnLoad>
<FadeOut Duration=".5" MinimumOpacity=".5" MaximumOpacity="1" />
</OnLoad>
<OnHoverOut>
<Sequence>
<FadeOut Duration=".5" MinimumOpacity=".5" MaximumOpacity="1" />
</Sequence>
</OnHoverOut>
<OnHoverOver>
<FadeIn Duration=".5" MinimumOpacity=".5" MaximumOpacity="1" />
</OnHoverOver>
                        </Animations>
                    </ajaxToolkit:AnimationExtender>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Image ID="Image8" runat="server" ImageUrl="~/sourceImages/right.jpg" Width="95px" />
                    <ajaxToolkit:AnimationExtender runat="server" Enabled="True" TargetControlID="Image8" ID="Image8_AnimationExtender">
                        <Animations>
                            <OnLoad>
                                <FadeOut Duration=".2" MinimumOpacity=".2" MaximumOpacity="1" />
                            </OnLoad>
                        </Animations>
                    </ajaxToolkit:AnimationExtender>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
<div style="background-color:rgb(191, 251, 62)">
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
