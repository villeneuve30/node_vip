let model = require("../models/vip.js"),
moment = require("moment"),
async = require("async");

// ///////////////////////// MODFIFIER AJOUTER SUPPRIMER
module.exports.VIP = function(request, response){
    response.title = 'VIP';
    response.render('vip', response);
}
module.exports.PHOTO = function(request, response){
    response.title = 'PHOTO';
    response.render('photo', response);
}
module.exports.AjouterVip = function(request, response){
    response.title = 'Ajout d\'un vip';

    model.getAllNationnalite(function(err,result){
        if (err) {
            console.log(err);
            return;
        }
        response.nationalite = result;
        console.log(result);
        response.render('ajouterVip', response);
    });
}
module.exports.ValidationAjout = function(request, response){
    response.title = 'vip ajouté';

    nationalite = request.body.nationalite;
    nom = request.body.nom;
    prenom = request.body.prenom;
    sexe = request.body.sexe;
    naissance = request.body.naissance;
    texte = request.body.texte;
    dateInsertion = moment().format('YYYY-MM-DD hh:mm:ss');

    sujetPhoto = request.body.titrePhoto;
    commentairePhoto = request.body.commentairePhoto;
    adressePhoto = request.body.photo;

    async.series([
        function(callback){
            model.ajouterInfoVip(nationalite,nom,prenom,sexe,naissance,texte,dateInsertion, function(err,result) {callback(null, result)});
        },
        function(callback){
            model.ajouterPhotoVip(sujetPhoto,commentairePhoto,adressePhoto, function(err,result) {callback(null, result)});
        }
    ],
    function(err,result){
        if (err) {
            console.log(err);
            return;
        }
        response.render('vipBienAjoute', response);
    });

}
module.exports.Modifier = function(request, response){
    response.title = 'Modifier un vip';
    model.getAllVip(function(err,result){
        if (err) {
            console.log(err);
            return;
        }
        response.vips = result;
        response.render('modifier', response);
    });
}
module.exports.ModifierVip = function(request, response){
    response.title = 'Modifier ce vip';

    var numero = request.params.numero;

    async.parallel([
        function(callback){
            model.getAllVip(function(err,result) {callback(null, result)});
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
            model.getAllPhotoVip(numero, function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getAllNationnalite(function(err,result) {callback(null, result)});
        }
    ],
    function(err,result){
        if (err) {
            console.log(err);
            return;
        }
        response.vips = result[0]
        response.photo=result[1][0];
        response.detailVip=result[2][0];
        response.nationalite=result[3][0];
        response.allPhotos=result[4];
        response.allNationalites=result[5];

        response.render('ModifierVip', response);
    });

}

module.exports.ValidationModification = function(request, response){
    response.title = 'vip modifié';

    var numero = request.params.numero;

    nationalite = request.body.nationalite;
    nom = request.body.nom;
    prenom = request.body.prenom;
    sexe = request.body.sexe;
    naissance = request.body.naissance;
    texte = request.body.texte;

    sujetPhoto = request.body.titrePhoto;
    commentairePhoto = request.body.commentairePhoto;
    adressePhoto = request.body.photo;

    async.series([
        function(callback){
            model.modifierInfoVip(numero,nationalite,nom,prenom,sexe,naissance,texte, function(err,result) {callback(null, result)});
        },
        function(callback){
            model.modifierPhotoVip(numero,sujetPhoto,commentairePhoto,adressePhoto, function(err,result) {callback(null, result)});
        },
    ],
    function(err,result){
        if (err) {
            console.log(err);
            return;
        }
        response.render('vipModifie', response);
    });
}

module.exports.SupprimerVip = function(request, response){
    response.title = 'suppression de vip';

    response.render('suppression', response);
}
