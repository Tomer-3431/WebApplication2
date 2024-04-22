<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Frisk.aspx.cs" Inherits="WebApplication2.Pages.Frisk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="text" runat="server">
    <h1 style="color: white;">Frisk</h1>
    <p style="color: white;">Frisk is the protaganist of the game. At the start of the game, the game foll the player that they name the protaganist but actully they naming Chara. And because no one calling you Frisk until after the fight with Asriel you think your name is what you set up at the start and you are very confuse when you learnt about another human named this name.</p>
    <p style="color: white;">if you enter Frisk when you set up the game you will unlock a special mode calling hard mode that will last until the ruins. But, this mode is not that challenging compare to the Genocide Route battles.</p>
    <p style="color: white;">Frisk seems to have the same facion choices as Chara thats why Asriel confuse both of you at start.</p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Once Upon a Time.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="content1" runat="server">
    <img src="../Images/Frisk/frisk art.png" style="max-height: 150px; max-width: 150px;" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content2" runat="server">
    <img src="../Images/Frisk/Frisk.jpg" style="max-height: 150px; max-width: 150px;" />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="content3" runat="server">
</asp:Content>
