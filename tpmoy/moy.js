function moyenne()
{
    var note1 = document.getElementById("n1").value; 
    var note2 = document.getElementById("n2").value;
    var note3 = document.getElementById("n3").value;
    var coef1 = document.getElementById("c1").value;
    var coef2 = document.getElementById("c2").value;
    var coef3 = document.getElementById("c3").value; 
    var s = Number(coef1)+Number(coef2)+Number(coef3);
    var m = (Number(note1)*Number(coef1)+Number(note2)*Number(coef2)+Number(note3)*Number(coef3)) / s;

    moy.value = m;

    if (m < 10)
        resultat.value = "redoublant";
    else if (m < 12)
        resultat.value = "admis passable";
    else if (m < 14)
        resultat.value = "admis assez bien";
    else if (m < 16)
        resultat.value = "admis bien";
    else if (m <= 20)
        resultat.value = "admis trés bien";
    else if (m > 20)
        resultat.value = "erreur";
}