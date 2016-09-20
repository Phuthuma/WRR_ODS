<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Online_Driving_School_MS.Account.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
    .auto-style3 {
        text-align: right;
        height: 25px;
    }
    .auto-style4 {
        height: 25px;
    }
        .auto-style5 {
            width: 233px;
        }
        .auto-style6 {
            height: 20px;
            width: 233px;
        }
        .auto-style7 {
            height: 25px;
            width: 233px;
        }
        .auto-style8 {
            text-align: right;
            height: 22px;
        }
        .auto-style9 {
            width: 233px;
            height: 22px;
        }
        .auto-style10 {
            height: 22px;
        }
        .auto-style11 {
            text-align: right;
            height: 50px;
        }
        .auto-style12 {
            height: 50px;
            width: 233px;
        }
        .auto-style13 {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <table class="auto-style1">
        <tr>
            <td>Name</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style6"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>NN</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">&nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" Text="Registration"></asp:Label>
            </td>
            <td class="auto-style13">
            </td>
        </tr>
        <tr>
            <td class="text-right">&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="FeedMsg" runat="server" ForeColor="#009933" Text="You have successfully registered" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right">Username:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname" ErrorMessage="*Username is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Name:</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="*Name is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">Surname:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtSur" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSur" ErrorMessage="*Surname is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">Email:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Email is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Invalid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Cell:</td>
            <td class="auto-style9">
                <asp:TextBox ID="txtCell" runat="server" MaxLength="10" TextMode="Phone"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCell" ErrorMessage="*Cell is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">Password:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPass" ErrorMessage="*Password is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="text-right">Re-enter Password:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtConf" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConf" ErrorMessage="*This is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConf" ErrorMessage="*Passwords must match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btnReg" runat="server" Text="Register" Width="90px" OnClick="btnReg_Click" />
                <asp:Button ID="btnClr" runat="server" Text="Clear" Width="90px" OnClick="btnClr_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
