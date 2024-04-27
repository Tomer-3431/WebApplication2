<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master2.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Pages.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="forms" runat="server">

    <div style="
        padding-right: 20px;
        padding-left: 20px;
        padding-top: 10px;
        margin: 10px;
        color: white; ">
        <h1>Register to the wiki</h1>
        <p>Already have an account go to <a href="Login.aspx">login page</a></p>
    </div>

    <div>
        <form name="registerForm" runat="server" class="row g-3" id="registerForm" style="
            padding-right: 20px;
            padding-left: 20px;
            padding-top: 00px;
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

            <div>
                <h3>
                    <% =msg %>
                </h3>
            </div>

            <div class="row" style="margin-top: 20px">
                <div class="col-md-6">
                    <label for="UserName" class="form-label">User name</label>
                    <input name="inputUserName" id="inputUserName" type="text" class="form-control" aria-label="input example" placeholder="CoolSkeleton95" />
                    <label name="msgUserName" id="msgUserName" class="form-text" style="color: red;"></label>
                </div>

                <div class="col-md-6">
                    <label for="inputEmail" class="form-label">Email</label>
                    <input name="inputEmail" type="text" class="form-control" id="inputEmail" placeholder="example@gmail.com" />
                    <label name="msgEmail" id="msgEmail" class="form-text" style="color: red;"></label>
                </div>
            </div>

            <div class="row">
                <div class="col-4">
                    <label for="inputAddress" class="form-label">Address</label>
                    <input name="inputAddress" type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" />
                    <label name="msgAddress" id="msgAddress" class="form-text" style="color: red;"></label>
                </div>

                <div class="col-md-3">
                    <label for="inputGender" class="form-label" style="color: white;" >Gender</label>
                    <select name="inputGender" id="inputGender" class="form-select" aria-label=".form-select example" >
                        <option value="0">Choose...</option>
                        <option value="1">Male</option>
                        <option value="2">Female</option>
                        <option value="3">Non Binary</option>
                        <option value="4">Prefer Not To Say</option>
                    </select>
                    <label name="msgGender" id="msgGender" class="form-text" style="color: red;"></label>
                </div>

                <div class="col-md-2">
                    <label for="inputPhone" class="form-label">Phone Number</label>
                    <input name="inputPhone" type="number" class="form-control" id="inputPhone" maxlength="10" placeholder="0123456789" />
                    <label name="msgPhone" id="msgPhone" class="form-text" style="color: red;"></label>
                </div>

                <div class="col-md-2">
                    <label for="inputDateBorn" class="form-label">Date Born</label>
                    <input name="inputDateBorn" type="date" class="form-control" id="inputDateBorn" />
                    <label name="msgDateBorn" id="msgDateBorn" class="form-text" style="color: red;"></label>
                </div>

                <div class="col-md-1">
                    <label for="inputColor" class="form-label">Favorite Color</label>
                    <input name="inputColor" type="color" class="form-control" id="inputColor" style="height: 38px" />
                    <label name="msgColor" id="msgColor" class="form-text" style="color: red;"></label>
                </div>
            </div>

            <div class="row">
                <div class="col-md-5">
                    <label for="inputPassword" class="form-label">Password</label>
                    <input name="inputPassword" type="password" class="form-control" id="inputPassword" maxlength="12" placeholder="password1234" />
                    <label name="msgPassword" id="msgPassword" class="form-text" style="color: red;"></label>
                </div>
    
                <div class="col-md-5">
                    <label for="inputPassword" class="form-label">Password Checker</label>
                    <input name="inputPasswordCheck" type="password" class="form-control" id="inputPasswordCheck" maxlength="12" placeholder="password1234" />
                    <label name="msgPasswordCheck" id="msgPasswordCheck" class="form-text" style="color: red;"></label>
                </div>

                <div class="col-md-2 mb-3">
                    <button type="button" class="btn btn-secondary" id="showPasswordButton" onclick="showPassword();" style="color: black; top: 30px; position: relative; width: 280px"><i class="bi bi-eye-fill"></i>&nbsp;Show Password</button>
                </div>
            </div>

            <div class="col-12 mb-3 form-check form-switch">
              <input name="inputAdmin" class="form-check-input" type="checkbox" id="inputAdmin" style="position: relative; left: 14px;" />
              <label class="form-check-label" for="flexCheckDefault" style="position: relative; left: 14px;" >check to be Admin</label>
            </div>

            <div>
                <h3>
                    <% =msg %>
                </h3>
            </div>

            <div class="col-md-12 mb-3">
                <button onclick="return checkForm();" name="registerSubmit" id="registerSubmit" type="submit" class="btn btn-primary btn-lg" aria-pressed="true" style="margin: 7px;" >Register</button>
                <button name="registerReset" id="registerReset" type="reset" class="btn btn-info btn-lg" aria-pressed="true" style="margin: 7px;" >Reset</button>
            </div>
        </form>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <!--
    <audio src="../Audio/Dummy!.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
    -->
</asp:Content>