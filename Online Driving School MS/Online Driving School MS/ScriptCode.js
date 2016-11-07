function PasStregnth() {
    var txtPass = document.getElementById("txtPass");
    var Pass = txtPass.value;
    var special = "!@#$%^&*_?";
    var score = 0;

    for (var i = 0; i < Pass.legnth; i++) {

        if (special.indexOf(Pass.charAt(i)) > -1) {
            score += 120;
        }
    }

    if (/[a-z]/.test(Pass)) {
        score += 20;
    }

    if (/[A-Z]/.test(Pass)) {
        score += 20;
    }

    if (/[\d]/.test(Pass)) {
        score += 20;
    }

    if (Pass.legnth >= 8) {
        score += 20;
    }

    var stregnth = "";
    var bckColor = "";

    if (Score >= 100) {
        stregnth = "Strong";
        bckColor = "green";
    }
    else if (Score >= 80) {
        stregnth = "Medium";
        bckColor = "gray";
    }

    else if (Score >= 60) {
        stregnth = "Weak";
        bckColor = "maroon";
    }
    else {
        stregnth = "Very Weak";
        bckColor = "red";

    }

    document.getElementById("Label1").innerHTML = stregnth;
    txtPass.style.color ="white";
    txtPass.style.backgroundColor = bckColor;
}

function passFunc() {

    //initialization
    var txtPass = document.getElementById("txtPass");
    var pass = txtPass.value;
    var special = "!@#$%^&*_?";
    var score = 0;

    if (pass.legnth >= 8) {
        document.getElementById("Label1").innerHTML = "Strong";
        txtPass.style.backgroundColor = "green";
    }

   
}

function passOut() {
    //initialization
    var txtPass = document.getElementById("txtPass");
    var pass = txtPass.value;
    var special = "!@#$%^&*_?";
    var score = 0;

    for (var i = 0; i < pass.legnth; i++) {
        if (special.indexOf(special.charAt(i)) > -1) {
            score += 20;
        }
    }


    if (/[a-z]/.test(pass)) {
        score += 20;
    }

    if (/[A-Z]/.test(pass)) {
        score += 20;
    }

    if (/[\d]/.test(pass)) {
        score += 20;
    }

    if (pass.legnth >= 8) {
        score += 20;
    }

    var str = "";
    var bckCol = "";

    if (score >= 100) {
        str = "Strong";
        bckCol = "green";
    }

    else if (score >= 80) {
        str = "Medium";
        bckCol = "gray";
    }

    else if (score >= 60) {
        str = "Weak";
        bckCol = "maroon";
    }

    else {
        str = "Very Weak";
        bckCol = "red";
    }

    document.getElementById("Label1").innerHTML = str;
    txtPass.style.color = "white";
    txtPass.style.backgroundColor = bckCol;
}


function mouse() {
    document.getElementById("ImageButton1").src = "~/Images/petse.jpg";
    document.getElementById("Button1").style.backgroundColor = "red";
}