function calcul() {
    var a = document.getElementById("t2").value;
    var b = document.getElementById("t3").value;
    var c = Number(a) * Number(b);

    t4.value = c;

    var d = document.getElementById("t5").value;
    var e = document.getElementById("t6").value;
    var f = Number(d) * Number(e);

    t7.value = f;

    var g = document.getElementById("t8").value;
    var h = document.getElementById("t9").value;
    var i = Number(g) * Number(h);

    t10.value = i;


    var j = Number(c) + Number(f) + Number(i);

    t11.value = j;
}

function reload() {
    window.location.reload();
}