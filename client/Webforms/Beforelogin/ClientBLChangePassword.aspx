<%@ Page Title="" Language="C#" MasterPageFile="~/client/Webforms/Beforelogin/ClientBLMaster.master" AutoEventWireup="true" CodeFile="ClientBLChangePassword.aspx.cs" Inherits="client_Webforms_Beforelogin_ClientBLChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
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
                        <asp:button Id="btnSubmit" runat="server" text="Submit" CssClass="btn" OnClick="btnSubmit_Click" />
                        &nbsp;
                        <asp:button Id="btnReset" runat="server" text="Reset" CssClass="btn" />
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
</asp:Content>

