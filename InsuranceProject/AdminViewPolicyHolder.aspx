<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminViewPolicyHolder.aspx.cs" Inherits="InsuranceProject.AdminViewPolicyHolder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        margin-left: 318px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

   
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style2" DataKeyNames="Sno" DataSourceID="SqlDataSource1" ForeColor="Black" Height="176px" Width="919px">
    <Columns>
        <asp:BoundField DataField="Sno" HeaderText="Sno" InsertVisible="False" ReadOnly="True" SortExpression="Sno" />
        <asp:BoundField DataField="policy_id" HeaderText="policy_id" SortExpression="policy_id" />
        <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
        <asp:BoundField DataField="PolicyName" HeaderText="PolicyName" SortExpression="PolicyName" />
        <asp:BoundField DataField="DateOfApply" HeaderText="DateOfApply" SortExpression="DateOfApply" />
        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        <asp:CommandField ShowEditButton="True" ShowCancelButton="True" EditText="Approve" UpdateText="Update" CancelText="Cancel" ButtonType="Button" />
        <asp:ButtonField ButtonType="Button" Text="Disapprove" CommandName="Disapprove" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InsuranceDbConnectionString15 %>" ProviderName="<%$ ConnectionStrings:InsuranceDbConnectionString15.ProviderName %>" SelectCommand="SELECT * FROM [HistoryTable]"></asp:SqlDataSource>
</asp:Content>--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminViewPolicyHolder.aspx.cs" Inherits="InsuranceProject.AdminViewPolicyHolder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 286px;
        }
    </style>
</asp:Content>
    
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="Sno" DataSourceID="SqlDataSource1" Width="673px">
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sno" InsertVisible="False" ReadOnly="True" SortExpression="Sno" />
                <asp:BoundField ReadOnly="True"  DataField="policy_id" HeaderText="policy_id" SortExpression="policy_id" />
                <asp:BoundField ReadOnly="True"  DataField="PolicyName" HeaderText="PolicyName" SortExpression="PolicyName" />
                <asp:BoundField ReadOnly="True"  DataField="DateOfApply" HeaderText="DateOfApply" SortExpression="DateOfApply" />
                        <asp:TemplateField HeaderText="Status">
            <ItemTemplate>
                <asp:Label ID="ddlStatus" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:DropDownList ID="ddlStatus" runat="server"  DataField="Status">
                    <asp:ListItem Text="-- Select Status --" Value="" />
                    <asp:ListItem Text="Approved"  Value="Approved" />
                    <asp:ListItem Text="Pending"  Value="Pending" />
                    <asp:ListItem Text="Rejected" Value="Rejected" />
                </asp:DropDownList>
            </EditItemTemplate>
        </asp:TemplateField>

        <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InsuranceDbConnectionString16 %>" DeleteCommand="DELETE FROM [HistoryTable] WHERE [Sno] = @Sno" InsertCommand="INSERT INTO [HistoryTable] ([policy_id], [PolicyName], [DateOfApply], [Status]) VALUES (@policy_id, @PolicyName, @DateOfApply, @Status)" ProviderName="<%$ ConnectionStrings:InsuranceDbConnectionString16.ProviderName %>" SelectCommand="SELECT [Sno], [policy_id], [PolicyName], [DateOfApply], [Status] FROM [HistoryTable]" UpdateCommand="UPDATE [HistoryTable] SET [Status] = @Status WHERE [Sno] = @Sno">
            <DeleteParameters>
                <asp:Parameter Name="Sno" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="policy_id" Type="Int32" />
                <asp:Parameter Name="PolicyName" Type="String" />
                <asp:Parameter Name="DateOfApply" Type="DateTime" />
                <asp:Parameter Name="Status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                 <asp:Parameter Name="PolicyName" Type="String" />
                <asp:Parameter Name="Status" Type="String" />
                <asp:Parameter Name="Sno" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </asp:Content>