<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Webforms/Afterlogin/AdminALMasterPage.master" AutoEventWireup="true" CodeFile="AdminALDivorceDetials.aspx.cs" Inherits="admin_Webforms_Afterlogin_AdminALDivorceDetials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                <table>
                
                    <tr>
                        <td>
                            <asp:ListView ID="DivDetailsListView" runat="server" DataKeyNames="drvId" DataSourceID="SqlDataSource1"                             
                                InsertItemPosition="LastItem">
                           
                                <AlternatingItemTemplate>
                                <table>
                                    <tr style="background-color: #FFFFFF; color: #284775;">
                                        <td style="width:100px;">
                                            <asp:Label ID="lbldivId" runat="server" Text='<%# Eval("drvId") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:Label ID="lblmFName" runat="server" Text='<%# Eval("mFName") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:Label ID="lblmLName" runat="server" Text='<%# Eval("mLName") %>' />
                                        </td>
                                        <td style="width:200px;">
                                            <asp:Label ID="lblmEmailId" runat="server" Text='<%# Eval("mEmailId") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:Label ID="lblfFName" runat="server" Text='<%# Eval("fFName") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:Label ID="lblfLName" runat="server" Text='<%# Eval("fLName") %>' />
                                        </td>
                                        <td style="width:200px;">
                                            <asp:Label ID="lblfEmailId" runat="server" Text='<%# Eval("fEmailId") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:LinkButton ID="lnkbtnEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                                        </td>
                                    </tr>
                                    </table>
                                </AlternatingItemTemplate>
                                <ItemTemplate>
                                <table>
                                    <tr style="background-color: #E0FFFF; color: #333333;">
                                        <td style="width:100px;">
                                            <asp:Label ID="lbldivId" runat="server" Text='<%# Eval("drvId") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:Label ID="lblmFName" runat="server" Text='<%# Eval("mFName") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:Label ID="lblmLName" runat="server" Text='<%# Eval("mLName") %>' />
                                        </td>
                                        <td style="width:200px;">
                                            <asp:Label ID="lblmEmailId" runat="server" Text='<%# Eval("mEmailId") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:Label ID="lblfFName" runat="server" Text='<%# Eval("fFName") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:Label ID="lblfLName" runat="server" Text='<%# Eval("fLName") %>' />
                                        </td>
                                        <td style="width:200px;">
                                            <asp:Label ID="lblfEmailId" runat="server" Text='<%# Eval("fEmailId") %>' />
                                        </td>
                                        <td style="width:100px;">
                                            <asp:LinkButton ID="lbkbtnEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                                        </td>
                                    </tr>
                                    </table>
                                </ItemTemplate>
                                <InsertItemTemplate>
                                <table>
                                    <tr>
                                        <td style="width:100px;">
                                        </td>
                                        <td>
                                       
                                            <asp:TextBox ID="txtmFName" Width="100px" runat="server" Text='<%# Bind("mFName") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtmLName" Width="100px" runat="server" Text='<%# Bind("mLName") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtmEmailId" Width="200px" runat="server" Text='<%# Bind("mEmailId") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtfFName" Width="100px" runat="server" Text='<%# Bind("fFName") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtfLName" Width="100px" runat="server" Text='<%# Bind("fLName") %>' />
                                        </td>
                                        
                                        <td>
                                            <asp:TextBox ID="txtfEmailId" Width="200px" runat="server" Text='<%# Bind("fEmailId") %>' />
                                        </td>
                                        <td>
                                            <asp:Button ID="btnInsert" runat="server" CommandName="Insert" Text="Insert" />
                                        </td>
                                    </tr>
                                    </table>
                                </InsertItemTemplate>
                                <EditItemTemplate>
                                <table>
                                    <tr style="background-color: #999999;">
                                          <td style="width:100px;">
                                            <asp:Label ID="lbldivId" runat="server" Text='<%# Eval("drvId") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtmFName" Width="100px" runat="server" Text='<%# Bind("mFName") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtmLName" Width="100px" runat="server" Text='<%# Bind("mLName") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtmEmailId" Width="200px" runat="server" Text='<%# Bind("mEmailId") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtfFName" Width="100px" runat="server" Text='<%# Bind("fFName") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtfLName" Width="100px" runat="server" Text='<%# Bind("fLName") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtfEmailId" Width="100px" runat="server" Text='<%# Bind("fEmailId") %>' />
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="lnkbtnUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
                                            <asp:LinkButton ID="lnkbtnDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                                            <asp:LinkButton ID="lnkbtnCancel" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                                        </td>
                                    </tr>
                                    </table>
                                </EditItemTemplate>
                            </asp:ListView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>


      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|Datadirectory|mardiv.mdf;Integrated Security=True"
        SelectCommand="SELECT [drvId], [mFName], [mLName], [mEmailId], [fFName], [fLName], [fEmailId] FROM [DivReg]"
        DeleteCommand="Delete from [DivReg] where [drvId] = @drvId"
        UpdateCommand="Update [DivReg] Set [mFName] = @mFName, [mLName] = @mLName, [mEmailId] = @mEMailId, [fFName] = @fFName, [fLname] = @fLName, [fEmailId] = @fEmailId where [drvId] = @drvId"
        InsertCommand="Insert into [DivReg] ([mFName],[mLName],[mEmailId],[fFName],[fLName],[fEmailId]) Values (@mFName,@mLName,@mEmailId,@fFName,@fLName,@fEmailId)"  >      
    </asp:SqlDataSource>
</asp:Content>

