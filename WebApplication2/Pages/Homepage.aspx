<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/Master1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebApplication2.Pages.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="text" runat="server">
    <h1 style="color: white;">Home Page</h1>
    <div style="color: white;">
        <p>Hello and Welcome to my website</p>
        <p>This website is a wiki to one of my favorite games Undertale</p>
        <p>To see all the pages of the wiki you will need to register and then log in to your account</p>
        <p>There will be music playing in the background feel free to pause this, the music is diffrent to each website and the most feeting to the specific website.</p>
        <p>In The footer there is info about me feel free to messege me in the ways shown</p>
        <p>Link to the GitHub Repositery: <a href="https://github.com/Tomer-3431/WebApplication2"><i class="bi bi-github"></i></a></p>
        <p style="margin-top: 50px">Hope you will enjoy the website and feel free to look there will be secrets :)</p>
    </div>
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