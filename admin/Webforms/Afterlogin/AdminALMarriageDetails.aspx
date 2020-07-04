<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Webforms/Afterlogin/AdminALMasterPage.master" AutoEventWireup="true" CodeFile="AdminALMarriageDetails.aspx.cs" Inherits="admin_Webforms_Afterlogin_AdminALMarriageDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <asp:DataList ID="MarriageDataList" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemStyle BackColor="White" />
        
        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <ItemTemplate>
            mFirst Name:
            <asp:Label ID="lblmFName" runat="server" Text='<%# Eval("mFName") %>' />
            <br />
            mLast Name:
            <asp:Label ID="lblmLName" runat="server" 
                Text='<%# Eval("mLName") %>' />
            <br />
            fFirst Name:
            <asp:Label ID="lblfFName" runat="server" Text='<%# Eval("fFName") %>' />           
            <br />           
            fLast Name:
            <asp:Label ID="lblfLName" runat="server" Text='<%# Eval("fLName") %>' />           
            <br />           
<br />
        </ItemTemplate>    
    </asp:DataList>
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
		ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|Datadirectory|mardiv.mdf;Integrated Security=True"
		SelectCommand="select [mFName],[mLName],[fFName],[fLName] from MarReg" />

</asp:Content>

