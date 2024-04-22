<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Asgore.aspx.cs" Inherits="WebApplication2.Pages.Asgore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="text" runat="server">
    <h1 style="color: white;">Asgore Dreemurr</h1>
    <p style="color: white;">The entire game you know your goal is to get to Asgore and ask him or kill him to go through the barrier and cross back to the humans. But Asgore wants to kill you because he need only one more soul before he become god and can destroy the barrier forever. Asgore was the husband of Torial and after declaring that every human that will fall down will die Torial left him. Asgore is the king of monster kind and everyone tells you he is very nice, that why the his music name is telling about a good guy that wants to do a bad thing for the greater good. After the Mettaton fight Alphys tells you that if you want to cross the barrier you will need to kill him and take his soul because to cross the barrier its take the power of a human and a monster soul combined, thats why pre his fight he destroy the MERCY button making the only option is attack until he is low.</p>
    <p style="color: white;">Unfortunately, Flowey killes him no matter what you do after the fight. And knowing Flowey killes his own father is so dam tragic.</p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/ASGORE.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="content1" runat="server">
    <video controls="controls" width="180">
        <source src="../Videos/Asgore destroys the mercy button.mp4" type="video/mp4"/>
    </video>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content2" runat="server">
    <img src="../Images/Asgore/Asgore art.jpg" style="max-height: 150px; max-width: 150px"/>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="content3" runat="server">
    <img src="../Images/Asgore/Asgore Sprite.jpg" style="max-height: 150px; max-width: 150px" />
</asp:Content>
