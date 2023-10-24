<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCustomer.aspx.cs" Inherits="InsuranceProject.AdminCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <h3 style="text-align:center; font-size:25px">Customers</h3>
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" Height="182px" Width="1146px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" DataKeyNames="customer_id" DataSourceID="SqlDataSource1" style="margin-left: 367px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="customer_id" HeaderText="Customer_id" InsertVisible="False" ReadOnly="True" SortExpression="customer_id" />
            <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
            <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
            <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
            <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [Customers] WHERE [customer_id] = @customer_id" InsertCommand="INSERT INTO [Customers] ([username], [password], [first_name], [last_name], [mobile], [address]) VALUES (@username, @password, @first_name, @last_name, @mobile, @address)" ProviderName="<%$ ConnectionStrings:con.ProviderName %>" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [username] = @username, [password] = @password, [first_name] = @first_name, [last_name] = @last_name, [mobile] = @mobile, [address] = @address WHERE [customer_id] = @customer_id">
        <DeleteParameters>
            <asp:Parameter Name="customer_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="customer_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
