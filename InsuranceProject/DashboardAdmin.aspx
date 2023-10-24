﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DashboardAdmin.aspx.cs" Inherits="InsuranceProject.DashboardAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <style type="text/css">
      a:link {
        text-decoration: none;
      }
  
      .order-card {
        color: rgb(255, 255, 255);
      }
  
      .bg-c-blue {
        background: #04868f;
      }
  
      .bg-c-green {
        background:#4C51BF;
      }
  
      .bg-c-yellow {
        background: #F56565;
      }
  
      .bg-c-pink {
        background: #663a30;
      }
  
  
      .card {
        
        -webkit-box-shadow: 0 1px 2.94px 0.06px rgba(4, 26, 55, 0.16);
        box-shadow: 0 1px 2.94px 0.06px rgba(4, 26, 55, 0.16);
        border: 1px solid black;
        margin-bottom: 30px;
        -webkit-transition: all 0.3s ease-in-out;
        transition: all 0.3s ease-in-out;
      }
  
      .card .card-block {
        padding: 25px;
      }
  
      .order-card i {
        font-size: 26px;
      }
  
      .f-left {
        float: left;
      }
  
      .f-right {
        float: right;
      }
      header {
      left: 0px;
      right: 0px;
    }
    </style>
  </head>


  <div class="container">

    
    <div class="row">
      <div class="col-md-4 col-xl-3">
        <div class="card bg-c-green order-card">
          <div class="card-block">
            <h6 class="m-b-20"> <a href="admin-view-customer" style="text-decoration: none;color:white;">Total Registered User</a> </h6>
            <h2 class="text-right"><i  class="fas fa-users f-left"></i><span>00</span></h2>
            
          </div>
        </div>
      </div>
  
      <div class="col-md-4 col-xl-3">
        <div class="card bg-c-green order-card">
          <div class="card-block">
            <h6 class="m-b-20"><a href="admin-view-policy" style="text-decoration: none;color:white;">Listed Policies</a> </h6>
            <h2 class="text-right"><i class="fab fa-product-hunt f-left"></i><span>00</span></h2>
            
          </div>
        </div>
      </div>
  
      <div class="col-md-4 col-xl-3">
        <div class="card bg-c-green order-card">
          <div class="card-block">
            <h6 class="m-b-20"><a href="admin-view-category" style="text-decoration: none;color:white;">Listed Categories</a></h6>
           <h2 class="text-right"><i class="fas fa-list-alt f-left"></i><span>00</span></h2>
            
          </div>
        </div>
      </div>
  
      <div class="col-md-4 col-xl-3">
        <div class="card bg-c-green order-card">
          <div class="card-block">
            <h6 class="m-b-20"><a href="admin-question" style="text-decoration: none;color:white;">Total Question</a></h6>
            <h2 class="text-right"><i class="fas fa-question-circle f-left"></i><span>00</span></h2>
            
          </div>
        </div>
      </div>

      
    </div>

    <br>
    <div class="row">
      <div class="col-md-4 col-xl-3">
        <div class="card bg-c-green order-card">
          <div class="card-block">
            <h6 class="m-b-20"> <a href="admin-view-policy-holder" style="text-decoration: none;color:white;">Total Applied Policy Holder</a> </h6>
            <h2 class="text-right"><i class="fas fa-user-cog f-left"></i><span>00</span></h2>
            
          </div>
        </div>
      </div>
  
      <div class="col-md-4 col-xl-3">
        <div class="card bg-c-green order-card">
          <div class="card-block">
            <h6 class="m-b-20"><a href="admin-view-approved-policy-holder" style="text-decoration: none;color:white;">Approved Policy Holder</a> </h6>
            <h2 class="text-right"><i class="fas fa-user-check f-left"></i><span>00</span></h2>
            
          </div>
        </div>
      </div>
  
      <div class="col-md-4 col-xl-3">
        <div class="card bg-c-green order-card">
          <div class="card-block">
            <h6 class="m-b-20"><a href="admin-view-disapproved-policy-holder" style="text-decoration: none;color:white;">Disapproved Policy Holder</a></h6>
           <h2 class="text-right"><i class="fas fa-user-times f-left"></i><span>00</span></h2>
            
          </div>
        </div>
      </div>
  
      <div class="col-md-4 col-xl-3">
        <div class="card bg-c-green order-card">
          <div class="card-block">
            <h6 class="m-b-20"><a href="admin-view-waiting-policy-holder" style="text-decoration: none;color:white;">Policy Holder Waiting For Approval</a></h6>
            <h2 class="text-right"><i class="fas fa-user-clock f-left"></i><span>00</span></h2>
            
          </div>
        </div>
      </div>

      
    </div>

  

  </div>
<script src="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>



</asp:Content>