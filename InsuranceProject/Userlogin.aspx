﻿<%@ Page Title="" Language="C#" MasterPageFile="~/homepage.Master" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="InsuranceProject.Userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                            <center>
                                <img width="150px"src="Image/Userimg.png" />
                            </center>
                        </div>
                        </div>
                        <div class="row">
                            <div class="col">
                            <center>
                                <h3>Customer Login</h3>
                            </center>
                        </div>
                            </div>
                        <div class="row">
                            <div class="col">
                           <hr>
                        </div>
                            </div>

                         <div class ="row">
                           <div class="col">
                               <label>User Name</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="UserName" runat="server" placeholder="User Name"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is Required" ControlToValidate="UserName" ForeColor="#CC0000"></asp:RequiredFieldValidator>
<%--                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UserId" ErrorMessage="UserId must contain atleast 3 characters and atleast 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*\d)(?=.*[a-zA-Z].*[a-zA-Z].*[a-zA-Z]).{3,}$"></asp:RegularExpressionValidator>--%>
                               </div>
                             

                               <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

                               <label>Password</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Password" runat="server" placeholder="Password" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
                                           <asp:CheckBox ID="pass" runat="server" Text=" Show Password" onclick="showpass(this)" />
                                   <script type="text/javascript">
                                       function showpass(check_box) {
                                           var spass = document.getElementById("Password");
                                           if (check_box.checked)
                                               spass.setAttribute("Type", "Text");
                                           else
                                               spass.setAttribute("Type", "Password");
                                       }
                               </script>
                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password is Required" ControlToValidate="Password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="Password" ErrorMessage="Password must contain atleast 6 characters including atleast 1 special character and 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*[a-zA-Z]{3,})(?=.*\d)(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;]).{6,}$"></asp:RegularExpressionValidator>

                               </div>

                                <br />
                                 <div class="form-group">
                           <asp:Button class="btn btn-success w-100 btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                        </div>
                                <br />
                        <div class="form-group">
                           <a href="usersignup.aspx"><input class="btn btn-info w-100 btn-lg" id="Button2" type="button" value="Sign Up" /></a>
                        </div>
                                <br>
                               <div class="form-group" style="text-align: right;">
                                    <a href="ForgetPassword.aspx" style="text-decoration: none;">Forget Password</a>
                               </div>
                           
                           
                           
                        </div>
                            </div>

                        

                    </div>
                </div>
                <a herf="homepage.aspx"><<Back to Home</a><br><br>
            </div>
        </div>
    </div>


</a>
</asp:Content>
