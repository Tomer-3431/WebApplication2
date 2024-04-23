function showPassword() {
    if (document.getElementById("inputPassword").type == "password") {
        document.getElementById("inputPassword").type = "text";
        document.getElementById("inputPasswordCheck").type = "text";
        document.getElementById("showPasswordButton").innerHTML = "<i class=\"bi bi-eye-slash-fill\"></i>&nbsp; Hide Password";
    } else {
        document.getElementById("inputPassword").type = "password";
        document.getElementById("inputPasswordCheck").type = "password";
        document.getElementById("showPasswordButton").innerHTML = "<i class=\"bi bi-eye-fill\"></i>&nbsp;Show Password";

    }
}

function clearRegister() {

    var msges = ["UserName", "Email", "Address", "Phone", "DateBorn", "Password", "PasswordCheck"];

    for (let i = 0; i < msges.length; i++) {
        document.getElementById("msg" + msges[i]).innerHTML = "";
        document.getElementById("input" + msges[i]).classList.remove("is-invalid");
    }

    console.log("cleared");
}

function clearLogin() {
    var msges = ["UserName", "Password"]

    for (let i = 0; i < msges.length; i++) {
        document.getElementById("msg" + msges[i]).innerHTML = "";
        document.getElementById("input" + msges[i]).classList.remove("is-invalid");
    }

    console.log("cleared")
}

function validatePasswordLowcaseLetter(password) {

    for (let i = 0; i < password.length; i++) {
        if (password[i].charCodeAt(0) > 96 && password[i].charCodeAt(0) < 123) {
            return true;
        }
    }

    return false;
}

function validatePasswwordUppercaseLetter(password) {


    for (let i = 0; i < password.length; i++) {
        if (password[i].charCodeAt(0) > 64 && password[i].charCodeAt(0) < 91) {
            return true;
        }
    }

    return false;
}

function validatePassordNumber(password){


    for (let i = 0; i < password.length; i++) {
        if (password[i].charCodeAt(0) > 47 && password[i].charCodeAt(0) < 58) {
            return true;
        }
    }

    return false;
}

// Define a JavaScript function called calculate_age with parameter dob (date of birth)
function calculateAge(dateBirth) {
    // Calculate the difference in milliseconds between the current date and the provided date of birth
    var diffMS = Date.now() - dateBirth.getTime();
    // Create a new Date object representing the difference in milliseconds and store it in the variable age_dt (age Date object)
    var ageDate = new Date(diffMS);

    // Calculate the absolute value of the difference in years between the age Date object and the year 1970 (UNIX epoch)
    return Math.abs(ageDate.getUTCFullYear() - 1970);
}

function getDateFromString(text) {
    text = text.slice(0, 4) + ((parseInt(text[4]) + 1).toString()) + text.slice(-5);
    return new Date(text);
}

