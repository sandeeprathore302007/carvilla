<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CarVilla_Ecommerce_Project.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title></title>
</head>
<body>

    <form  id="form1" runat="server">
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label>User Name<label>
      
        <asp:TextBox ID="TextBox1" class="form-control" placeholder="Enter the UserName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
          <div class="valid-feedback">
        Looks good!
      </div>
    </div>
      <div class="col-md-4 mb-3">
      <label>Email<label>
       
           <asp:TextBox ID="TextBox6" class="form-control" placeholder="Enter the Email" runat="server"></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
      <div class="valid-feedback">
         
      </div>
    </div>
      <div class="col-md-4 mb-3">
      <label >Mobile Number<label>
      
           <asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="Enter the Mobile Number"></asp:TextBox>
           <asp:CustomValidator ID="CustomValidator3"  runat="server" ErrorMessage="CustomValidator" ControlToValidate="TextBox3"></asp:CustomValidator>
      <div class="valid-feedback">
        
      </div>
          <div class="col-md-4 mb-3">
      <label>Password<label>
      
          <asp:TextBox ID="TextBox8" class="form-control" runat="server" placeholder="Password"></asp:TextBox>
          <asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage="CustomValidator" ControlToValidate="TextBox4"></asp:CustomValidator>
      <div class="valid-feedback">
        
      </div>

          <div class="col-md-4 mb-3">
      <label>Confirm Password<label>
      
          <asp:TextBox ID="TextBox9" class="form-control" runat="server" placeholder="Confirm Password"></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="CompareValidator" ControlToCompare="TextBox4" ControlToValidate="TextBox5"></asp:CompareValidator>
      <div class="valid-feedback">
        
      </div>
    </div>
     
 
   
     
     
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
      <label class="form-check-label" for="invalidCheck">
        Agree to terms and conditions
      </label>
      <div class="invalid-feedback">
        You must agree before submitting.
      </div>
    </div>
  </div>
   
           <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Sign Up" />
</form>

<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>











     
</body>
</html>
