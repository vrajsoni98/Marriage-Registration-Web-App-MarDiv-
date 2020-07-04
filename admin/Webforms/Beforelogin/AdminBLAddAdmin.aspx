<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Webforms/Beforelogin/AdminBLMaster.master" AutoEventWireup="true" CodeFile="AdminBLAddAdmin.aspx.cs" Inherits="admin_Webforms_Beforelogin_AdminBLAddAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <table style="width:100%;">
        <tr>
            <td>
            <table style="width:80%;" class="text">
                <tr style="height:40px;">
                    <td colspan="3" style="font-family:'Arial Rounded MT'; font-size:30px; text-align:right;color:maroon;">
                        Add Admin
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="font-size:20px; color:yellow; background-color:maroon; text-align:left;">
                        Personal Information
                    </td>
                </tr>
                <tr style="height:15px;">
                    <td colspan="3"></td>
                    </tr>
                <tr>
                    <td style="text-align:left;"> First Name<span style="color:maroon;">*</span></td>
                    <td style="text-align:center:">:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtFName" runat="server" CssClass="txtbx"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server"  ErrorMessage="Please Enter First Name" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtFName"></asp:RequiredFieldValidator>
                    </td>
                    </tr>
                <tr>
                    <td style="text-align:left;"> Last Name<span style="color:maroon;">*</span></td>
                    <td style="text-align:center:">:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtLName" runat="server" CssClass="txtbx"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLName" runat="server"  ErrorMessage="Please Enter Last Name" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtLName"></asp:RequiredFieldValidator>
                    </td>
                    </tr>

                <tr>
                    <td style="text-align:left;"> Email-Id<span style="color:maroon;">*</span></td>
                    <td style="text-align:center:">:</td>
                    <td style="text-align:left">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txtbx"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"  ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    	<asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Enter Email-Id in Proper Format"
                              SetFocusOnError="true" ForeColor="DarkRed"  ControlToValidate="txtEMail"  Display="Dynamic"
                               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                    </td>
                    </tr>
                            <tr style="height:15px;">
                        <td colspan="3"></td>
                    </tr>

                      <tr>
                        <td colspan="3" style="font-size:20px; color:yellow; background-color:maroon; text-align:left;">
                           Username and Password
                        </td>
                    </tr>
                    <tr style="height:15px;">
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td style="text-align:left;">User Name <span style="color:maroon;">*</span> </td>
                        <td style="text-align:center;">:</td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="txtUName" runat="server" CssClass="txtbx"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUName" runat="server" ErrorMessage="Please Enter User Name" SetFocusOnError="true" 
                                ForeColor="Red" ControlToValidate="txtUName" ></asp:RequiredFieldValidator>                                                       
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left;">Password <span style="color:maroon;">*</span> </td>
                        <td style="text-align:center;">:</td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="txtPasswd" runat="server" CssClass="txtbx" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPasswd" runat="server" 
                                ErrorMessage="Please Enter Password" SetFocusOnError="true" 
                                ForeColor="Red" ControlToValidate="txtPasswd" ></asp:RequiredFieldValidator>                            
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
                                ControlToValidate="txtCPasswd" ControlToCompare="txtPasswd"></asp:CompareValidator>      
                        
                        </td>
                    </tr>
                    <tr style="height:15px;">
                        <td colspan="3"></td>
                    </tr>
                <tr style="height:15px;">
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2" style="text-align:center;">
                        <asp:button Id="btnSubmit" runat="server" text="Submit" CssClass="btn" OnClick="btnSubmit_Click" />
                        &nbsp;
                        <asp:button Id="btnReset" runat="server" text="Reset" CssClass="btn" OnClick="btnReset_Click"/>

                    </td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:left;">
                        <asp:label ID="lblErrMsg" runat="server" ForeColor="Maroon"></asp:label>
                    </td>
                </tr>
               
            </table>

            </td>
        </tr>
    </table>
</asp:Content>

