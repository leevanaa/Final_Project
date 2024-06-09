<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Final_Project.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Welcome to GymMe</h2>
            <h3>Log in to your account here!</h3>
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
       
            <div>
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            
            <div>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            
            <div>
                <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember Me" />
            </div>
            
            <div>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <div>
                <asp:HyperLink ID="lnkRegister" runat="server" NavigateUrl="Register.aspx" Text="Don't have an account? Register here." />
            </div>
        </div>
    </form>
</body>
</html>
