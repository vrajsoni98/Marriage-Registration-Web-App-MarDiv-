<%@ Page Title="" Language="C#" MasterPageFile="~/client/Webforms/Beforelogin/ClientBLMaster.master" AutoEventWireup="true" CodeFile="ClientBLLogin.aspx.cs" Inherits="client_Webforms_Beforelogin_ClientBLLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
       function bkclryl(txtbox) {
           txtbox.style.background = "yellow";

       }
       function bkclrwt(txtbox) {
           txtbox.style.background = "white";
       }
   </script>
     <table style="width:100%;">
        <tr>
           <td>
               <table style="width:100%;">
                   <tr>
                       <td style="width:45%;">

                       </td>
                       <td>
                        <table style="width:100%;" class="text">
                            <tr style="height:40px;">
                                <td colspan="3" style="text-align:right; font-size:25px; background-color:gray; color:white;">
                                    Login
                                </td>
                            </tr>
                            <tr style="height:25px;">
                                <td colspan="3"></td>
                            </tr>
                            <tr>
                                <td style="text-align:left;"> User Name</td>
                                <td style="text-align:center;">:</td>
                                <td style="text-align:left;">
                                    <asp:TextBox ID="txtUName" runat="server" CssClass="txtbx" onfocus="bkclryl(this)" onblur="bkclrwt(this)"></asp:TextBox>
                                    
                                        <asp:RequiredFieldValidator ID="rfvUName" runat="server" ErrorMessage="Enter UserName" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtUName"></asp:RequiredFieldValidator>
                                     </td>
                            </tr>
                            <tr>
                                <td style="text-align:left;">Password</td>
                                <td style="text-align:center;">:</td>
                                <td style="text-align:left;">
                                    <asp:TextBox ID="txtPasswd" runat="server" CssClass="txtbx" onfocus="bkclryl(this)" onblur="bkclrwt(this)" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvPasswd" runat="server" ErrorMessage="Enter Password" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtPasswd"></asp:RequiredFieldValidator>
                                     </td>
                            </tr>
                            <tr style="height:10px;">
                                <td colspan="3"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td colspan="2" style="text-align:left;">
                                    <asp:Button ID="btnLogin" runat="server" text="Login" CssClass="btn" OnClick="btnLogin_Click" />
                                    &nbsp;
                                     <asp:Button ID="btnSignup" runat="server" text="Signup" CssClass="btn" CauseValidation="flase" PostBackUrl="~/client/Webforms/Beforelogin/ClientBLSignup.aspx"/>
                                </td>
                            </tr>
                            <tr style="height:25px;">
                                <td colspan="3"></td>

                            </tr>
                            <tr>
                                <td colspan="3" style="text-align:left;background-color:gray">
                                    <asp:Label ID="lblErrMsg" runat="server" ForeColor="Yellow"></asp:Label>
                                </td>
                            </tr>
                        </table>
                       </td>
                   </tr>
               </table>
           </td>
        </tr>
    </table>
</asp:Content>

