<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Final_Project.Views.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GymMe!</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Welcome to GymMe!</h2>
            <h3>Register to your account here!</h3>
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
       
            <div>
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revUsername" runat="server" ControlToValidate="txtUsername" 
                    ErrorMessage="Username must be between 5 and 15 characters long and only contain alphabets and spaces" 
                    ValidationExpression="^[a-zA-Z ]{5,15}$" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
            <div>
             <asp:TextBox ID="txtEmail" runat ="server" placeholder ="Email"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" Display="Dynamic"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email must end with '.com'" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[cC][oO][mM]$" Display="Dynamic"></asp:RegularExpressionValidator>

             </div>
            <div>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                 <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm your password again" Display="Dynamic"></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="cvPasswords" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match" Display="Dynamic"></asp:CompareValidator>
            </div>
            <div>
                <asp:TextBox ID="txtBirth" runat="server" placeholder="Date of Birth (YYYY/MM/DD)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvBirth" runat="server" ControlToValidate="txtBirth" ErrorMessage="Date of Birth required!" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvBirth" runat="server" ControlToValidate="txtBirth" Operator="DataTypeCheck" Type="Date" Display="Dynamic"></asp:CompareValidator>
                <asp:RangeValidator ID="rvBirth" runat="server" ControlToValidate="txtBirth" ErrorMessage="Date of Birth must be YYYY/MM/DD format! " MinimumValue="1900/01/01" MaximumValue="2025/12/31" Type="Date" Display="Dynamic"></asp:RangeValidator>
            </div>
            <div>
                <asp:RadioButton ID="GenderM" Text="Male" runat="server" GroupName="Genders" />
                <asp:RadioButton ID="GenderF" Text="Female" runat="server" GroupName="Genders"/>
            </div>
            <div>
                <asp:Button ID="btnLogin" runat="server" Text="Register Now!" OnClick="btnLogin_Click" style="height: 26px" />
            </div>
            <div>
                 <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="Login.aspx" Text="Already have an account?" />
            </div>
        </div>
    </form>
</body>
</html>
