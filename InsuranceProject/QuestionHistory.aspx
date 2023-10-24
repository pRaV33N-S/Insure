<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="QuestionHistory.aspx.cs" Inherits="InsuranceProject.QuestionHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <link href="//netdna.bootstrapcdn.com bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
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

    label #sidebar_btn {
      z-index: 1;
      color: #fff;
      position: fixed;
      cursor: pointer;
      left: 300px;
      padding-left: 60px;
      margin-top: 15px;
      font-size: 20px;
      transition: 0.5s;
      transition-property: color;
    }
  </style>

  <br /><br /><br /><br /><br /><br />
  <div class="container">
    <div class="panel panel-primary">
      <div class="panel-heading">
        <h6 class="panel-title">Asked Question History</h6>
      </div>
      <asp:GridView ID="GridViewQuestions" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" DataSourceID="SqlDataSourceQuestions">
        <Columns>
          <asp:BoundField DataField="question_id" HeaderText="Serial No." />
          <asp:BoundField DataField="question" HeaderText="Question" />
          <asp:BoundField DataField="admin_comment" HeaderText="Admin Comment" />
          <asp:BoundField DataField="asked_date" HeaderText="Asked Date" />
        </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSourceQuestions" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
        SelectCommand="SELECT question_id, question, admin_comment, asked_date FROM questions WHERE customer_id = @customerId">
        <SelectParameters>
          <asp:SessionParameter Name="customerId" SessionField="customer_id" Type="Int32" />
        </SelectParameters>
      </asp:SqlDataSource>
    </div>
  </div>
</asp:Content>
