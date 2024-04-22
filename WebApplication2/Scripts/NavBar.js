window.onload = function () {
    navbarActive();

    if (document.getElementById("hello").innerHTML == "Welcome: guest" || document.getElementById("hello").innerHTML == '\n                    Welcome: guest\n\n            ') {
        login();
    } else {
        logout();
    }        

    if (document.getElementById("hello").innerHTML.includes("Admin")) {
        display();
    } else {
        hide();
    }

}

function logout() {
    document.getElementById("login").action = "Logout.aspx";
    document.getElementById("loginName").innerHTML = "Logout";
    document.getElementById("register").hidden = true;
}

function login() {
    document.getElementById("login").action = "Login.aspx";
    document.getElementById("loginName").innerHTML = "Login";
    document.getElementById("register").hidden = false;
}

function hide() {
    document.getElementById("management").style.display = "none";
    document.getElementById("hello").style.color = "#FFFFFF";
}

    function display() {
        document.getElementById("management").style.display = "";
    document.getElementById("hello").style.color = "#FFD700";
}

function navbarActive() {

    document.getElementById("home").className = "";
    document.getElementById("about").className = "";
    document.getElementById("credits").className = "";

    active("Homepage.aspx", "home");
    active("About.aspx", "about");
    active("Credits.aspx", "credits");
}

function active(page, id) {
    if (document.URL.includes(page)) {
        document.getElementById(id.toString()).className = "active";
    }
}