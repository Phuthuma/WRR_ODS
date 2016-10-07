<%@ Page Title="" Language="C#" MasterPageFile="~/HomeUser.Master" AutoEventWireup="true" CodeBehind="ProEdit.aspx.cs" Inherits="Online_Driving_School_MS.User.ProEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 309px
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="False" Text="Welcome"></asp:Label>
                <asp:Label ID="lblHead" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" Width="300px">
                    <EditItemTemplate>
                        Uname:<br />
                        <asp:TextBox ID="UnameTextBox" runat="server" Text='<%# Bind("Uname") %>' ReadOnly="True" />
                        <br />
                        Name:<br />
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        Surname:<br />
                        <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                        <br />
                        Email:<br />
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        <br />
                        Cell:<br />
                        <asp:TextBox ID="CellTextBox" runat="server" Text='<%# Bind("Cell") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Uname:
                        <asp:TextBox ID="UnameTextBox" runat="server" Text='<%# Bind("Uname") %>' />
                        <br />
                        Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        Surname:
                        <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                        <br />
                        Email:
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        <br />
                        Cell:
                        <asp:TextBox ID="CellTextBox" runat="server" Text='<%# Bind("Cell") %>' />
                        <br />
                        Pic:
                        <asp:TextBox ID="PicTextBox" runat="server" Text='<%# Bind("Pic") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" ImageUrl='<%# Bind("Pic") %>' />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="UserName:" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <asp:Label ID="UnameLabel" runat="server" Text='<%# Bind("Uname") %>' Font-Bold="True" Font-Size="Larger" />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Name:" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' Font-Bold="True" Font-Size="Larger" />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Surname:" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <asp:Label ID="SurnameLabel" runat="server" Text='<%# Bind("Surname") %>' Font-Bold="True" Font-Size="Larger" />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Email:" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' Font-Bold="True" Font-Size="Larger"/>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Cell:" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <asp:Label ID="CellLabel" runat="server" Text='<%# Bind("Cell") %>' Font-Bold="True" Font-Size="Larger" />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MC04ConnectionString %>" SelectCommand="SELECT Uname, Name, Surname, Email, Cell, Pic FROM STUDENT WHERE (Uname LIKE @Uname + N'%')" UpdateCommand="UPDATE STUDENT SET Uname = @Uname, Name = @Name, Surname = @Surname, Email = @Email, Cell = @Cell, Pic = @Pic WHERE (Uname LIKE @Uname + N'%')">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Uname" Name="Uname" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Uname" />
                        <asp:Parameter Name="Name" />
                        <asp:Parameter Name="Surname" />
                        <asp:Parameter Name="Email" />
                        <asp:Parameter Name="Cell" />
                        <asp:Parameter Name="Pic" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <asp:LinkButton ID="linkUploadLink" runat="server" OnClick="linkUploadLink_Click">Upload Pic</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
