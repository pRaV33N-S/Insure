<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="ApplyPolicy.aspx.cs" Inherits="InsuranceProject.ApplyPolicy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
  
 
  
    <style type="text/css">
    .auto-style1 {
        margin-left: 331px;
    }
        .auto-style2 {
            height: 81px;
            margin-top: 0px;
        }
    .auto-style3 {
        margin-left: 321px;
        margin-top: 28px;
    }
    </style>
  
 
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3 style="font-size:30px; text-align:center" class="auto-style2">&nbsp;</h3>
        <h3 style="font-size:30px; text-align:center">Available Policies</h3>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style3" DataKeyNames="policy_id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="184px" Width="1360px">
    <Columns>
        <asp:BoundField DataField="policy_id" HeaderText="policy_id" InsertVisible="False" ReadOnly="True" SortExpression="policy_id" />
        <asp:BoundField DataField="SerialNo" HeaderText="SerialNo" SortExpression="SerialNo" />
        <asp:BoundField DataField="policy_name" HeaderText="policy_name" SortExpression="policy_name" />
        <asp:BoundField DataField="sum_assured" HeaderText="sum_assured" SortExpression="sum_assured" />
        <asp:BoundField DataField="premium" HeaderText="premium" SortExpression="premium" />
        <asp:BoundField DataField="tenure" HeaderText="tenure" SortExpression="tenure" />
        <asp:BoundField DataField="creation_date" HeaderText="creation_date" SortExpression="creation_date" />
          <asp:TemplateField HeaderText="Apply">
            <ItemTemplate>
                <asp:Button ID="btnApply" runat="server" Text="Apply" CommandName="ApplyPolicy" CommandArgument='<%# Eval("policy_id") + ";" + Eval("policy_name") %>' OnCommand="btnApply_Command" />
            </ItemTemplate>
        </asp:TemplateField>
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InsuranceDbConnectionString13 %>" ProviderName="<%$ ConnectionStrings:InsuranceDbConnectionString13.ProviderName %>" SelectCommand="SELECT * FROM [policies]"></asp:SqlDataSource>
</asp:Content>
