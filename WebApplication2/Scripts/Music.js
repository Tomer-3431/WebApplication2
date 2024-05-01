var tapeB = ["Homepage", "Asriel", "Flowey", "Sans", "Undyne", "Mettaton"];
var musicA = ["Home", "Memory", "Your Best Friend", "sans.", "Spear of Justice", "Death Bt Glamour"];
var musicB = ["Undertale", "His Theme", "Your Best Nightmare", "MEGALOVANIA", "Battle Against A True Hero", "Power Of _NEO_"];

var rng = Math.floor(100*Math.random());

function changeSide() {
    
    if (document.getElementById("tape").src.includes("/Images/celeste%20tape%20A.png")) {
        document.getElementById("tape").src = "../Images/celeste tape B.png";
        if (checkSideB() == 3 && rng == 0) {
            document.getElementById("audio").src = "../Audio/" + "Song That Might Play When You Fight Sans" + ".mp3";
        } else {
            document.getElementById("audio").src = "../Audio/" + musicB[checkSideB()] + ".mp3";
        }


    } else if (document.getElementById("tape").src.includes("/Images/celeste%20tape%20B.png")) {
        document.getElementById("tape").src = "../Images/celeste tape A.png";
        document.getElementById("audio").src = "../Audio/" + musicA[checkSideB()] + ".mp3";
    }

}

function checkSideB() {

    for (let i = 0; i < tapeB.length; i++) {
        if (document.URL.includes(tapeB[i]+".aspx")) {
            return i;
        }
    }

    return -1;
}


var pattern = ['ArrowUp', 'ArrowUp', 'ArrowDown', 'ArrowDown', 'ArrowLeft', 'ArrowRight', 'ArrowLeft', 'ArrowRight', 'b', 'a'];
var current = 0;

var keyHandler = function (event) {
    if (checkSideB() != -1) {
        // If the key isn't in the pattern, or isn't the current key in the pattern, reset
        if (pattern.indexOf(event.key) < 0 || event.key !== pattern[current]) {
            current = 0;
            return;
        }

        // Update how much of the pattern is complete
        current++;
        console.log("current: " + current);

        if (current == pattern.length) {
            current = 0;
            alert('CONGRATIOLATION SIDE B FOUND');
            document.getElementById("tapeButton").hidden = false;
        }
    }

};

// Listen for keydown events
document.addEventListener('keydown', keyHandler, false);