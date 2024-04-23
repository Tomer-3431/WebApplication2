window.onload = function () {
    if (getRank() == "guest") {
        welcomeLogin();
    } else {
        welcomeLogout();
    }

    if (getRank() == "Admin") {
        welcomeDisplay();
    } else {
        welcomeHide();
    }

    if (document.URL.includes("Management.aspx")) {
        welcomeActive();
    } else {
        welcomeInActive();
    }
}
function getRank() {

    var rank = document.getElementById("rank").innerHTML;
    switch (rank) {

        case '\n                    Rank: guest\n\n            ':
            return "guest";

        case '\n                    Rank: user\n\n            ':
            return "user";

        case '\n                    Rank: Admin\n\n            ':
            return "Admin"

        default:
            return "guest"
    }
}

function welcomeLogout() {
    document.getElementById("login").action = "Logout.aspx";
    document.getElementById("loginName").href = "Logout.aspx";
    document.getElementById("loginName").innerHTML = "Logout";
    document.getElementById("register").style.display = "none";
}

function welcomeLogin() {
    document.getElementById("login").action = "Login.aspx";
    document.getElementById("loginName").href = "Login.aspx";
    document.getElementById("loginName").innerHTML = "Login";
    document.getElementById("register").style.display = "";
}

function welcomeHide() {
    document.getElementById("management").hidden = true;
    document.getElementById("hello").style.color = "#FFFFFF";
    document.getElementById("rank").style.color = "#FFFFFF";
}

function welcomeDisplay() {
    document.getElementById("management").hidden = false;
    document.getElementById("hello").style.color = "#FFD700";
    document.getElementById("rank").style.color = "#FFD700";
}

function welcomeActive() {
    document.getElementById("management").style.backgroundColor = "#000000";
}

function welcomeInActive() {
    document.getElementById("management").style.backgroundColor = "#212529";
}