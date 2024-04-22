<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master2.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="WebApplication2.Pages.Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="forms" runat="server">
    <div style="margin: 20px">
        <h1 style="color: red; text-align: center;">No Access</h1>
        <p style="color: white;">you can not enter the requested page without a sufficiently high level account</p>
        <p style="color: white;">feel free to return to home page or login through the home button and log in button at the top</p>
    
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Determination.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>