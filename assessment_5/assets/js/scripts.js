document.getElementById("btn").addEventListener("click", onClickChangeText);

function onClickChangeText() {

    var text = document.getElementById("txtbutton").value;

    document.getElementById("btn").innerHTML = text;
}