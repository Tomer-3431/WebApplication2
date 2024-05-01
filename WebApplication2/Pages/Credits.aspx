<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Credits.aspx.cs" Inherits="WebApplication2.Pages.Credits" %>

<asp:Content ID="Content1" ContentPlaceHolderID="text" runat="server">
    <h1 style="color: white;">Credits</h1>
    <p style="color: white;">Thanks to everyone who help me make this page this have taken me a lot to make. I hope you like the web.</p>
    <p style="color: white;">Shout out to: Yoav Nahum, Tamir Shevach, bootstrap, Toby fox, Igial, and especially not to Microsoft, .net and Visual Studio.</p>
    <p style="color: white;">Thanks to all the wonderful artist for the fan arts that is most of the images in the website. Thanks again to Toby Fox for making undertale and its wonderful OST thats playing right now if you did not turn it off. Heres some links that relates to undertale.</p>
    <p style="color: white;"><a href="https://open.spotify.com/album/2M2Ae2SvZe3fmzUtlVOV5Z?si=KA13lRnKQayA3kpLsz4xMw">Undertale SoundTrack PlayList</a></p>
    <p style="color: white;"><a href="https://store.steampowered.com/app/391540/Undertale/">Undertale Steam Page</a></p>
    <p style="color: white;"><a href="https://undertale.com/">Undertale Official Site</a></p>
    <p style="color: white;">This Project was amazing and even through I do not like to program web it was fun to make this website about one of my favorite game: UNDERTALE</p>
    <h1 style="color: red; text-align: center;"><i class="bi bi-heart-fill"></i></h1>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Save%20The%20World.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
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
