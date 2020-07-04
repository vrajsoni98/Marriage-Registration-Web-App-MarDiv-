<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Webforms/Afterlogin/AdminALMasterPage.master" AutoEventWireup="true" CodeFile="AdminALAdminDetails.aspx.cs" Inherits="admin_Webforms_Afterlogin_AdminALAdminDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table  style="width:100%;">
        <tr>
            <td>
                <table style="width:100%;" class="text">
                    <tr>
                        <td style="text-align:right;" colspan="2">
                            Admin Details
                        </td>
                    </tr>
                    <tr style="height:10px;">
                        <td colspan="2" style="background-color:Blue;">                                            
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center; vertical-align:middle;" colspan="2">
                                                                                        
                                <asp:GridView ID="grdAdmin" runat="server" AllowPaging="true" PageSize="3" AutoGenerateColumns="false" AllowSorting="true" GridLines="Vertical" 
                                   Width="100%" DataKeyNames="AdminId" DataSourceID="SqlDataSource1">            <%-- to display all colums from database AutoGenerateColumns="true"--%>
                                                 <%--must specify primary key--%>                   
                               
                                    <Columns>
                                        <asp:CommandField ButtonType="Button" ShowDeleteButton="true" ShowEditButton="true"  ControlStyle-ForeColor="Black" />                              
                                        <asp:BoundField DataField="AdminId" HeaderText="Admin Id" Visible="false" />
                                        <asp:BoundField DataField="FirstName"  HeaderStyle-HorizontalAlign="Center" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center"  ItemStyle-VerticalAlign="Middle" HeaderText="First Name" SortExpression="FirstName" />
                                        <asp:BoundField DataField="LastName"  HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderText="Last Name" SortExpression="LastName" />
                                        <asp:BoundField DataField="Email"  HeaderStyle-HorizontalAlign="Left" HeaderStyle-VerticalAlign="Middle" HeaderText="Email-Id" SortExpression="Email" />
                                        <asp:BoundField DataField="UName" HeaderText="User Name" SortExpression="UName"  Visible="false" />
                                        <asp:BoundField DataField="Passwd" HeaderText="Password" SortExpression="Passwd" Visible="false" />
                                    </Columns>
                                    <%--rowstyle will give backcolor and fore color to row--%>
                                    <RowStyle BackColor="Green" ForeColor="White" />
                                    <%--It works on even number of records only.--%>
                                     <AlternatingRowStyle BackColor="Yellow" ForeColor="Black" />
                                     <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="Yellow" />
                                    
                                   
                                    <PagerStyle BackColor="Gray" ForeColor="White" HorizontalAlign="Center" />
                                   
                                </asp:GridView>
                           
                        </td>
                    </tr>
                     <tr style="height:10px;">
                        <td style="background-color:Blue;">                                            
                        </td>
                    </tr>                   
                </table>
            </td>
        </tr>
        
    </table>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString= "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|Datadirectory|mardiv.mdf;
        Integrated Security=True"
     ProviderName="System.Data.SqlClient"                                  
     DeleteCommand="Delete From [AdminMaster] Where [AdminId] = @AdminId"      
     SelectCommand = "Select * from [AdminMaster]" 
     UpdateCommand="Update [AdminMaster] Set [FirstName]=@FirstName, [LastName]=@LastName, [Email]=@Email Where [AdminId]=@AdminId">
        <DeleteParameters>
            <asp:Parameter Name="AdminId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="AdminId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

