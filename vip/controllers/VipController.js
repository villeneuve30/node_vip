
let model = require("../models/vip.js"),
async = require("async");


// ///////////////////////// R E P E R T O I R E    D E S     S T A R S

module.exports.Repertoire = 	function(request, response){
    response.title = 'Répertoire des stars';
    model.premiereLettre(function(err,result){
        if (err) {
            console.log(err);
            return;
        }
        response.lettres = result;
        response.render('listeLettreVip', response);
    } );
};

module.exports.Detaillettre = function(request, response){
    response.title = 'Répertoire des stars';

    var lettre = request.params.lettre;
    async.parallel([
        function(callback){
            model.premiereLettre(function(err,result) {callback(null, result)});
        },
        function(callback){
            model.resultatLettre(lettre, function(err2,result2) {callback(null,result2)});
        }
    ],
    function(err,result){
        if (err) {
            console.log(err);
            return;
        }
        response.lettres = result[0];
        response.listeVip = result[1];
        response.render('listeVips', response);
    });
}

module.exports.DetailVip = function(request, response){
    response.title = 'Répertoire des stars';

    var numero = request.params.numero;
    async.parallel([
        function(callback){
            model.premiereLettre(function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getPhotoVip(numero, function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getDetailVip(numero, function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getNationaliteVip(numero, function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getAllPhotoSansPremiere(numero, function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getMariageVip(numero, function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getLiaisonVip(numero, function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getMannequinVip(numero, function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getCouturierVip(numero, function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getRealisateurVip(numero, function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getActeurVip(numero, function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getChanteurVip(numero, function(err,result) {callback(null, result)});
        }
    ],
    function(err,result){
        if (err) {
            console.log(err);
            return;
        }
        response.lettres = result[0];
        response.photo=result[1][0];
        response.detailVip=result[2][0];
        response.nationalite=result[3][0];
        response.allPhotos=result[4];
        response.mariages=result[5];
        response.liaisons=result[6];
        response.mannequin=result[7];
        response.couturier=result[8];
        response.realisateur=result[9];
        response.acteur=result[10];
        response.chanteur=result[11];
        response.render('biographieVip', response);
    });
}
