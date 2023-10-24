<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminApprovedPolicyHolder.aspx.cs" Inherits="InsuranceProject.AdminApprovedPolicyHolder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
  </style>
</head>
<br><br>
<div class="container">
  <div class="panel panel-primary">
    <div class="panel-heading">
      <h6 class="panel-title">Policy Holder Record</h6>
    </div>
    <table class="table table-hover" id="dev-table">
      <thead>
        <tr>
        <th>Serial No.</th>
          <th>Policy Name</th>
          <th>Customer Name</th>
          <th> Applied Date</th>
          <th>Status</th>
          
        </tr>
      </thead>

      <tr>
        <td> 0</td>
        <td> 0</td>
        <td> 0</td>
        
        <td>0</td>
        <td>0</td>
      </tr>
  
    </table>
  </div>
</div>

</asp:Content>
