window.onload = function () {
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

    if (document.URL.includes("Management.aspx")) {
        active();
    } else {
        inActive();
    }
}

function logout() {
    document.getElementById("login").action = "Logout.aspx";
    document.getElementById("loginName").innerHTML = "Logout";
    document.getElementById("register").style.display = "none";
}

function login() {
    document.getElementById("login").action = "Login.aspx";
    document.getElementById("loginName").innerHTML = "Login";
    document.getElementById("register").style.display = "";
}

function hide() {
    document.getElementById("management").hidden = true;
    document.getElementById("hello").style.color = "#FFFFFF";
}

function display() {
    document.getElementById("management").hidden = false;
    document.getElementById("hello").style.color = "#FFD700";
}

function active() {
    document.getElementById("management").style.backgroundColor = "#000000";
}

function inActive() {
    document.getElementById("management").style.backgroundColor = "#212529";
}