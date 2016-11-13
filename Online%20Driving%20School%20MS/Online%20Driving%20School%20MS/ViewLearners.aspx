<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="ViewLearners.aspx.cs" Inherits="Online_Driving_School_MS.MaintainEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
   
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="StdNo" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            <tr style="background-color: white;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="StdNoLabel1" runat="server" Text='<%# Eval("StdNo") %>' width="100px"/>
                </td>
                <td>
                    <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' width="100px"/>
                </td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' width="100px"/>
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
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' width="100px"/>
                </td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' width="100px"/>
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
                <td style="word-break:break-all;word-wrap:break-word;">
                    <asp:Label ID="StdNoLabel" runat="server" Text='<%# Eval("StdNo") %>' width="200px"/>
                </td>
                <td style="word-break:break-all;word-wrap:break-word;">
                    <asp:Label ID="SurnameLabel" runat="server" Text='<%# Eval("Surname") %>' width="200px"/>
                </td>
                <td style="word-break:break-all;word-wrap:break-word;">
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' width="200px"/>
                </td>
                <td style="word-break:break-all;word-wrap:break-word;">
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' width="200px"/>
                </td>
                <td style="word-break:break-all;word-wrap:break-word;">
                    <asp:Label ID="CellLabel" runat="server" Text='<%# Eval("Cell") %>' width="200px"/>
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate><div style="position:absolute; left: 225px; top: 100px;">
             <h2> Learners </h2>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: grey;color: #333333;">
                                <th runat="server">StdNo</th>
                                <th runat="server">Surname</th>
                                <th runat="server">Name</th>
                                <th runat="server">Email</th>
                                <th runat="server">Cell</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: lightgrey;width: 50px;font-family: Verdana, Arial, Helvetica, sans-serif;color: black">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"/>
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                <td>
                    <asp:Label ID="StdNoLabel" runat="server" Text='<%# Eval("StdNo") %>' width="100px"/>
                </td>
                <td>
                    <asp:Label ID="SurnameLabel" runat="server" Text='<%# Eval("Surname") %>' width="100px"/>
                </td>
                <td>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' width="100px"/>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MC04ConnectionString %>" SelectCommand="SELECT [StdNo], [Surname], [Name], [Email], [Cell] FROM [STUDENT]"></asp:SqlDataSource>  
</asp:Content>