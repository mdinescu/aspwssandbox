<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="aspwssandbox.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentArea" runat="server">
        <asp:Button ID="btnPressMe" Text="Press Me" runat="server" OnClick="btnPressMe_Click" />
        <asp:TextBox ID="txtTestTextbox" runat="server" CssClass="redborder" />
</asp:Content>
