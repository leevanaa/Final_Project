<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="Final_Project.Views.CartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Cart Suplement</h1>
        <div>
            <asp:GridView ID="GV_Cart" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                <Columns>
                    <asp:BoundField DataField="SuplementName" HeaderText="Supplement Name" ReadOnly="True" SortExpression="SuplementName" />
                    <asp:BoundField DataField="Quantitiy" HeaderText="Quantity" ReadOnly="True" SortExpression="Quantitiy" />
                </Columns>
            </asp:GridView>
        </div>
        <div>
            <asp:Button ID="Btn_Clear" runat="server" Text="Clear" OnClick="Btn_Clear_Click"/>
             <asp:Button ID="Btn_CheckOut" runat="server" Text="Check Out" OnClick="Btn_CheckOut_Click"/>
        </div>
        <div>
            <asp:Button ID="Btn_Back" runat="server" Text="Back" OnClick="Btn_Back_Click"/>
        </div>
    </form>
</body>
</html>
