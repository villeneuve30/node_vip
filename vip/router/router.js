let HomeController = require('./../controllers/HomeController');
let VipController = require('./../controllers/VipController');
let AlbumController = require('./../controllers/AlbumController');
let ArticleController = require('./../controllers/ArticleController');



// Routes
module.exports = function(app){

    // Main Routes
    app.get('/', HomeController.Index);
    app.get('/accueil', HomeController.Index);

    // VIP
    app.get('/repertoire', VipController.Repertoire);
    app.get('/repertoire/:lettre', VipController.Detaillettre);
    app.get('/repertoire/vip/:numero',VipController.DetailVip);
    //Article
    app.get('/articles', ArticleController.Choixvip);
    app.get('/articles/:numero', ArticleController.ArticleDuVip);

    // albums
    app.get('/album', AlbumController.ListerAlbum);
    app.get('/album/:numero',AlbumController.PhotoDuVip);

    // tout le reste
    app.get('*', HomeController.NotFound);
    app.post('*', HomeController.NotFound);

};
