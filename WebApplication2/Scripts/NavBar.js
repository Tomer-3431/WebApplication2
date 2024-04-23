window.onload = function () {
    navbarActive();

    if (getRank() == "guest") {
        navBarLogin();
    } else {
        navBarLogout();
    }        

    if (getRank() == "Admin") {
        navBarDisplay();
    } else {
        navBarHide();
    }

}

function getRank() {

    var rank = document.getElementById("rank").innerHTML;
    switch (rank) {

        case "Rank: guest":
            return "guest";

        case "Rank: user":
            return "user";

        case "Rank: Admin":
            return "Admin"

        default:
            return "guest"
    }
}

function navBarLogout() {
    document.getElementById("login").action = "Logout.aspx";
    document.getElementById("loginName").innerHTML = "Logout";
    document.getElementById("register").hidden = true;
}

function navBarLogin() {
    document.getElementById("login").action = "Login.aspx";
    document.getElementById("loginName").innerHTML = "Login";
    document.getElementById("register").hidden = false;
}

function navBarHide() {
    document.getElementById("management").style.display = "none";
    document.getElementById("hello").style.color = "#FFFFFF";
    document.getElementById("rank").style.color = "#FFFFFF";
}

function navBarDisplay() {
    document.getElementById("management").style.display = "";
    document.getElementById("hello").style.color = "#FFD700";
    document.getElementById("rank").style.color = "#FFD700";
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