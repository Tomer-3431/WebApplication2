<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Credits.aspx.cs" Inherits="WebApplication2.Pages.Credits" %>

<asp:Content ID="Content1" ContentPlaceHolderID="text" runat="server">
    <h1 style="color: white;">Credits</h1>
    <p style="color: white;">Thanks to everyone who help me make this page this have taken me a lot to make. I hope you like the web.</p>
    <p style="color: white;">Shout out to: Yoav Nahum, Tamir Shevach, boostrap, Toby fox, Igial, and especially not to Microsoft, .net and Visual Studio.</p>
    <h1 style="color: red; text-align: center;"><i class="bi bi-heart-fill"></i></h1>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Stronger Monsters.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="content1" runat="server">
    <img src="../Images/Credits/another poster.jpg" style="max-height: 150px; max-width: 150px;" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content2" runat="server">
    <img src="../Images/Credits/buttons.png" style="max-height: 150px; max-width: 150px;" />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="content3" runat="server">
    <img src="../Images/Credits/undertale peoples.jpg" style="max-height: 150px; max-width: 150px;" />
</asp:Content>
