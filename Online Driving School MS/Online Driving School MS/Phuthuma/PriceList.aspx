<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="PriceList.aspx.cs" Inherits="Online_Driving_School_MS.Phuthuma.PriceList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 533px;
        }

        .algnList{
            height:300px;
        }

        h1 {
            color: blue;
            font-size: larger;
            font-weight:bold;
        }

        h2 {
            font-size: large;
            font-weight: bold;
        }

        h3{
            font-weight:bold;
            font-size:x-large;
        }

        .auto-style3 {
            width: 477px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <h3><asp:Label ID="Label1" runat="server">Rates & Prices</asp:Label></h3>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="2">

                    <ItemTemplate>
                
                         <td runat="server">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Image ID="Image1" runat="server" Width="150" Height="150"  ImageUrl='<%#Eval("Pic")%>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <h1><asp:Label ID="HeadingLabel" runat="server" Text='<%# Eval("Heading") %>' /></h1>
                                        <h2><asp:Label ID="PriceLabel"  runat="server" />R <%# Eval("Price") %> </h2>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            </p>
                    </td>

                    </ItemTemplate>

                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                        </tr>
                    </GroupTemplate>

                    <LayoutTemplate>
                        <table style="width:100%;">
                            <tbody>
                                <tr>
                                    <td>
                                        <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                            <tr id="groupPlaceholder"></tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr></tr>
                            </tbody>
                        </table>
                    </LayoutTemplate>

                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MC04ConnectionString %>" SelectCommand="SELECT [Heading], [Price], [Pic] FROM [PRICE]"></asp:SqlDataSource>
                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
