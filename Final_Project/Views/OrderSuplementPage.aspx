<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Navbar.Master" AutoEventWireup="true" CodeBehind="OrderSuplementPage.aspx.cs" Inherits="Final_Project.Views.OrderSuplementPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <asp:GridView ID="GV_SuplementData" runat="server" AutoGenerateColumns="False" OnRowCommand="GV_SuplementData_RowCommand">
        <Columns>
            <asp:BoundField DataField="SuplementName" HeaderText="Suplement Name" ReadOnly="True" SortExpression="SuplementName" />
            <asp:BoundField DataField="SuplementExpiryDate" HeaderText="Expiry Date" ReadOnly="True" SortExpression="SuplementExpiryDate" />
            <asp:BoundField DataField="Suplement Price" HeaderText="Price" ReadOnly="True" SortExpression="Suplement Price" />
            <asp:BoundField DataField="SuplementTypeName" HeaderText="Type" ReadOnly="True" SortExpression="SuplementTypeName" />

            <asp:TemplateField HeaderText="Quantity">
            <ItemTemplate>
                <asp:TextBox ID="Txt_Quantity" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:ButtonField ButtonType="Button" CommandName="Order" HeaderText="Order" Text="Order"/>
        </Columns>
    </asp:GridView>
        <div>
          <asp:Label ID="Lbl_MsgEror" runat="server" Text=""></asp:Label>
    </div>
    <div>
         <asp:Button ID="Btn_Cart" runat="server" Text="Cart" />
    </div>
</asp:Content>

