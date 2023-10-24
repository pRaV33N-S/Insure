<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUpdateCategory.aspx.cs" Inherits="InsuranceProject.AdminUpdateCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 410px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <h2 style="text-align:center"> Update category</h2>
    <p style="text-align:center"> &nbsp;</p>
    <p style="text-align:center"> &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style1" DataKeyNames="SerialNo" DataSourceID="SqlDataSource1" ForeColor="Black" Height="347px" Width="775px">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="SerialNo" HeaderText="SerialNo" InsertVisible="False" ReadOnly="True" SortExpression="SerialNo" />
            <asp:BoundField DataField="category_name" HeaderText="category_name" SortExpression="category_name" />
            <asp:BoundField DataField="creation_date" HeaderText="creation_date" SortExpression="creation_date" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InsuranceDbConnectionString4 %>" DeleteCommand="DELETE FROM [categories] WHERE [SerialNo] = @SerialNo" InsertCommand="INSERT INTO [categories] ([category_name], [creation_date]) VALUES (@category_name, @creation_date)" ProviderName="<%$ ConnectionStrings:InsuranceDbConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [categories]" UpdateCommand="UPDATE [categories] SET [category_name] = @category_name, [creation_date] = @creation_date WHERE [SerialNo] = @SerialNo">
        <DeleteParameters>
            <asp:Parameter Name="SerialNo" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="category_name" Type="String" />
            <asp:Parameter Name="creation_date" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="category_name" Type="String" />
            <asp:Parameter Name="creation_date" Type="DateTime" />
            <asp:Parameter Name="SerialNo" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
