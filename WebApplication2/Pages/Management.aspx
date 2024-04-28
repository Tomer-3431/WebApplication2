<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master2.Master" AutoEventWireup="true" CodeBehind="Management.aspx.cs" Inherits="WebApplication2.Pages.Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="forms" runat="server">
    <div style="
        padding-right: 20px;
        padding-left: 20px;
        padding-top: 10px;
        margin: 10px;">
        <h1 style="color: white;">Admin Page</h1>
        <p style="color: white;">this page is a page only admin account can enter and see</p>
    </div>
    <div>
        <form name="managementForm" runat="server" class="row g-3" id="managementForm" style="
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

            <div class="col-md-12">
                <label class="form-label">Enter the UserName</label>
                <input name="inputUserName" id="inputUserName" type="Text" class="form-control" placeholder="CoolSkeleton95" maxlength="12" />
                <h3 id="managementMsg" class="form-label" style="font-weight: bold; color: white; margin-top: 30px;">
                    <% =msg%>
                </h3>
            </div>
            
            <!--
            <div class="row" style="margin-top: 20px">
                <div class="col-md-6">
                    <label for="UserName" class="form-label">User name</label>
                    <input type="text" class="form-control" aria-label="Disabled input example" disabled value= />
                </div>

                <div class="col-md-6">
                    <label for="inputEmail" class="form-label">Email</label>
                    <input name="inputEmail" type="text" class="form-control" id="inputEmail" placeholder="example@gmail.com" value= />
                    <label name="msgEmail" id="msgEmail" class="form-text" style="color: red;"></label>
                </div>
            </div>

            <div class="row">
                <div class="col-4">
                    <label for="inputAddress" class="form-label">Address</label>
                    <input name="inputAddress" type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" value= />
                    <label name="msgAddress" id="msgAddress" class="form-text" style="color: red;"></label>
                </div>

                <div class="col-md-3">
                    <label for="inputGender" class="form-label" style="color: white;" >Gender</label>
                    <select name="inputGender" id="inputGender" class="form-select" aria-label=".form-select example" >
                        <option value="0">Choose...</option>
                        <option value="1">Male</option>
                        <option  value="2">Female</option>
                        <option value="3">Non Binary</option>
                        <option value="4">Prefer Not To Say</option>
                    </select>
                    <label name="msgGender" id="msgGender" class="form-text" style="color: red;"></label>
                </div>

                <div class="col-md-2">
                    <label for="inputPhone" class="form-label">Phone Number</label>
                    <input name="inputPhone" type="number" class="form-control" id="inputPhone" maxlength="10" placeholder="0123456789" value= />
                    <label name="msgPhone" id="msgPhone" class="form-text" style="color: red;"></label>
                </div>

                <div class="col-md-2">
                    <label for="inputDateBorn" class="form-label">Date Born</label>
                    <input name="inputDateBorn" type="date" class="form-control" id="inputDateBorn" value= />
                    <label name="msgDateBorn" id="msgDateBorn" class="form-text" style="color: red;"></label>
                </div>

                <div class="col-md-1">
                    <label for="inputColor" class="form-label">Favorite Color</label>
                    <input name="inputColor" type="color" class="form-control" id="inputColor" value= style="height: 38px" />
                    <label name="msgColor" id="msgColor" class="form-text" style="color: red;"></label>
                </div>
            </div>

            <div class="row">
                <div class="col-md-5">
                    <label for="inputPassword" class="form-label">Password</label>
                    <input name="inputPassword" type="password" class="form-control" id="inputPassword" maxlength="12" placeholder="password1234" value= />
                    <label name="msgPassword" id="msgPassword" class="form-text" style="color: red;"></label>
                </div>
                
                <div class="col-md-5">
                    <label for="inputPassword" class="form-label">Password Checker</label>
                    <input name="inputPasswordCheck" type="password" class="form-control" id="inputPasswordCheck" maxlength="12" placeholder="password1234" value= />
                    <label name="msgPasswordCheck" id="msgPasswordCheck" class="form-text" style="color: red;"></label>
                </div>

                <div class="col-md-2 mb-3">
                    <button type="button" class="btn btn-secondary" id="showPasswordButton" onclick="showPassword();" style="color: black; top: 30px; position: relative; width: 280px"><i class="bi bi-eye-fill"></i>&nbsp;Show Password</button>
                </div>
            </div>

            <div class="col-12 mb-3 form-check checkList">
              <input  name="inputAdmin" class="form-check-input" type="checkbox" id="inputAdmin">
              <label class="form-check-label" for="flexCheckDefault">check to be Admin</label>
            </div>
            -->

            <div>
                <div>
                    <label class="form-label">Delete Or Modify the found account</label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="modifyOrDelete" id="inputDelete" value="delete" />
                    <label class="form-check-label" for="inputDelete">Delete Account</label>
                </div>

                <div class="fomr-check">
                    <input class="form-check-input" type="radio" name="modifyOrDelete" id="inputModify" value="modify" />
                    <label class="form-check-label" for="inputModify">Modify Account</label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="modifyOrDelete" id="inputSearch" value="search" checked />
                    <label class="form-check-label" for="inputSearch">Just Search Account</label>
                </div>
            </div>

            <div class="col-md-12 mb-3">
                <button name="managementSubmit" id="managementSubmit" type="submit" class="btn btn-primary btn-lg" aria-pressed="true" style="margin: 7px;" >Search <i class="bi bi-search"></i></button>

                <!--
                <button name="managementReset" id="managementReset" type="reset" class="btn btn-info btn-lg" aria-pressed="true" style="margin: 7px;" >Reset</button>
                <button name="managementDelete" id="managementDelete" type="button" class="btn btn-danger btn-lg" aria-pressed="true" style="margin: 7px;" >Delete User <i class="bi bi-trash3-fill"></i></button>
                -->
            </div>
        </form>
    </div>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Finale.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>