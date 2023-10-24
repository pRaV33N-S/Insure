<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDeleteCategory.aspx.cs" Inherits="InsuranceProject.AdminDeleteCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

  <style media="screen">
    a:link {
      text-decoration: none;
    }

    h6 {
      text-align: center;
    }

    .row {
      margin: 100px;
    }
  </style>

    <h2 style="font-size:35px;margin-left:600px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Delete category</h2>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style1" DataKeyNames="SerialNo" DataSourceID="SqlDataSource1" ForeColor="Black" Height="347px" style="margin-left: 379px" Width="841px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InsuranceDbConnectionString7 %>" DeleteCommand="DELETE FROM [categories] WHERE [SerialNo] = @SerialNo" InsertCommand="INSERT INTO [categories] ([category_name], [creation_date]) VALUES (@category_name, @creation_date)" ProviderName="<%$ ConnectionStrings:InsuranceDbConnectionString7.ProviderName %>" SelectCommand="SELECT * FROM [categories]" UpdateCommand="UPDATE [categories] SET [category_name] = @category_name, [creation_date] = @creation_date WHERE [SerialNo] = @SerialNo">
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
<br></asp:Content>
