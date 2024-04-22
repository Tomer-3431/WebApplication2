<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebApplication2.Pages.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="text" runat="server">
    <h1 style="color: white;">Home Page</h1>
    <p style="color: white;">Hello and Welcome to my website.</p>
    <p style="color: white;">My website is a wiki on the famous indie game Undertale.</p>
    <p style="color: white;">I love the game a lot actully while writing this line I'm listening to the soundtrack of the game.</p>
    <p style="color: white;">Feel free to go everywhere on the site, you can see to the right of the text there are links to every page of the wiki.</p>
    <p style="color: white;">the left there will be sometimes images and / or videos of related things to the current page.</p>
    <p style="color: white;">You can also register or log in in the log in button right up of the page.</p>
    <p style="color: white;">Also evey page have a background music you can pause the music left to the log in button. There is a secret music to some of this pages lets see if you can guess the secret code.</p>
    <p style="color: white;">Hope you will enjoy the website :)</p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Home.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>

<asp:Content ID="Content3"  ContentPlaceHolderID="content1" runat="server">
    <img src="..\Images\home page\undertale kickstarter banner.jpg" style="max-width: 180px"/>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content2" runat="server">
    <img src="..\Images\home page\undertale with everyone logo.jpg" style="max-width: 180px"/>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="content3" runat="server">
    <img src="..\Images\home page\undertale wiki logo jpeg.jpg" style="max-width: 180px" />
</asp:Content>