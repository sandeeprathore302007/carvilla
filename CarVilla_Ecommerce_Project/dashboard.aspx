<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="CarVilla_Ecommerce_Project.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Welcome to User
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp; DashBoard
            <br />
            <br />
            <br />
            To Email :
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>sronak456@gmail.com</asp:ListItem>
                <asp:ListItem>nishankbansode520@gmail.com</asp:ListItem>
                <asp:ListItem>remulkarvitthal@gmail.com</asp:ListItem>
                <asp:ListItem>sandeeprathore367@gmail.com</asp:ListItem>
                <asp:ListItem>sr169444@gmail.com</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Subject :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Body :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Attachment :
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
