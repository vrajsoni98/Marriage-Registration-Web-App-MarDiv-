<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Webforms/Beforelogin/AdminBLMaster.master" AutoEventWireup="true" CodeFile="AdminBLChangePassword.aspx.cs" Inherits="admin_Webforms_Beforelogin_AdminBLChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
<script type="text/javascript">
        function bkclrgr(txtbx) {
            txtbx.style.background = "Gray";
        }
        function bkclrwt(txtbx)
        { txtbx.style.background = "White"; }
</script>
    
<table style="width:100%;">
    <tr style="height:50px;">
        <td></td>
    </tr>
    <tr>
        <td  style="text-align:right;" class="text">
            <table class="text"  style=" width:60%; border-color:Gray;  border-style:solid; border-width:thick;">
                <tr>
                    <td colspan="3" style=" text-align:left; background-color:Gray; color:White; font-size:30px; line-height:40px;">
                        Change Password
                    </td>
                </tr>
                <tr style="height:30px;">
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td style="text-align:left;">
                        &nbsp;User Name <span style="color:Gray;">*</span>
                    </td>
                    <td style="text-align:center;">
                        :
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="txtUName" runat="server" CssClass="txtbx" onfocus="bkclrgr(this)" onblur="bkclrwt(this)"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left;">
                        &nbsp;Old Password <span style="color:Gray;">*</span>
                    </td>
                    <td style="text-align:center;">
                        :
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="txtOPasswd" runat="server" CssClass="txtbx" onfocus="bkclrgr(this)" onblur="bkclrwt(this)"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left;">
                        &nbsp;New Password <span style="color:Gray;">*</span>
                    </td>
                    <td style="text-align:center;">
                        :
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="txtNPasswd" runat="server" CssClass="txtbx" onfocus="bkclrgr(this)" onblur="bkclrwt(this)"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align:left;">
                        &nbsp;Confirm Password <span style="color:Gray;">*</span>
                    </td>
                    <td style="text-align:center;">
                        :
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="txtCPasswd" runat="server" CssClass="txtbx" onfocus="bkclrgr(this)" onblur="bkclrwt(this)"></asp:TextBox>
                        
                    </td>
                </tr>
                <tr style="height:30px;">
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td colspan="2" style="text-align:center;">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn" OnClick="btnSubmit_Click" /> &nbsp;&nbsp;
                        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn" OnClientClick="this.form.reset(); return false;" />
                    </td>
                </tr>
                <tr style="height:30px;">
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="3" style="background-color:Gray; text-align:left;">
                        <asp:Label ID="lblErrMsg" runat="server" ForeColor="White"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>

     <%--<table style="width:100%;">
        <tr>
            <td>
                <table style="width:80%;">
                    
                         <tr style="height:40px">
                        <td colspan="3" style="background-color:tomato;font-family:'Arial Rounded MT'; font-size:30px; text-align:right;color:white;">
                            CHANGE PASSWORD
                        </td>
                    </tr>
                    <tr style="height:15px">
                        <td colspan="3"></td>
                    </tr>
                     <tr>
                        <td style="text-align:left"> User Name<span style="color:maroon">*</span></td>
                        <td style="text-align:center">:</td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtUName" runat="server" CssClass="txtbx"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUName" runat="server"  ErrorMessage="Please Enter User Name" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtUName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                         <td style="text-align:left;">Old Password <span style="color:maroon;">*</span> </td>
                        <td style="text-align:center;">:</td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="txtOPasswd" runat="server" CssClass="txtbx" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvOPasswd" runat="server" 
                                ErrorMessage="Please Enter Old Password" SetFocusOnError="true" 
                                ForeColor="Red" ControlToValidate="txtOPasswd" ></asp:RequiredFieldValidator>                            
                        </td>
                    </tr>
                    <tr>
                         <td style="text-align:left;">New Password <span style="color:maroon;">*</span> </td>
                        <td style="text-align:center;">:</td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="txtNPasswd" runat="server" CssClass="txtbx" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNPasswd" runat="server" 
                                ErrorMessage="Please Enter New Password" SetFocusOnError="true" 
                                ForeColor="Red" ControlToValidate="txtNPasswd" ></asp:RequiredFieldValidator>                            
                        </td>
                    </tr>
                    <tr>
                         <td style="text-align:left; width:200px;">Confirm Password <span style="color:maroon;">*</span> </td>
                        <td style="text-align:center;">:</td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="txtCPasswd" runat="server" CssClass="txtbx" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvCPasswd" runat="server"  Display="Dynamic"
                                ErrorMessage="Please Enter Confirm Password" SetFocusOnError="true" 
                                ForeColor="Red" ControlToValidate="txtCPasswd" ></asp:RequiredFieldValidator>                             
                            <asp:CompareValidator ID="cvCPasswd" runat="server" Display="Dynamic" ForeColor="DarkRed"
                                 ErrorMessage="Above written password does not match..." 
                                ControlToValidate="txtCPasswd" ControlToCompare="txtNPasswd"></asp:CompareValidator>  
                        </td>
                    </tr>

                    <tr style="height:15px">
                        <td colspan="3"></td>
                    </tr>
                    
                        <tr>
                    <td></td>
                    <td colspan="2" style="text-align:center;">
                        <asp:button Id="btnSubmit" runat="server" text="Submit" CssClass="btn" />
                        &nbsp;
                        <asp:button Id="btnReset" runat="server" text="Reset" CssClass="btn" />
                    </td>
                </tr>
                </table>
              
            </td>
        </tr>
    </table>--%>
</asp:Content>

