<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerPolicyCategories.aspx.cs" Inherits="InsuranceProject.CustomerPolicyCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <head>
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
      .auto-style1 {
          margin-top: 0;
          margin-bottom: 0;
          font-size: 16px;
          height: 0px;
      }
    .auto-style2 {
        margin-left: 339px;
        margin-top: 45px;
    }
      .auto-style3 {
          width: 100%;
          height: 41px;
      }
  </style>
</head>
    <h6 style="font-size:25px" class="auto-style1">
        <table class="auto-style3">
            <tr>
                <td style="margin-right:100px">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </h6>
<br />
<br />
<br />
<br />


    <h3 style="text-align:center; font-size=35px">Available Categories</h3>
    <br /> <br /> <br /> <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataKeyNames="SerialNo" DataSourceID="SqlDataSource2" Height="179px" Width="1189px" CellPadding="4" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" ForeColor="Black">
    <Columns>
        <asp:BoundField DataField="SerialNo" HeaderText="SerialNo" InsertVisible="False" ReadOnly="True" SortExpression="SerialNo" />
        <asp:BoundField DataField="category_name" HeaderText="category_name" SortExpression="category_name" />
        <asp:BoundField DataField="creation_date" HeaderText="creation_date" SortExpression="creation_date" Visible="False" />
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
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:InsuranceDbConnectionString3 %>" ProviderName="<%$ ConnectionStrings:InsuranceDbConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InsuranceDbConnectionString6 %>" DeleteCommand="DELETE FROM [Customer] WHERE [Customer_id] = @Customer_id" InsertCommand="INSERT INTO [Customer] ([Name], [Mobile], [Address]) VALUES (@Name, @Mobile, @Address)" ProviderName="<%$ ConnectionStrings:InsuranceDbConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [Name] = @Name, [Mobile] = @Mobile, [Address] = @Address WHERE [Customer_id] = @Customer_id">
    
</asp:SqlDataSource>
</asp:Content>
