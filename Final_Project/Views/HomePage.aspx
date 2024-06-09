<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Navbar.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Final_Project.Views.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <asp:Label ID="Lbl_Role" runat="server" Text=""></asp:Label>
    <h1>Ini adalah Home Page</h1>
    <asp:GridView ID="GV_CustomerData" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GV_CustomerData_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="ID" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="Name" SortExpression="UserName" />
            <asp:BoundField DataField="UserEmail" HeaderText="Email" SortExpression="UserEmail" />
            <asp:BoundField DataField="UserDOB" HeaderText="DOB" SortExpression="UserDOB" />
            <asp:BoundField DataField="UserGender" HeaderText="Gender" SortExpression="UserGender" />
        </Columns>
    </asp:GridView>
</asp:Content>


