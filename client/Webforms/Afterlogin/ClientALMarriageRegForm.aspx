<%@ Page Title="" Language="C#" MasterPageFile="~/client/Webforms/Afterlogin/ClientALMasterPage.master" AutoEventWireup="true" CodeFile="ClientALMarriageRegForm.aspx.cs" Inherits="client_Webforms_Afterlogin_ClientALMarriageRegForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width:100%;">
        <tr>
            <td>
                <table style="width:100%;" class="text">
                    <tr>
                        <td colspan="2" style="text-align:right; vertical-align:middle; color: Lime; font-size: 40px; line-height:50px;">
                           Marriage Registration Form
                        </td>
                    </tr>
                    <tr style="height:5px;">
                        <td  colspan="2" style="background-color:Lime; text-align:left; vertical-align:middle;">
                            <asp:Label Id="lblWelcomeMsg"  runat="server" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table >
                                <tr>
                                    <td colspan="3" style="text-align:left; vertical-align:middle; color:blue; font-size:25px;">
                                        Male Information
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        First Name
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:TextBox ID="txtmFName" runat="server" CssClass="txtbx"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        Last Name
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:TextBox ID="txtmLName" runat="server" CssClass="txtbx"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        Date Of Birth
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:TextBox ID="txtmDOB" runat="server" CssClass="txtbx"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        Address
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:TextBox ID="txtmAddress" runat="server" CssClass="txtbx" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        EmailId
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:TextBox ID="txtmEMailId" runat="server" CssClass="txtbx"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        Phone
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:TextBox ID="txtmPhone" runat="server" CssClass="txtbx"></asp:TextBox>
                                    </td>
                                </tr>
                                   <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        Religion
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:DropDownList ID="ddlmReligion" runat="server">
                                            <asp:ListItem>Hindu</asp:ListItem>
                                            <asp:ListItem>Muslim</asp:ListItem>
                                            <asp:ListItem>Sikh</asp:ListItem>
                                            <asp:ListItem>Buddhist</asp:ListItem>
                                            <asp:ListItem>Jain</asp:ListItem>
                                            <asp:ListItem>Christian</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="text-align:center; vertical-align:middle;">
                            <table >
                                <tr>
                                    <td colspan="3" style="text-align:left; vertical-align:middle; color:blue; font-size:25px;">
                                        Female Information
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        First Name
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:TextBox ID="txtfFName" runat="server" CssClass="txtbx"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        Last Name
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:TextBox ID="txtfLName" runat="server" CssClass="txtbx"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        Date Of Birth
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:TextBox ID="txtfDOB" runat="server" CssClass="txtbx"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        Address
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:TextBox ID="txtfAddress" runat="server" CssClass="txtbx" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        EmailId
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:TextBox ID="txtfEmailId" runat="server" CssClass="txtbx"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        Phone
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:TextBox ID="txtfPhone" runat="server" CssClass="txtbx"></asp:TextBox>
                                    </td>
                                </tr>
                                   <tr>
                                    <td style="text-align:left; vertical-align:middle;">
                                        Religion
                                    </td>
                                    <td style="text-align:center; vertical-align:middle;">
                                        :
                                    </td>
                                    <td style="text-align:left; vertical-align:middle;">
                                        <asp:DropDownList ID="ddlfReligion" runat="server">
                                            <asp:ListItem>Hindu</asp:ListItem>
                                            <asp:ListItem>Muslim</asp:ListItem>
                                            <asp:ListItem>Sikh</asp:ListItem>
                                            <asp:ListItem>Buddhist</asp:ListItem>
                                            <asp:ListItem>Jain</asp:ListItem>
                                            <asp:ListItem>Christian</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="height:15px;">
                        <td colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center; vertical-align:middle">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn" OnClick="btnSubmit_Click" /> &nbsp;
                            <asp:Button ID="btnReset" runat="server" Text="Reset"  OnClick="btnReset_Click" CssClass="btn" />
                        </td>
                    </tr>
                    <tr style="height:15px;">
                        <td colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:left; vertical-align:middle">
                            <asp:Label ID="lblErrMsg" runat="server" 
                                 ForeColor="Blue" ></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

