let model = require("../models/vip.js"),
async = require("async");

//////////////////////ARTICLES DES STARS
module.exports.Choixvip = function(request, response){
    response.title = 'Article';
    model.getAllVip(function(err,result){
        if (err) {
            console.log(err);
            return;
        }
        response.vipNomPrenom = result;
        response.render('articleMenu', response);
    } );
};
module.exports.ArticleDuVip = function(request, response){
    response.title = 'Article';

    var numero = request.params.numero;
    async.parallel([
        function(callback){
            model.getAllVip(function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getDetailVip(numero, function(err2,result2) {callback(null,result2)});
        }
    ],
    function(err,result){
        if (err) {
            console.log(err);
            return;
        }
        response.vipNomPrenom = result[0];
        response.vipDetails = result[1];
        response.render('articleDuVip', response);
    });
}
