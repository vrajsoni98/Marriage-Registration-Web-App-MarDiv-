<%@ Page Title="" Language="C#" MasterPageFile="~/client/Webforms/Beforelogin/ClientBLMaster.master" AutoEventWireup="true" CodeFile="ClientBLSignup.aspx.cs" Inherits="client_Webforms_Beforelogin_ClientBLSignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function hideothertxt()
        {
            var e = document.getElementById("othertxt");
            e.style.display = 'none';
        }
        function showothertxt()
        {
            var e = document.getElementById("othertxt");
            e.style.display= 'block';
        }
    </script>

    <table style="width:100%">
        <tr>
            <td >
                <table style="width:80%" class="text">
                    <tr style="height:40px">
                        <td colspan="3" style="background-color:tomato;font-family:'Arial Rounded MT'; font-size:30px; text-align:right;color:white;">
                            SIGN UP FORM
                        </td>
                    </tr>
                    <tr style="height:15px">
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="background-color:tomato; font-family:'Arial Rounded MT'; font-size:20px;color:white; ">
                            Personal Information
                        </td>
                    </tr>
                    <tr style="height:15px">
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td style="text-align:left"> First Name<span style="color:maroon">*</span></td>
                        <td style="text-align:center">:</td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtFName" runat="server" CssClass="txtbx"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFName" runat="server"  ErrorMessage="Please Enter First Name" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtFName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left">Last Name<span style="color:maroon">*</span></td>
                        <td style="text-align:center">:</td>
                        <td><asp:TextBox ID="txtLName" runat="server" CssClass="txtbx"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLName" runat="server"  ErrorMessage="Please Enter Last Name" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtLName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left">Date Of Birth<span style="color:maroon">*</span></td>
                        <td style="text-align:center">:</td>
                        <td style="text-align:left">
                        <asp:TextBox ID="txtDOB" runat="server" CssClass="txtbx"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ErrorMessage="Please Enter DOB" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtDOB"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left">Address<span style="color:maroon">*</span></td>
                        <td style="text-align:center">:</td>
                        <td style="text-align:left">
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="txtbx" TextMode="Multiline" Height="50px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Please Enter Address" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left">E-Mail<span style="color:maroon">*</span></td>
                        <td style="text-align:center">:</td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="txtbx"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Enter Email-Id in Proper Format"
                              SetFocusOnError="true" ForeColor="DarkRed"  ControlToValidate="txtEMail"  Display="Dynamic"
                               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                         </td>
                    </tr>
                    <tr>
                        <td style="text-align:left">Phone<span style="color:maroon">*</span></td>
                        <td style="text-align:center">:</td>
                        <td>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="txtbx"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="Please Enter Phone" ForeColor="Red" SetFocusOnError="true" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left">Gender<span style="color:maroon">*</span></td>
                        <td style="text-align:center">:</td>
                        <td>
                            <asp:radiobuttonlist ID="rbGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem selected="true">Male</asp:ListItem>
                            <asp:ListItem >Female</asp:ListItem>
                                </asp:radiobuttonlist>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left">Relation With Application<span style="color:maroon">*</span></td>
                        <td style="text-align:center">:</td>
                        <td>
                            <table>
                                <tr>
                                    <td colspan="2" style="text-align:left">
                                    <asp:radiobutton ID="rbApplicant" runat="server" GroupName="AppRe1" Text="Applicant(Own)" onclick="hideothertxt()" ></asp:radiobutton>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align:left">
                                    <asp:radiobutton ID="rbOther" runat="server" GroupName="AppRe1" Text="Other" onclick="showothertxt()" ></asp:radiobutton>
                                    </td>
                                    <td>
                                        <span id="othertxt" hidden="true">
                                            <asp:TextBox ID="txtOther" runat="server" CssClass="txtbx"></asp:TextBox>
                                        </span>
                                    </td>
                                </tr>
                            </table>
                              
                            
                        </td>
                    </tr>
                    
                    <tr style="height:15px">
                        <td colspan="3"></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="background-color:tomato; font-family:'Arial Rounded MT'; font-size:20px;color:white; ">
                            User Name & Password
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

                    <tr style="height:15px">
                        <td colspan="3"></td>
                    </tr>
                    
                        <tr>
                    <td></td>
                    <td colspan="2" style="text-align:center;">
                        <asp:button Id="btnSignUp" runat="server" text="Sign Up" CssClass="btn" OnClick="btnSignUp_Click" />
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

