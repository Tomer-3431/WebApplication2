<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="WD Gaster.aspx.cs" Inherits="WebApplication2.Pages.WD_Gaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="text" runat="server">
    <h1 style="color: white;">W.D Gaster</h1>
    <p style="color: white;">Gaster is a creepy paste, when the game start a rundom number between 1 and 100 is generate that calls the FUN value, and diffrence things will happens depending on your FUN value but almost all of them seems to be related to W.D Gaster. If your FUN value is 66 you have a chance of 1 to 3 to see a mistyrous room that have a character there called mistery man in the code, and the popular theory is that man is how W.D Gaster looks like.</p>
    <p style="color: white">Some text files are in font wingdin which is just symbols instead of letters. The popular theory is that the W.D stands for WingDin and all that text is just things Gaster says or write.</p>
    <p style="color: white;">In some FUN value there will be gray characters that called Gaster followers. They will talk about that Gaster was the royal scientist before Alphys and he created the CORE and he fall into his own creaton and spread into pieces gone through time and space.</p>
    <p style="color: white;">Heres an example of WingDin font: <p style="color: white; font-family: Wingdings;">Igal pls give me 100 pls pls</p></p>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="music" runat="server">
    <audio src="../Audio/st_him.mp3" autoplay="autoplay" loop="loop" controls style="max-height: 50px" id="audio"></audio>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="content1" runat="server">
    <img src="../Images/WD Gaster/Gaster.jpg" style="max-height: 150px; max-width: 150px;" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="content2" runat="server">
    <img src="../Images/WD Gaster/W.D Gaster.jpg" style="max-height: 150px; max-width: 150px;" />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="content3" runat="server">
</asp:Content>
