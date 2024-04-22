<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Genocide_Route.aspx.cs" Inherits="WebApplication2.Pages.Genocide_Route" %>

<asp:Content ID="Content1" ContentPlaceHolderID="text" runat="server">
    <h1 style="color: white;">Genocide Route</h1>
    <p style="color: white;">The Genocide Route is different from the other runs a lot. You behave diffrently characters will talk to you different and the background music is much more slow and creepy and a lot of monster escaping from and afraid of you.</p>
    <p style="color: white;">The final boss of the Genocide Route is one of the most iconic battle in gaming, Sans undertale. The fight is harder than anything throught before by a kilo-meter this is trully a test for your determination.</p>
    <p style="color: white;">At the end of the Genocide Route after killing Flowey Chara will apear asking if you want to destroy this world and killing everyone. If you choose to not destroy the world, Chara will state that you have never had a choise and jumscare the player. After Chara destroy the world with you, if you reopen the game is will just be empty black screen, after 10 minutes of wait Chara will aproach the player asking why do you want the world back? chara will aproach the player to trade Frisk Soul for the world again. If you do not have a soul the True Pacifist Route and Genocide Route will change to Soulless Genocide and Soulless Pacifist.</p>
    <p style="color: white;">At Soulless Genocide the only diffrent is Chara dialoge that they does not undertand why you come back and destroy and recreate the world.</p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Anticipation.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="content1" runat="server">
    <img src="../Images/Genocide Route/chara meets sans.jpg" style="max-height: 150px; max-width: 150px;" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content2" runat="server">
    <img src="../Images/Genocide Route/sans death.jpg" style="max-height: 150px; max-width: 150px;" />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="content3" runat="server">
</asp:Content>
