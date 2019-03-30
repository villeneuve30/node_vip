let HomeController = require('./../controllers/HomeController');
let VipController = require('./../controllers/VipController');
let ConnexionController = require('./../controllers/ConnexionController');

// Routes
module.exports = function(app){

    // Main Routes
    app.get('/', HomeController.Index);
    app.get('/accueil', HomeController.Index);
    app.post('/accueil', HomeController.connexion);

    //Connexion
    app.get('/connexion',ConnexionController.formulaireConnexion);

    // VIP
    app.get('/vips',HomeController.VerifConnecte, VipController.VIP);
    app.get('/vips/ajouter',HomeController.VerifConnecte,VipController.AjouterVip);
    app.post('/vips/ajouter/validationAjout',HomeController.VerifConnecte,VipController.ValidationAjout);
    app.get('/vips/modifier',HomeController.VerifConnecte,VipController.ModifierVip);
    app.get('/vips/supprimer',HomeController.VerifConnecte,VipController.SupprimerVip);

    //PHOTO
    app.get('/photos',HomeController.VerifConnecte, VipController.PHOTO);

    // tout le reste
    app.get('*', HomeController.NotFound);
    app.post('*', HomeController.NotFound);

};