function checkForm() {
    var msg = "";
    var fault = "";
    clearRegister();

    if (document.getElementById("inputPassword").value != document.getElementById("inputPasswordCheck").value) {
        msg = "Passwords do not match";
        fault = "PasswordCheck";
    }

    if (document.getElementById("inputPassword").value.length == 0) {
        msg = "Enter a Password";
        fault = "Password";
    } else if (document.getElementById("inputPassword").value.length < 8) {
        msg = "Passord too short";
        fault = "Password";
    } else if (!validatePasswordLowcaseLetter(document.getElementById("inputPassword").value)) {
        msg = "Put a lowcase letter in the password";
        fault = "Passwrod";
    } else if (!validatePasswwordUppercaseLetter(document.getElementById("inputPassword").value)) {
        msg = "Put a uppercase letter in the password";
        fault = "Password";
    } else if (!validatePassordNumber(document.getElementById("inputPassword").value)) {
        msg = "Put a number in the password";
        fault = "Password";
    }

    if (document.getElementById("inputDateBorn").value.length == 0) {
        msg = "Enter the date of your birth";
        fault = "DateBorn";
    } else if (calculateAge(getDateFromString(document.getElementById("inputDateBorn").value)) <= 12) {
        msg = "You must be at least 12 years old";
        fault = "DateBorn";
    }

    if (document.getElementById("inputPhone").value.length == 0) {
        msg = "Enter your phone number";
        fault = "Phone";
    } else if (document.getElementById("inputPhone").value.length != 10) {
        msg = "Invalide phone number";
        fault = "Phone";
    }

    if (document.getElementById("inputAddress").value.length == 0) {
        msg = "Enter an Adress";
        fault = "Address";
    } else if (document.getElementById("inputAddress").value.length < 5) {
        msg = "Adress too short";
        fault = "Address";
    }

    var shtrudel = document.getElementById("inputEmail").value.indexOf('@');
    if (document.getElementById("inputEmail").value.length == 0) {
        msg = "Enter a Email";
        fault = "Email";
    } else if (shtrudel == -1) {
        msg = "Enter a @";
        fault = "Email";
    } else if (document.getElementById("inputEmail").value.length - 1 == shtrudel) {
        msg = "You can not end the email with a @";
        fault = "Email";
    } else if (shtrudel == 0) {
        msg = "you cant start the email with a @";
        fault = "Email";
    }

    if (document.getElementById("inputUserName").value.length == 0) {
        msg = "Enter a User Name";
        fault = "UserName";
    } else if (document.getElementById("inputUserName").value.length < 6) {
        msg = "User Name is Less than 6 letters"
        fault = "UserName";
    } else if (document.getElementById("inputUserName").value.length > 12) {
        msg = "User Name is More than 12 letters";
        fault = "UserName";
    }

    if (msg != "") {
        document.getElementById("input" + fault).classList.add("is-invalid");
        document.getElementById("msg"+fault).innerHTML = msg;
        return false;
    } else {
        // alert("everything is legul \nWelcome " + document.getElementById("inputUserName").value + " to the Undertale wiki")
        return true;
    }

}

function login() {
    clearLogin();

    var msg = "";
    var fault = "";


    if (document.getElementById("inputPassword").value.length == 0) {
        msg = "Enter a Password";
        fault = "Password";
    } else if (document.getElementById("inputPassword").value.length < 8) {
        msg = "Passord too short";
        fault = "Password";
    } else if (!validatePasswordLowcaseLetter(document.getElementById("inputPassword").value)) {
        msg = "Put a lowcase letter in the password";
        fault = "Passwrod";
    } else if (!validatePasswwordUppercaseLetter(document.getElementById("inputPassword").value)) {
        msg = "Put a uppercase letter in the password";
        fault = "Password";
    } else if (!validatePassordNumber(document.getElementById("inputPassword").value)) {
        msg = "Put a number in the password";
        fault = "Password";
    }


    if (document.getElementById("inputUserName").value.length == 0) {
        msg = "Enter a User Name";
        fault = "UserName";
    } else if (document.getElementById("inputUserName").value.length < 6) {
        msg = "User Name is Less than 6 letters"
        fault = "UserName";
    } else if (document.getElementById("inputUserName").value.length > 12) {
        msg = "User Name is More than 12 letters";
        fault = "UserName";
    }

    if (msg != "") {
        document.getElementById("input" + fault).classList.add("is-invalid");
        document.getElementById("msg" + fault).innerHTML = msg;
        return false;
    } else {
        //alert("welcome in " + document.getElementById("inputUserName").value);
        return true;
    }
}

function showPasswordLogin() {
    if (document.getElementById("inputPassword").type == "password") {
        document.getElementById("inputPassword").type = "text";
        document.getElementById("showPasswordButton").innerHTML = "<i class=\"bi bi-eye-slash-fill\"></i>";
    } else {
        document.getElementById("inputPassword").type = "password";
        document.getElementById("showPasswordButton").innerHTML = "<i class=\"bi bi-eye-fill\"></i>";

    }
}