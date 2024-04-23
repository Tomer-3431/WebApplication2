<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Pages.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="forms" runat="server">

    <form id="loginForm" style="
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
    color: white;" runat="server">

            <h1>
                Login to the page 
            </h1>

        <table>

            <tr>
        
                <h2>
                    If you dont have a username go to <a href="Register.aspx">register</a>
                </h2>
            </tr>
            <tr>
                <td>
                    <label id="msg" class="form-text" style="color: red;"></label>
                </td>
            </tr>

            <tr>
                <td>
                    <label for="inputText" class="form-label">User Name</label>
                </td>
                <td></td>
                <td>
                    <input type="Text" class="form-control" id="inputUserName" name="inputUserName" placeholder="CoolSkeleton95">

                </td>
            </tr>

            <tr>
                <td></td> <td></td>
                <td>
                    <label id="msgUserName" class="form-text" style="color: red;"></label>

                </td>

            </tr>

            <tr>
                <td>
                    <label for="inputEmail" class="form-label">Email</label>
                </td>
                <td></td>
                <td>
                    <input type="Text" class="form-control" id="inputEmail" name="inputEmail" placeholder="example@gmail.com">

                </td>
            </tr>

            <tr>
                <td></td> <td></td>
                <td>
                    <label id="msgEmail" class="form-text" style="color: red;"></label>

                </td>

            </tr>

            <tr>
                <td>
                    <label for="inputPassword" class="form-label">Password</label>
                </td>
                <td></td>
                <td>
                    <input type="password" class="form-control" id="inputPassword" name="inputPassword" maxlength="12" placeholder="password1234">
                </td>
                <td>
                    &nbsp;
                    <button type="button" class="btn btn-secondary" id="showPasswordButton" onclick="showPasswordLogin();" style="color: black"><i class="bi bi-eye-fill"></i></button>
                </td>
            </tr>
            
            <tr>
                <td></td> <td></td>
                <td>
                    <label id="msgPassword" class="form-text" style="color: red;"></label>
                </td>

            </tr>

            <tr>
                <td> 
                    <button id="loginSubmit" name="loginSubmit" type="submit" class="btn btn-primary btn-lg" onclick="return checkLogin();" aria-pressed="true">login</button>
                </td>
                <td>
                    &nbsp;
                    <button type="reset" name="reset" class="btn btn-info btn-lg" aria-pressed="true">Reset</button>
                </td>
            </tr>

        </table>
    </form>
    <h3>
        <% =msg %>
    </h3>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Ghost Fight.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>