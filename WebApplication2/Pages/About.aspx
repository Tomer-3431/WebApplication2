<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication2.Pages.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="text" runat="server">
    <h1 style="color: white;">About</h1>
    <p style="color: white;">The game undertale is one of my all time favorite game of all time. The game is funny life full and tells a story amazingly.</p>
    <p style="color: white;">The game was developed by Toby Fox and kickstarter at 2013 reaching 10 times the goal. The game released on 2015 into an amazin success. The game now is one of the most famous games of all time even making the cut into Super Smash Bros. The fan base of the game is still active and just a few months ago Undertale Yellow was release a fan games based apon a prequal of undertale.</p>
    <p style="color: white;">Now a days Toby working on Deltarune a game that is connected to undertale but its still not fully known how.</p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Spider Dance.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="content1" runat="server">
    <img src="../Images/About/undertale plushies.jpg" style="max-height: 130px; max-width: 150px;" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content2" runat="server">
    <img src="../Images/About/undertale poster.jpg" style="max-height: 130px; max-width: 150px;" />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="content3" runat="server">
    <img src="../Images/About/undertale poster2.jpg" style="max-height: 130px; max-width: 150px;" />
</asp:Content>
