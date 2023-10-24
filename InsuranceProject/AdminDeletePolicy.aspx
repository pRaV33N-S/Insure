<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDeletePolicy.aspx.cs" Inherits="InsuranceProject.AdminDeletePolicy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-left: 313px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <h3 style="font-size:30px;text-align:center; margin-left:-30px">Delete Policy </h3>
    <br />


<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style1" DataKeyNames="policy_id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="178px" Width="1299px">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="policy_id" HeaderText="policy_id" InsertVisible="False" ReadOnly="True" SortExpression="policy_id" />
        <asp:BoundField DataField="SerialNo" HeaderText="SerialNo" SortExpression="SerialNo" />
        <asp:BoundField DataField="policy_name" HeaderText="policy_name" SortExpression="policy_name" />
        <asp:BoundField DataField="sum_assured" HeaderText="sum_assured" SortExpression="sum_assured" />
        <asp:BoundField DataField="premium" HeaderText="premium" SortExpression="premium" />
        <asp:BoundField DataField="tenure" HeaderText="tenure" SortExpression="tenure" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InsuranceDbConnectionString10 %>" DeleteCommand="DELETE FROM [policies] WHERE [policy_id] = @policy_id" InsertCommand="INSERT INTO [policies] ([SerialNo], [policy_name], [sum_assured], [premium], [tenure], [creation_date]) VALUES (@SerialNo, @policy_name, @sum_assured, @premium, @tenure, @creation_date)" ProviderName="<%$ ConnectionStrings:InsuranceDbConnectionString10.ProviderName %>" SelectCommand="SELECT * FROM [policies]" UpdateCommand="UPDATE [policies] SET [SerialNo] = @SerialNo, [policy_name] = @policy_name, [sum_assured] = @sum_assured, [premium] = @premium, [tenure] = @tenure, [creation_date] = @creation_date WHERE [policy_id] = @policy_id">
    <DeleteParameters>
        <asp:Parameter Name="policy_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="SerialNo" Type="Int32" />
        <asp:Parameter Name="policy_name" Type="String" />
        <asp:Parameter Name="sum_assured" Type="Decimal" />
        <asp:Parameter Name="premium" Type="Decimal" />
        <asp:Parameter Name="tenure" Type="Int32" />
        <asp:Parameter Name="creation_date" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="SerialNo" Type="Int32" />
        <asp:Parameter Name="policy_name" Type="String" />
        <asp:Parameter Name="sum_assured" Type="Decimal" />
        <asp:Parameter Name="premium" Type="Decimal" />
        <asp:Parameter Name="tenure" Type="Int32" />
        <asp:Parameter Name="creation_date" Type="DateTime" />
        <asp:Parameter Name="policy_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
