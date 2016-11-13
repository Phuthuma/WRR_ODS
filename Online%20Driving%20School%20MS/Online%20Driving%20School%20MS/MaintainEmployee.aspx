<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="MaintainEmployee.aspx.cs" Inherits="Online_Driving_School_MS.MaintainEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    
    <div class="table-responsive">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MC04ConnectionString %>" DeleteCommand="DELETE FROM [EMPLOYEE] WHERE [EmpNo] = @original_EmpNo" InsertCommand="INSERT INTO [EMPLOYEE] ([Name], [Surname], [JobTitle], [Email], [Cell]) VALUES (@Name, @Surname, @JobTitle, @Email, @Cell)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [EmpNo], [Name], [Surname], [JobTitle], [Email], [Cell] FROM [EMPLOYEE]" UpdateCommand="UPDATE [EMPLOYEE] SET [Name] = @Name, [Surname] = @Surname, [JobTitle] = @JobTitle, [Email] = @Email, [Cell] = @Cell WHERE [EmpNo] = @original_EmpNo">
            <DeleteParameters>
                <asp:Parameter Name="original_EmpNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="JobTitle" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Cell" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="JobTitle" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Cell" Type="String" />
                <asp:Parameter Name="original_EmpNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="EmpNo" DataSourceID="SqlDataSource1">
                 
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" width="60px"/>
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" width="60px"/>
                        </td>
                        <td>
                            <asp:Label ID="EmpNoLabel1" runat="server" Text='<%# Eval("EmpNo") %>' width="100px"/>
                        </td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' width="100px"/>
                        </td>
                        <td>
                            <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' width="100px"/>
                        </td>
                        <td>
                            <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' width="100px"/>
                        </td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' width="100px"/>
                        </td>
                        <td>
                            <asp:TextBox ID="CellTextBox" runat="server" Text='<%# Bind("Cell") %>' width="100px"/>
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                 
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" width="60px"/>
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" width="60px"/>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' width="100px"/>
                        </td>
                        <td>
                            <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' width="100px"/>
                        </td>
                        <td>
                            <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' width="100px"/>
                        </td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' width="100px"/>
                        </td>
                        <td>
                            <asp:TextBox ID="CellTextBox" runat="server" Text='<%# Bind("Cell") %>' width="100px"/>
                        </td>
                    </tr>
                </InsertItemTemplate>
                 
                <ItemTemplate>
                    <tr style="background-color: white;color: black;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" width="60px"/>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" width="60px"/>
                        </td>
                        <td style="word-break:break-all;word-wrap:break-word;">
                            <asp:Label ID="EmpNoLabel" runat="server" Text='<%# Eval("EmpNo") %>' width="150px"/>
                        </td>
                        <td style="word-break:break-all;word-wrap:break-word;">
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' width="150px"/>
                        </td>
                        <td style="word-break:break-all;word-wrap:break-word;">
                            <asp:Label ID="SurnameLabel" runat="server" Text='<%# Eval("Surname") %>' width="150px"/>
                        </td>
                        <td style="word-break:break-all;word-wrap:break-word;">
                            <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' width="150px"/>
                        </td>
                        <td style="word-break:break-all;word-wrap:break-word;">
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' width="150px"/>
                        </td>
                        <td style="word-break:break-all;word-wrap:break-word;">
                            <asp:Label ID="CellLabel" runat="server" Text='<%# Eval("Cell") %>' width="150px"/>
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate><div style="position:absolute; left: 225px; top: 100px;">
                    <h2> Maintain Employee </h2>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: grey;color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">EmpNo</th>
                                        <th runat="server">Name</th>
                                        <th runat="server">Surname</th>
                                        <th runat="server">JobTitle</th>
                                        <th runat="server">Email</th>
                                        <th runat="server">Cell</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: lightgrey;font-family: Verdana, Arial, Helvetica, sans-serif;color: black">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="EmpNoLabel" runat="server" Text='<%# Eval("EmpNo") %>' width="100px"/>
                        </td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>'/>
                        </td>
                        <td>
                            <asp:Label ID="SurnameLabel" runat="server" Text='<%# Eval("Surname") %>' width="100px"/>
                        </td>
                        <td>
                            <asp:Label ID="JobTitleLabel" runat="server" Text='<%# Eval("JobTitle") %>' width="100px"/>
                        </td>
                        <td>
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' width="100px"/>
                        </td>
                        <td>
                            <asp:Label ID="CellLabel" runat="server" Text='<%# Eval("Cell") %>' width="100px"/>
                        </td>
                    </tr>
                </SelectedItemTemplate>
    </asp:ListView>
</asp:Content>
