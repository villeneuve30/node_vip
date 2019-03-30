let model = require("../models/vip.js");
let ModuleCryptr = require('cryptr');
let cryptr = new ModuleCryptr('MaSuperCléDeChiffrementDeouF'); // clé de chiffrement. Ne pas la modifier


// ////////////////////////////////////////////// A C C U E I L
module.exports.VerifConnecte = function(request, response,next){

    if(!request.session.admin){
        response.redirect('/connexion');
        return;
    }
    next();
};
module.exports.Index = function(request, response){
    response.title = "Bienvenue sur le site de SIXVOIX (IUT du Limousin).";
    response.render('home', response);
};

module.exports.NotFound = function(request, response){
    response.title = "Bienvenue sur le site de SIXVOIX (IUT du Limousin).";
    response.render('notFound', response);
};

module.exports.connexion = function(request, response){
    response.title = "Connecté en tant qu'Administrateur";

    let login = request.body.login;
    let mdp = request.body.mdp;

    model.getParametreConnexion(function(err,result){
        if (err) {
            console.log(err);
            return;
        }

        let decryptedPassword = cryptr.decrypt(result[0]['PASSWD']);

        console.log(decryptedPassword);

        if(mdp == decryptedPassword && login == result[0]['LOGIN']){
            request.session.admin=login;
            response.render('home', response);
        }else{
            response.render('pageConnexion',response);
        }
        console.log(request.session.admin);
    });

};
