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
            </div>
        </form>
    </div>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Finale.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>