<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="InsuranceProject.History" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            margin: 0 auto 0 286px;
        }
        .auto-style1 th, .auto-style1 td {
            padding: 10px;
            border: 1px solid #ccc;
        }
        .auto-style1 th {
            background-color: #f2f2f2;
            text-align: left;
        }
        .auto-style5, .auto-style6, .auto-style7, .auto-style8 {
            text-align: left;
        }
    .auto-style9 {
        width: 80%;
        margin-left: 297px;
        margin-right: auto;
        margin-top: 28px;
        margin-bottom: 0;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br />  <br /> <br />
    <h3 style="font-size: 30px; text-align: center">History</h3>
    <br /> <br />
    <asp:GridView ID="gvHistory" runat="server" CssClass="auto-style9" AutoGenerateColumns="False" DataKeyNames="Sno" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="Sno" HeaderText="Sno" ItemStyle-CssClass="auto-style8" ReadOnly="True" SortExpression="Sno" InsertVisible="False" >
            </asp:BoundField>
            <asp:BoundField DataField="UserName" HeaderText="UserName" ItemStyle-CssClass="auto-style6" SortExpression="UserName" >
            </asp:BoundField>
            <asp:BoundField DataField="PolicyName" HeaderText="PolicyName" ItemStyle-CssClass="auto-style5" SortExpression="PolicyName" >
            </asp:BoundField>
            <asp:BoundField DataField="DateOfApply" HeaderText="DateOfApply" SortExpression="DateOfApply" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InsuranceDbConnectionString12 %>" SelectCommand="SELECT [Sno], [UserName], [PolicyName], [DateOfApply], [Status] FROM [HistoryTable]"></asp:SqlDataSource>
</asp:Content>