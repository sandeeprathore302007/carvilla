<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddCars.aspx.cs" Inherits="CarVilla_Ecommerce_Project.AddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
 
  <div class="form-group" runat ="server" style="background-color: #0066CC">
    <label for="formGroupExampleInput2">Car Name :</label>
   <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
      </div>
   
  <div class="form-group" runat ="server">
    <label for="formGroupExampleInput2">Car Price :</label>
    <asp:TextBox ID="TextBox2" runat="server" class="form-control" ></asp:TextBox>
  </div>

   <div class="form-group" runat="server">
    <label for="formGroupExampleInput">Car  Model: </label>
    <asp:TextBox ID="TextBox3" runat="server" class="form-control" ></asp:TextBox>
  </div>
  <div class="form-group" runat ="server">
    <label for="formGroupExampleInput2">Car Category :</label>
     <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" >
        <asp:ListItem>Chevrolet</asp:ListItem>
        <asp:ListItem>BMW</asp:ListItem>
        <asp:ListItem>Porsche</asp:ListItem>
        <asp:ListItem>Lamborghini</asp:ListItem>
        <asp:ListItem>Audi</asp:ListItem>
    </asp:DropDownList>
  </div>

  <div class="form-group" runat="server">
    <label for="formGroupExampleInput">Upload the Image</label>
      <asp:FileUpload ID="FileUpload1" runat="server"  class="form-control"/>
  </div>

        <asp:Button ID="Button2" runat="server" class="form-control btn btn-info" Text="Save" OnClick="Button2_Click"   />

 
     
    


</asp:Content>
