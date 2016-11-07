<%@ Page Title="" Language="C#" MasterPageFile="~/HomeAdmin.Master" AutoEventWireup="true" CodeBehind="HomeAdmin.aspx.cs" Inherits="Online_Driving_School_MS.HomeTeach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <ul class="nav navbar-nav navbar-right"> 
        <li class="active"><asp:LinkButton ID="lbHome" runat="server" PostBackUrl="~/Home.aspx">Home</asp:LinkButton></li>
        <li><asp:LinkButton ID="lbEmps" runat="server">Employees</asp:LinkButton></li>
        <li><asp:LinkButton ID="lbNots" runat="server" >Notifications</asp:LinkButton></li>
        <li><asp:LinkButton ID="lbLogOut" runat="server">LogOut</asp:LinkButton></li>
   </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
</asp:Content>

