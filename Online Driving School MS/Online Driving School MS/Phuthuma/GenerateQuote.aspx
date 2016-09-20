<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="GenerateQuote.aspx.cs" Inherits="Online_Driving_School_MS.Account.GenerateQuote" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 511px;
        }
        .auto-style3 {
            height: 52px;
        }
        .auto-style4 {
            width: 511px;
            height: 52px;
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
            <td class="auto-style2"> 
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"> 
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Generate Quote"></asp:Label>
            </td>
            <td class="auto-style3">
                </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2"> 
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2"> 
                <fieldset style ="width: 500px">
                    <legend><b>License Code</b></legend>
                    <asp:RadioButton ID="rd8" Text="Code 08" runat="server" GroupName="g1" /><br />
                    <asp:RadioButton ID="rd10" Text="Code 10" runat="server" GroupName="g1" /><br />
                    <asp:RadioButton ID="rd14" Text="Code 14" runat="server" GroupName="g1" />
                </fieldset>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <fieldset style="width:500px">
                    <legend><b>Miscellaneous Details</b></legend>
                    <asp:CheckBox ID="cbxLearn" Text="Learner's License" runat="server" /><br />
                    <asp:CheckBox ID="cbxVeh" Text="Hire Vehicle" runat="server" />
                </fieldset>
            </td>
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
                <fieldset style="width:500px">
                    <legend></legend>
                    <b><asp:Label ID="lblNol" runat="server" Text="Number of Lessons:"></asp:Label></b>
                    <asp:TextBox ID="txtNol" runat="server" TextMode="Number" Width="40px"></asp:TextBox>
                    <b><asp:Label ID="lblTot" runat="server" Text="Total:"></asp:Label>
                    <asp:Label ID="TotQuote" runat="server" Font-Bold="True" Text="Label" Visible="False"></asp:Label>
                    </b>
                </fieldset>
                   
            </td>
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
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" Width="63px" OnClick="btnClear_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
       
    </table>
  
</asp:Content>
