<%@ Page Title="" Language="C#" MasterPageFile="~/client/Webforms/Beforelogin/ClientBLMaster.master" AutoEventWireup="true" CodeFile="ClientBLHome.aspx.cs" Inherits="client_Webforms_Beforelogin_ClientBLHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%">
        <tr>
            <td style="font-family:'Arial Rounded MT'; font-size:30px; color:red; text-align:right;" class="text">
                Home Page
            </td>
        </tr>
        <tr style="background-color:Gray;" >
            <td style="text-align:left; vertical-align:middle; color:White; width:370px;" class="text">
                The Total Number of Vistors : 
            </td>
            <td class="text" style="text-align:left; vertical-align:middle;">
                <asp:Label ID="lblTotVisitors" runat="server" ForeColor="Yellow"></asp:Label>
            </td>
        </tr>
        <tr style="background-color:Gray;" >
            <td style="color:White; width:370px;text-align:left; vertical-align:middle;" class="text">
                The Total Number of Active Visitors : 
            </td>
            <td style="text-align:left; vertical-align:middle;" class="text">
                <asp:Label ID="lblTotActUsers" runat="server" ForeColor="Yellow"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

