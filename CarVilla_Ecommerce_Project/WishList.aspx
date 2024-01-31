<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="WishList.aspx.cs" Inherits="CarVilla_Ecommerce_Project.WishList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="Checkout Other Cars" OnClick="Button2_Click" />


    <asp:Button ID="Button3" runat="server" class="btn btn-info" Text="Book" OnClick="Button3_Click" />

    ;&nbsp<br />
    
&nbsp;


</asp:Content>
