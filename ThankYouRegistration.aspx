<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultSite.Master" AutoEventWireup="true" CodeBehind="ThankYouRegistration.aspx.cs" Inherits="aspwssandbox.ThankYouRegistration" %>
<%@ PreviousPageType VirtualPath="~/UserRegistration.aspx"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentArea" runat="server">
    <span>Thank you for registering!</span>
    <asp:Label ID="full_user_name" runat="server"></asp:Label>
</asp:Content>
