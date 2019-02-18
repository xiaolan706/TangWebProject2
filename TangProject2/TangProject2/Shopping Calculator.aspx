<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shopping Calculator.aspx.cs" Inherits="TangProject2.Shopping_Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart Calculator</title>
    <meta name="viewport" content="width=device-width, inital-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="SCC-StyleSheet.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <style type="text/css">
        #logo {
            height: 122px;
            width: 236px;
        }
        .auto-style1 {
            width: 346px;
            height: 125px;
        }
        .auto-style2 {
            width: 1212px;
            height: 131px;
        }
    </style>

</head>
<body>
    <header>
        <img class="auto-style1" src="Logo.png" />
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
        <h1>Shopping Calculator</h1>
        &nbsp;<img alt="" class="auto-style2" src="gift-top.jpg" /></header>
    <main><form id="form1" runat="server">
        <div class="form-group">
            <label for="lblUnitPrice" class="control-label col-md-4">Unit Price: </label>
            <div class="col-md-4">
                <asp:TextBox ID="txtUnitPrice" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate ="txtUnitPrice" Display="Dynamic"
                    ErrorMessage="Unit Price must be whole number between 1 to 9999)." 
                    MaximumValue="9999" MinimumValue="1" Type="Integer" ForeColor="Red"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFiledValidator1" runat="server" ControlToValidate ="txtUnitPrice" 
                    ErrorMessage="Unit Price field is required." ForeColor="red"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <label for="lblQuantity" class="control-label col-md-4">Quantity:
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate ="txtQuantity" Display="Dynamic"
                    ErrorMessage="Quantity must be whole number between 1 to 9999)." 
                    MaximumValue="9999" MinimumValue="1" Type="Integer" ForeColor="Red"></asp:RangeValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate ="txtQuantity" 
                    ErrorMessage="Quantity field is required." ForeColor="red"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <label for="lblName" class="control-label col-md-4">Name: </label>
            <div class="col-md-4">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate ="txtName" 
                    ErrorMessage="Name field must enter your name(only letters)." ValidationExpression="[a-zA-Z''-'\s]{1,40}$"
                    ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate ="txtName" 
                    ErrorMessage="Name field is required." ForeColor="red"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-group">
            <label for="lblTotalPrice" class="control-label col-md-4">Total Price: 
                <asp:Label ID="lblTotalPrice" runat="server" CssClass="txet-info" BackColor="#CCFFFF"></asp:Label>
            </label>
        </div>

        <div class="form-group">
            <div class="col-md-3">
                <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" CssClass="btn btn-primary"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" CausesValidation="false"/>
            </div>
        </div>
        </form>
    </main>
        <footer>
            <small>Copyright © 2019 Jin Tang</small>
        </footer>
    </body>
</html>
