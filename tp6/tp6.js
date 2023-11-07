function calcul_moyenne(){
    var n1= prompt("Donner la première valeur: ");
    var n2= prompt("Donner la deucième valeur: ");
    var n3= prompt("Donner la troisième valeur: ");

    var somme = Number(n1)+Number(n2)+Number(n3);

    document.write ("Voici la somme: "+somme+"<br>");
    var moyenne=somme/3;

    document.write("Voici la moyenne: "+moyenne+"<br>")
}