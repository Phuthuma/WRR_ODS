<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="VieweStdProAdmin.aspx.cs" Inherits="Online_Driving_School_MS.Account.VieweStdProAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 597px
        }
        .auto-style3 {
            height: 11px;
        }
        .auto-style4 {
            width: 597px;
            height: 11px;
        }
        .auto-style5 {
            height: 40px;
        }
        .auto-style6 {
            width: 597px;
            height: 40px;
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
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
                 &nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6">
                 <asp:Label ID="lblVSPA" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" Text="Students"></asp:Label>
            </td>
            <td class="auto-style5"></td>
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
                 <p>
                     <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="StdNo" DataSourceID="SqlDataSource1" GridLines="Vertical" ShowFooter="True" Width="966px">
                         <AlternatingRowStyle BackColor="#DCDCDC" />
                         <Columns>
                             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                             <asp:TemplateField HeaderText="StdNo" InsertVisible="False" SortExpression="StdNo">
                                 <EditItemTemplate>
                                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("StdNo") %>'></asp:Label>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("StdNo") %>'></asp:Label>
                                 </ItemTemplate>
                                 <FooterTemplate>
                                     <asp:LinkButton ValidationGroup="insert" OnClick="lbInsert_Click" ID="lbInsert" runat="server">Insert</asp:LinkButton>
                                 </FooterTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Uname" SortExpression="Uname">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Uname") %>'></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="rfvUname" runat="server" ErrorMessage="UserName is a required field" Text="*"
                                         ControlToValidate="Textbox1" ForeColor="Red">
                                     </asp:RequiredFieldValidator>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("Uname") %>'></asp:Label>
                                 </ItemTemplate>
                                 <FooterTemplate>
                                     <asp:TextBox ID="txtInstUname" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ValidationGroup="insert" ID="rfvInstUname" runat="server" ErrorMessage="UserName is a required field" Text="*"
                                         ControlToValidate="txtInstUname" ForeColor="Red">
                                     </asp:RequiredFieldValidator>
                                 </FooterTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is a required field" Text="*"
                                         ControlToValidate="Textbox2" ForeColor="Red">
                                     </asp:RequiredFieldValidator>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label3" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                 </ItemTemplate>
                                  <FooterTemplate>
                                     <asp:TextBox ID="txtInstName" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ValidationGroup="insert" ID="rfvName" runat="server" ErrorMessage="Name is a required field" Text="*"
                                         ControlToValidate="txtInstName" ForeColor="Red">
                                     </asp:RequiredFieldValidator>
                                 </FooterTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Surname" SortExpression="Surname">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Surname") %>'></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="rfvSur" runat="server" ErrorMessage="Surname is a required field" Text="*"
                                         ControlToValidate="Textbox3" ForeColor="Red">
                                     </asp:RequiredFieldValidator>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label4" runat="server" Text='<%# Bind("Surname") %>'></asp:Label>
                                 </ItemTemplate>
                                  <FooterTemplate>
                                     <asp:TextBox ID="txtInstSur" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ValidationGroup="insert" ID="rfvInstSur" runat="server" ErrorMessage="Surname is a required field" Text="*"
                                         ControlToValidate="txtInstSur" ForeColor="Red">
                                     </asp:RequiredFieldValidator>
                                 </FooterTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                     <asp:RequiredFieldValidator ValidationGroup="insert" ID="rfvEmail" runat="server" ErrorMessage="Email is a required field" Text="*"
                                         ControlToValidate="Textbox4" ForeColor="Red">
                                     </asp:RequiredFieldValidator>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                 </ItemTemplate>
                                  <FooterTemplate>
                                     <asp:TextBox ID="txtInstEmail" runat="server"></asp:TextBox>
                                      <asp:RequiredFieldValidator ValidationGroup="insert" ID="rfvInstEmail" runat="server" ErrorMessage="Email is a required field" Text="*"
                                         ControlToValidate="txtInstEmail" ForeColor="Red">
                                     </asp:RequiredFieldValidator>
                                 </FooterTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Cell" SortExpression="Cell">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Cell") %>'></asp:TextBox>
                                     <asp:RequiredFieldValidator ValidationGroup="insert" ID="rfvCell" runat="server" ErrorMessage="Cell is a required field" Text="*"
                                         ControlToValidate="Textbox5" ForeColor="Red">
                                     </asp:RequiredFieldValidator>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label6" runat="server" Text='<%# Bind("Cell") %>'></asp:Label>
                                 </ItemTemplate>
                                  <FooterTemplate>
                                     <asp:TextBox ID="txtInstCell" runat="server"></asp:TextBox>
                                      <asp:RequiredFieldValidator ValidationGroup="insert" ID="rfvInstCell" runat="server" ErrorMessage="Cell is a required field" Text="*"
                                         ControlToValidate="txtInstCell" ForeColor="Red">
                                     </asp:RequiredFieldValidator>
                                 </FooterTemplate>
                             </asp:TemplateField>

                             <asp:TemplateField HeaderText="Password" SortExpression="Password">
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                                     <asp:RequiredFieldValidator ValidationGroup="insert" ID="rfvPass" runat="server" ErrorMessage="Password is a required field" Text="*"
                                         ControlToValidate="Textbox6" ForeColor="Red">
                                     </asp:RequiredFieldValidator>
                                 </EditItemTemplate>
                                 <ItemTemplate>
                                     <asp:Label ID="Label7" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                                 </ItemTemplate>
                                  <FooterTemplate>
                                     <asp:TextBox ID="txtInstPass" runat="server"></asp:TextBox>
                                      <asp:RequiredFieldValidator ValidationGroup="insert" ID="rfvInstPass" runat="server" ErrorMessage="Password is a required field" Text="*"
                                         ControlToValidate="txtInstPass" ForeColor="Red">
                                     </asp:RequiredFieldValidator>
                                 </FooterTemplate>
                             </asp:TemplateField>

                         </Columns>
                         <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                         <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                         <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#F1F1F1" />
                         <SortedAscendingHeaderStyle BackColor="#0000A9" />
                         <SortedDescendingCellStyle BackColor="#CAC9C9" />
                         <SortedDescendingHeaderStyle BackColor="#000065" />
                     </asp:GridView>
                     <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="insert" ForeColor="Red" runat="server" />
                     <asp:ValidationSummary ID="ValidationSummary2"  ForeColor="Red" runat="server" />
                     <br />
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MC04ConnectionString %>" DeleteCommand="DELETE FROM [STUDENT] WHERE [StdNo] = @StdNo" InsertCommand="INSERT INTO [STUDENT] ([Uname], [Name], [Surname], [Email], [Cell], [Password]) VALUES (@Uname, @Name, @Surname, @Email, @Cell, @Password)" SelectCommand="SELECT * FROM [STUDENT]" UpdateCommand="UPDATE [STUDENT] SET [Uname] = @Uname, [Name] = @Name, [Surname] = @Surname, [Email] = @Email, [Cell] = @Cell, [Password] = @Password WHERE [StdNo] = @StdNo">
                         <DeleteParameters>
                             <asp:Parameter Name="StdNo" Type="Int32" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="Uname" Type="String" />
                             <asp:Parameter Name="Name" Type="String" />
                             <asp:Parameter Name="Surname" Type="String" />
                             <asp:Parameter Name="Email" Type="String" />
                             <asp:Parameter Name="Cell" Type="String" />
                             <asp:Parameter Name="Password" Type="String" />
                         </InsertParameters>
                         <UpdateParameters>
                             <asp:Parameter Name="Uname" Type="String" />
                             <asp:Parameter Name="Name" Type="String" />
                             <asp:Parameter Name="Surname" Type="String" />
                             <asp:Parameter Name="Email" Type="String" />
                             <asp:Parameter Name="Cell" Type="String" />
                             <asp:Parameter Name="Password" Type="String" />
                             <asp:Parameter Name="StdNo" Type="Int32" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
    </p>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
   
</asp:Content>
