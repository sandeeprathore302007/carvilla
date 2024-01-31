<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GridViewCarAdmin.aspx.cs" Inherits="CarVilla_Ecommerce_Project.GridViewCarAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="carId" DataSourceID="SqlDataSource2" PageIndex="4">
        <Columns>
            <asp:BoundField DataField="carId" HeaderText="carId" InsertVisible="False" ReadOnly="True" SortExpression="carId" />
            <asp:BoundField DataField="carName" HeaderText="carName" SortExpression="carName" />
            <asp:BoundField DataField="carPrice" HeaderText="carPrice" SortExpression="carPrice" />
            <asp:BoundField DataField="carModel" HeaderText="carModel" SortExpression="carModel" />
            <asp:BoundField DataField="carCategory" HeaderText="carCategory" SortExpression="carCategory" />
            <asp:BoundField DataField="carImage" HeaderText="carImage" SortExpression="carImage" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:carvillaConnectionString %>" DeleteCommand="DELETE FROM [carsdetails] WHERE [carId] = @original_carId AND [carName] = @original_carName AND [carPrice] = @original_carPrice AND [carModel] = @original_carModel AND [carCategory] = @original_carCategory AND (([carImage] = @original_carImage) OR ([carImage] IS NULL AND @original_carImage IS NULL))" InsertCommand="INSERT INTO [carsdetails] ([carName], [carPrice], [carModel], [carCategory], [carImage]) VALUES (@carName, @carPrice, @carModel, @carCategory, @carImage)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:carvillaConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [carsdetails]" UpdateCommand="UPDATE [carsdetails] SET [carName] = @carName, [carPrice] = @carPrice, [carModel] = @carModel, [carCategory] = @carCategory, [carImage] = @carImage WHERE [carId] = @original_carId AND [carName] = @original_carName AND [carPrice] = @original_carPrice AND [carModel] = @original_carModel AND [carCategory] = @original_carCategory AND (([carImage] = @original_carImage) OR ([carImage] IS NULL AND @original_carImage IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_carId" Type="Int32" />
            <asp:Parameter Name="original_carName" Type="String" />
            <asp:Parameter Name="original_carPrice" Type="Decimal" />
            <asp:Parameter Name="original_carModel" Type="String" />
            <asp:Parameter Name="original_carCategory" Type="String" />
            <asp:Parameter Name="original_carImage" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="carName" Type="String" />
            <asp:Parameter Name="carPrice" Type="Decimal" />
            <asp:Parameter Name="carModel" Type="String" />
            <asp:Parameter Name="carCategory" Type="String" />
            <asp:Parameter Name="carImage" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="carName" Type="String" />
            <asp:Parameter Name="carPrice" Type="Decimal" />
            <asp:Parameter Name="carModel" Type="String" />
            <asp:Parameter Name="carCategory" Type="String" />
            <asp:Parameter Name="carImage" Type="String" />
            <asp:Parameter Name="original_carId" Type="Int32" />
            <asp:Parameter Name="original_carName" Type="String" />
            <asp:Parameter Name="original_carPrice" Type="Decimal" />
            <asp:Parameter Name="original_carModel" Type="String" />
            <asp:Parameter Name="original_carCategory" Type="String" />
            <asp:Parameter Name="original_carImage" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>



