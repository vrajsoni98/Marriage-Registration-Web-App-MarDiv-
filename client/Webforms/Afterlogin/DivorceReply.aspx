<%@ Page Title="" Language="C#" MasterPageFile="~/client/Webforms/Afterlogin/ClientALMasterPage.master" AutoEventWireup="true" CodeFile="DivorceReply.aspx.cs" Inherits="client_Webforms_Afterlogin_DivorceReply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:80%; background-color:#ffff99;" class="text">
        <tr>
            <td style="text-align:center;">
                <table style="width:100%;">
                <tr  style="line-height:45px;">
            <td  style="text-align:right; vertical-align:middle;color:Maroon; font-size:40px;" colspan="4">
                Divorce Registration Confirm</td>
        </tr>      
                    <tr style="height:25px">
                        <td colspan="4" style="width: 32px"></td>
                    </tr>
                    <tr>
                        <td style="width: 32px">

                        </td>
                        <td style="width: 173px; text-align:left; vertical-align:middle;">
                            Registration No
                        </td>
                        <td style="text-align:left; vertical-align:middle;">
                            :
                        </td>
                        <td  style="text-align:left; vertical-align:middle;">
                            <asp:Label ID="lblRegNo" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 32px">

                        </td>

                        <td  style="text-align:left; vertical-align:middle;">
                            Place
                        </td>
                        <td  style="text-align:left; vertical-align:middle;">
                            :
                        </td>
                        <td  style="text-align:left; vertical-align:middle;">
                            <asp:Label ID="lblPlace" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:32px;">

                        </td>

                        <td  style="text-align:left; vertical-align:middle;">
                            Room No
                        </td>
                        <td  style="text-align:left; vertical-align:middle;">
                            :
                        </td>
                        <td  style="text-align:left; vertical-align:middle;">
                            <asp:Label ID="lblRoomnm" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 32px;">

                        </td>

                        <td  style="text-align:left; vertical-align:middle;">
                            Date
                        </td>
                        <td  style="text-align:left; vertical-align:middle;">
                            :
                        </td>
                        <td  style="text-align:left; vertical-align:middle;">
                            <asp:Label ID="lblDate" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 32px">

                        </td>

                        <td  style="text-align:left; vertical-align:middle;">
                            Time
                        </td>
                        <td  style="text-align:left; vertical-align:middle;">
                            :
                        </td>
                        <td  style="text-align:left; vertical-align:middle;">
                            <asp:Label ID="lblTime" runat="server"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td style="width: 32px;">

                        </td>

                        <td  style="text-align:left; vertical-align:middle;">
                            You have reg. under
                        </td>
                        <td  style="text-align:left; vertical-align:middle;">
                            :
                        </td>
                        <td  style="text-align:left; vertical-align:middle;">
                            <asp:Label ID="lblRegUnder" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr style="height:25px;">
                        <td style="width: 32px"></td>
                    </tr>
                    <tr>
                        <td colspan="4"  style="text-align:left; vertical-align:middle;">
                            Thanks for Registration...
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

