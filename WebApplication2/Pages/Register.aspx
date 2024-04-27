<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Pages.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="forms" runat="server">

    <form name="registerForm" runat="server" class="row g-3" id="registerForm" style="
    padding-right: 20px;
    padding-left: 20px;
    padding-top: 20px;
    padding-bottom: 20px;
    margin-top: 0px;
    margin-left: 0px;
    margin-right: 0px;
    display: flex;
    flex-direction: column;
    flex-wrap: wrap;
    align-content: stretch;
    align-items: flex-start;
    color: white;">

        <h1>
            Register to the wiki
        </h1>
        
        <div class="col-md-12">
            <h3 class="form-label" >
                    Already have an account go to <a href="Login.aspx">login page</a>
            </h3>
        </div>

        <div class="col-12">
            <label class="form-label">User Name</label>
            <input name="inputUserName" type="Text" class="form-control" id="inputUserName" placeholder="CoolSkeleton95" maxlength="12">
            <label name="msgUserName" id="msgUserName" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-12">
            <label for="inputEmail" class="form-label">Email</label>
            <input name="inputEmail" type="email" class="form-control" id="inputEmail" placeholder="example@gmail.com" />
            <label name="msgEmail" id="msgEmail" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-12">
            <label for="inputAddress" class="form-label">Address</label>
            <input name="inputAddress" type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" />
            <label name="msgAddress" id="msgAddress" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-12" style="color: black;">
            <label for="inputGender" class="form-label" style="color: white;" >Gender</label>
            <select name="inputGender" id="inputGender" class="form-select" aria-label=".form-select example" >
                <option selected="selected" value="0">Choose...</option>
                <option value="1">Male</option>
                <option value="2">Female</option>
                <option value="3">Non Binary</option>
                <option value="4">Prefer Not To Say</option>
            </select>
            <label name="msgGender" id="msgGender" class="form-text" style="color: red;"></label>
        </div>
        
        <div class="col-12">
            <label for="inputPhone" class="form-label">Phone Number</label>
            <input name="inputPhone" type="number" class="form-control" id="inputPhone" maxlength="10" placeholder="123456789" 
                oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"/>
            <label name="msgPhone" id="msgPhone" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-12">
            <label for="inputDateBorn" class="form-label">Date Born</label>
            <div class="input-group date" id="datepicker">
                    <input name="inputDateBorn" id="inputDateBorn" type="text" class="form-control" placeholder="04/23/2024">
                    <span class="input-group-append">
                        <span class="input-group-text bg-white d-block">
                            <i class="fa fa-calendar"></i>
                            <script type="text/javascript">
                                $(function () {
                                    $('#datepicker').datepicker();
                                });
                            </script>
                        </span>
                    </span>
                </div>
            <label name="msgDateBorn" id="msgDateBorn" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-12">
            <label for="inputPassword" class="form-label">Password</label>
            <input name="inputPassword" type="password" class="form-control" id="inputPassword" maxlength="12" placeholder="password1234">
            <label name="msgPassword" id="msgPassword" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-12">
            <label for="inputPassword" class="form-label">Password Checker</label>
            <input name="inputPasswordCheck" type="password" class="form-control" id="inputPasswordCheck" maxlength="12" placeholder="password1234">
            <label name="msgPasswordCheck" id="msgPasswordCheck" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-12 mb-3">
            <button type="button" class="btn btn-secondary" id="showPasswordButton" onclick="showPassword();" style="color: black;"><i class="bi bi-eye-fill"></i>&nbsp;Show Password</button>
        </div>

        <div class="col-12 mb-3 form-check checkList">
          <input name="inputAdmin" class="form-check-input" type="checkbox" value="" id="inputAdmin">
          <label class="form-check-label" for="flexCheckDefault">
            check to be Admin
          </label>
        </div>

        <div class="col-12 mb-3 form-check checkList">
          <h3 class="form-label" style="font-weight: bold;">
            <% =msg %>
          </h3>
        </div>

        <br />
        <div class="col-md-12 mb-3">
            <button name="registerSubmit" id="registerSubmit" type="submit" class="btn btn-primary btn-lg" onclick="return checkForm();" aria-pressed="true">Register</button>
            <button type="reset" class="btn btn-info btn-lg" aria-pressed="true">Reset</button>
        </div>


    </form>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Dummy!.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>