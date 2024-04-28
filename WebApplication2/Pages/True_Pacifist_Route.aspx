<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="True_Pacifist_Route.aspx.cs" Inherits="WebApplication2.Pages.True_Pacifist_Route" %>

<asp:Content ID="Content1" ContentPlaceHolderID="text" runat="server">
    <h1 style="color: white;">True Pacifist Route</h1>
    <p style="color: white;">True Pacifisit Route is the part of The Route that if you did not recieve any exp and go to date Alphys and go to the True Lab.</p>
    <p style="color: white;">The final battle of True Neutral Route is my favorite boss battle ASRIEL DREEMURR. In the fight you need to save all of your friends inside Asriel</p>
    <p style="color: white;">After Asriel destroys the barrier everyone can go to the surface and achieve their dreams in a beutifull credits.</p>
    <p style="color: white;">In Soulless Pacifist its amplied that Chara killing everyone. The idea is that you can never escape your sins from the Genocide Route.</p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/Bring It In, Guys!.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="content1" runat="server">
    <video controls="controls" width="180" height="150" >
        <source src="../Videos/Undertale%20True%20Pacifist%20Ending%20.mp4" type="video/mp4" />
    </video>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content2" runat="server">
    <img src="../Images/True Pacifist Route/everyone.png" style="max-height: 150px; max-width: 150px;" />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="content3" runat="server">
    <img src="../Images/True Pacifist Route/pacifist menu.png" style="max-height: 150px; max-width: 150px;" />
</asp:Content>
