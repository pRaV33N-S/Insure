<%@ Page Title="" Language="C#" MasterPageFile="~/homepage.Master" AutoEventWireup="true" CodeBehind="Usersignup.aspx.cs" Inherits="InsuranceProject.Usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
       <div class ="row">
           <div class ="col-md-6 mx-auto">
               <br>
               <div class ="card">
                   <div class ="card-body">
                       
                       <div class ="row">
                           <div class="col">
                               <center>
                                   <img width="150px"  src="Image/Userimg.png"  / width="130" height="130"/>

                               </center>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col">
                               <center>
                                   <h3>Customer Sign up</h3>

                               </center>
                           </div>
                       </div>                      

                        <div class ="row">
                           <div class="col">
                               <hr>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col-md-6">
                              <label>UserId</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="UserId" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Userid is required" ControlToValidate="UserId" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UserId" ErrorMessage="The userid must be between 3 and 15 characters long" ForeColor="#CC0000" ValidationExpression="^([\S\s]{3,15})$"></asp:RegularExpressionValidator>
                               </div>
                           </div>

                           <div class="col-md-6">
                              <label>First Name</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="FirstName" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" ControlToValidate="LastName" ForeColor="#CC0000"></asp:RequiredFieldValidator>

                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="FirstName" ErrorMessage="The name must be between 1 and 15 characters long" ForeColor="#CC0000" ValidationExpression="^([\S\s]{1,15})$"></asp:RegularExpressionValidator>

                               </div>
                           </div>
                                 <div class="col-md-6">
                              <label>Last Name</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="LastName" runat="server" ></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Last Name is required" ControlToValidate="LastName" ForeColor="#CC0000"></asp:RequiredFieldValidator>

                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="LastName" ErrorMessage="The name must be between 1 and 15 characters long" ForeColor="#CC0000" ValidationExpression="^([\S\s]{1,15})$"></asp:RegularExpressionValidator>

                               </div>
                           </div>
                       </div>
                      

                           <div class="col-md-6">
                              <label>Mobile</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Mobile" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Contact Number is required" ControlToValidate="Mobile" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Mobile" ErrorMessage="Contact number must only contain 10 digits" ForeColor="#CC0000" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                               </div>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col">
                               

                               <label>Address</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Address is Required" ControlToValidate="Address" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                               </div>
                               

<%--                               <div class ="row">
                                   <center>
                                       <div class="col">
                                           <span class="badge rounded-pill text-bg-info text-white">Login Credentials</span>
                                       </div>
                                   </center>
                                   
                               </div>--%>


                               

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
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="Password" ErrorMessage="Password must contain Minimum eight characters, at least one letter and one number:" ForeColor="#CC0000" ValidationExpression="^(?=.*[a-zA-Z]{3,})(?=.*\d)(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;]).{6,}$"></asp:RegularExpressionValidator>

                               </div>
                               

                               <label>Confirm Password</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="ConfirmPassword" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Confirm Password is Required" ControlToValidate="ConfirmPassword" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Password must contain atleast 6 characters including atleast 1 special character and 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*[a-zA-Z]{3,})(?=.*\d)(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;]).{6,}$"></asp:RegularExpressionValidator>
                                   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password must match Password" ForeColor="#CC0000"></asp:CompareValidator>
                               </div>

                               

                                <div class="form-group">
                                  <asp:Button ID="Button1" class="btn btn-success w-100 btn-lg" runat="server" Text="Sign Up" OnClick="Button1_Click"/>

                               </div>
                         </div>
                    </div>
                </div>       
            </div>
           <a href="homepage.aspx" style="text-decoration:none"><< Back to Home</a><br><br><br><br>
        </div>
      </div>
    </div>
</asp:Content>
