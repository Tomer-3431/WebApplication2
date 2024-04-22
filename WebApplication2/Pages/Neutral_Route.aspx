<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Neutral_Route.aspx.cs" Inherits="WebApplication2.Pages.Neutral_Route" %>

<asp:Content ID="Content1" ContentPlaceHolderID="text" runat="server">
    <h1 style="color: white;">Neutral Route</h1>
    <p style="color: white;">Neutral Route is probably the run everyone does at First. The route is very casual and short about 5 hours for a first time playthrough.</p>
    <p style="color: white;">Neutral Route ends with the Flowey battle, and then you have a call dialoge from Sans and if you spare Flowey a liitle dialoge with him.</p>
    <p style="color: white;">The dialoge with Sans changes depends on what bosses you killed and how monster have you killed. Some bosses that you spared will talk to you with Sans's phone.</p>
    <p style="color: white;">Flowey dialoge always hints on the idea of doint True Pacifist Route and let Flowey kill all of your friends.</p>
    <p style="color: white;">Before the fight with Asgore, you talk to Sans who judges your gameplay and have a lot of dialoges depending on who you killed, and he gets angry if you killed his brother.</p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/An Ending.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="content1" runat="server">
    <img src="../Images/Neutral Route/Sans calling.png" style="max-width: 180px"/>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content2" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="content3" runat="server">
</asp:Content>
