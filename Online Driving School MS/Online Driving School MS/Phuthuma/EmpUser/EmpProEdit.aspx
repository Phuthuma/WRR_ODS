<%@ Page Title="" Language="C#" MasterPageFile="~/HomeAdmin.Master" AutoEventWireup="true" CodeBehind="EmpProEdit.aspx.cs" Inherits="Online_Driving_School_MS.Phuthuma.EmpUser.EmpProEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 309px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="title" runat="server">
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
                <br />
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2" OnPageIndexChanging="FormView1_PageIndexChanging1">
                    <EditItemTemplate>
                        Uname:
                        <br />
                        <asp:TextBox ID="UnameTextBox" runat="server" ReadOnly="True" Text='<%# Bind("Uname") %>' />
                        <br />
                        Surname:
                        <br />
                        <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                        <br />
                        Name:
                        <br />
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        JobTitle:
                        <br />
                        <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
                        <br />
                        Cell:
                        <br />
                        <asp:TextBox ID="CellTextBox" runat="server" Text='<%# Bind("Cell") %>' />
                        <br />
                        Email:
                        <br />
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        <br />
                        Pic:
                        <br />
                        <asp:TextBox ID="PicTextBox" runat="server" Text='<%# Bind("Pic") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Upload Pic</asp:LinkButton>
                        <br />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Cell:
                        <asp:TextBox ID="CellTextBox" runat="server" Text='<%# Bind("Cell") %>' />
                        <br />
                        Email:
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        <br />
                        Surname:
                        <asp:TextBox ID="SurnameTextBox" runat="server" Text='<%# Bind("Surname") %>' />
                        <br />
                        Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        Uname:
                        <asp:TextBox ID="UnameTextBox" runat="server" Text='<%# Bind("Uname") %>' />
                        <br />
                        Pic:
                        <asp:TextBox ID="PicTextBox" runat="server" Text='<%# Bind("Pic") %>' />
                        <br />
                        JobTitle:
                        <asp:TextBox ID="JobTitleTextBox" runat="server" Text='<%# Bind("JobTitle") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <br />
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" ImageUrl='<%# Bind("Pic") %>'/>
                        <br />
                        <br />
                        <br />
                        
                        <asp:Label ID="Label1" runat="server" Text="Uname:" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <asp:Label ID="UnameLabel" runat="server" Font-Bold="true" Font-Size="Larger" Text='<%# Bind("Uname") %>' />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Name:" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <asp:Label ID="NameLabel" runat="server" Font-Bold="true" Font-Size="Larger"  Text='<%# Bind("Name") %>' />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Surname:" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <asp:Label ID="SurnameLabel" runat="server" Font-Bold="true" Font-Size="Larger" Text='<%# Bind("Surname") %>' />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Job Title:" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <asp:Label ID="JobTitleLabel" runat="server" Font-Bold="true" Font-Size="Larger" Text='<%# Bind("JobTitle") %>' />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Cell:" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <asp:Label ID="CellLabel" runat="server" Font-Bold="true" Font-Size="Larger" Text='<%# Bind("Cell") %>' />
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Email:" Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <asp:Label ID="EmailLabel" runat="server" Font-Bold="true" Font-Size="Larger" Text='<%# Bind("Email") %>' />
                        <br />
                        <asp:Label ID="PicLabel" runat="server" Text='<%# Bind("Pic") %>' Visible="false" />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    </ItemTemplate>
                </asp:FormView>
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MC04ConnectionString %>" SelectCommand="SELECT Cell, Email, Surname, Name, Uname, Pic, JobTitle FROM EMPLOYEE WHERE (Uname LIKE @Uname + '%')" UpdateCommand="UPDATE EMPLOYEE SET Uname = @Uname, Name = @Name, Surname = @Surname, JobTitle = @JobTitle, Email = @Email, Cell = @Cell, Pic = @Pic WHERE (Uname LIKE @Uname + '%')">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Uname" Name="Uname" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Uname" />
                        <asp:Parameter Name="Name" />
                        <asp:Parameter Name="Surname" />
                        <asp:Parameter Name="JobTitle" />
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
                &nbsp;</td>
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
