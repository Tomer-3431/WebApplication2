<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master2.Master" AutoEventWireup="true" CodeBehind="Management.aspx.cs" Inherits="WebApplication2.Pages.Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="forms" runat="server">
    <div style="margin: 20px">
        <h1 style="color: white;">Admin Page</h1>
        <p style="color: white;">this page is a page only admin account can enter and see</p>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Dogsong.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>