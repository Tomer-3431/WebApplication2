<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Pages.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="forms" runat="server">

    <form class="row g-3" id="register-form" style="
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
            <h2 class="form-label" >
                    Already have an account go to <a href="Login.aspx">login page</a>
            </h2>
        </div>

        <div class="col-md-6">
            <label fclass="form-label">User Name</label>
            <input type="Text" class="form-control" id="inputUserName" placeholder="CoolSkeleton95">
            <label id="msgUserName" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-md-6">
            <label for="inputText" class="form-label">First Name</label>
            <input type="Text" class="form-control" id="inputFirstName" placeholder="Papyrus">
            <label id="msgFirstName" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-md-6">
            <label for="inputEmail" class="form-label">Email</label>
            <input type="email" class="form-control" id="inputEmail" placeholder="example@gmail.com" />
            <label id="msgEmail" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-md-6">
            <label for="inputAddress" class="form-label">Address</label>
            <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" />
            <label id="msgAddress" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-md-6" style="color: black;">
            <label for="inputGender" class="form-label" style="color: white;" >Gender</label>
            <select id="inputGender" class="form-select" aria-label=".form-select example" >
                <option selected="selected" value="0">Choose...</option>
                <option value="1">Male</option>
                <option value="2">Female</option>
                <option value="3">Non Binary</option>
                <option value="4">Prefer Not To Say</option>
            </select>
            <label id="msgGender" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-md-6">
            <label for="inputPhone" class="form-label">Phone Number</label>
            <input type="number" class="form-control" id="inputPhone" placeholder="123456789" />
            <label id="msgPhone" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-md-6">
            <label for="inputPassword" class="form-label">Password</label>
            <input type="password" class="form-control" id="inputPassword" maxlength="12" placeholder="password1234">
            <label id="msgPassword" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-md-6">
            <label for="inputPassword" class="form-label">Password Checker</label>
            <input type="password" class="form-control" id="inputPasswordCheck" maxlength="12" placeholder="password1234">
            <label id="msgPasswordCheck" class="form-text" style="color: red;"></label>
        </div>

        <div class="col-md-12 mb-3">
            <button type="button" class="btn btn-secondary" id="showPasswordButton" onclick="showPassword();" style="color: black;"><i class="bi bi-eye-fill"></i>&nbsp;Show Password</button>
        </div>

        <br />
        <div class="col-md-12 mb-3">
            <button type="submit" class="btn btn-primary btn-lg" onclick="return checkForm();" aria-pressed="true">Register</button>
            <button type="reset" class="btn btn-info btn-lg" aria-pressed="true">Reset</button>
        </div>


    </form>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Dummy!.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>