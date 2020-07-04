<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Webforms/Afterlogin/AdminALMasterPage.master" AutoEventWireup="true" CodeFile="AdminALClientDetails.aspx.cs" Inherits="admin_Webforms_Afterlogin_AdminALClientDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <asp:Repeater id="repeater1" runat="server" DataSourceID="SqlDataSource1">
    <HeaderTemplate>
    <table class="text">
        <tr>
            <td style="width:150px;">
            </td>                   
            <td style="text-align:left; vertical-align:middle; width:150px;color:Maroon;">
                First Name
            </td>
            <td style="text-align:left; vertical-align:middle; width:150px;color:Maroon;">
                Last Name
            </td>
        </tr>
    </table>       
    </HeaderTemplate>
    
    <ItemTemplate>
    <table class="text">
    <tr>
        <td style="width:150px;">
        </td>                   
        <td style="text-align:left; vertical-align:middle; width:150px;color:Green;">
            <%--The following lines will be executed as many times as the number of rows in the Table.--%>
    	    <%# DataBinder.Eval(Container.DataItem, "FirstName")%> &nbsp;&nbsp;
                
        </td>
        <td style="text-align:left; vertical-align:middle; width:150px;color:Green;">
            <%# DataBinder.Eval(Container.DataItem, "LastName")%> <br />
        </td>
    </tr>
    </table>    			
    </ItemTemplate>
</asp:Repeater>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|Datadirectory|mardiv.mdf;
        Integrated Security=True" SelectCommand="select [FirstName],[LastName] from ClientMaster"></asp:SqlDataSource>

</asp:Content>

