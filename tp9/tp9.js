function seconnecter(){
    var login = prompt("Donner votre nom d'utilisateur");
    var password = prompt("Entrer votre mot de passe")
    if(login == "admin" && password == "admin"){
        document.write("Bienvenue :" + login)
    }
    else{
        alert("Accès refusé");
    }
}
function seconnecter2() {
    window.location.href='idtp9.html'
}

function valider() {
    var login = prompt("Donner votre nom d'utilisateur");
    var password = prompt("Entrer votre mot de passe")
    if(login == "admin" && password == "admin"){
        window.location.href='idtp9.html'
    }
    else{
        alert("Accès refusé");0
    }
}

function affichagetab() {
    document.write('<table border=2px width=30%');
    for(var i = 0; i<=5; i++) {
        document.write('<tr> <td>*</td> <td>*</td> <td>*</td> </tr>');
    }
    document.write('</table>');
}

function affichagetab2(){
    var nombre = prompt("donner le nombre de ligne")
    document.write('<table border=2px width=30%');
    for(var i = 1; i<= nombre; i++) {
        document.write("<tr> <td>"+i+"</td> <td>*</td> <td>*</td> </tr>");
    }
    document.write('</table>');
}

function cdc() {
    var chaine = prompt("Donnez un mot");
    document.write(chaine.toUpperCase()+"<br>");
    document.write(chaine.toLowerCase()+"<br>");
    document.write("La chaine contient " + chaine.length + " caractères" + "<br>");
    document.write("La première lettre est " + chaine.substr(0,1) + "<br>");
    document.write("La dernière lettre est " + chaine.substr(-1.1) + "<br>");
}

function couleur() {
    var color = prompt("Entrez une couleur :")
    switch (color) {
        case "rouge":
            document.body.style.background = "red";
            break;
         case "ROUGE":
            document.body.style.background = "red";
            break;
         case "Rouge":
            document.body.style.background = "red";
            break;

         case "bleu":
            document.body.style.background = "blue";
            break;
         case "BLEU":
            document.body.style.background = "blue";
            break;
         case "Bleu":
            document.body.style.background = "blue";
            break;

        case "vert":
            document.body.style.background = "green";
            break;
         case "VERT":
            document.body.style.background = "green";
            break;
         case "Vert":
            document.body.style.background = "green";
            break;

        case "jaune":
            document.body.style.background = "yellow";
            break;
         case "JAUNE":
            document.body.style.background = "yellow";
            break;
         case "Jaune":
            document.body.style.background = "yellow";
            break;

            default:
            alert("couleur non prise en charge, veuillez choisir parmis : Bleu, Rouge, Jaune, Vert")
    }
}

function seconnecter3() {
    var i = 0;
    do {
        var id= prompt("Entrez votre nom d'utilisateur");
        var mdp= prompt("Entrez votre mot de passe");
        if (id == "admin" && mdp =="admin")
        {
            document.write("Bienvenue "+id)
            break;
        }
        else
        alert("Accès refusé");
    i=i+1;
    }while (i<3);

    if (1==3)
    alert("Delais dépassé");
}

function ajouterLigne() {
    window.location.href='ligne.html'
}