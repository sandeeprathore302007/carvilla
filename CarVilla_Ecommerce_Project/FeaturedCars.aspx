<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="FeaturedCars.aspx.cs" Inherits="CarVilla_Ecommerce_Project.FeaturedCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	 
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">

        <ItemTemplate>

            <div class="card" style="width: 18rem;">
  <img class="card-img-top" src='<%#Eval("carImage")%>'  alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">  <%#Eval("carName") %></h5>
   </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item"> <%#Eval("carModel") %> </li>
    <li class="list-group-item"><%#Eval("carPrice") %> </li>
    <li class="list-group-item"><%#Eval("carCategory") %></li>
  </ul>
  <div class="card-body">
      <asp:Button ID="Button1" runat="server" CommandName="Add" class="btn btn-info"  CommandArgument='<%#Eval("carId") %>' Text="Add to WishList" />
     
  </div>
</div>

        </ItemTemplate>
    </asp:DataList>
 
 
     
</asp:Content>
