let model = require("../models/vip.js");
async = require("async");
// ////////////////////// L I S T E R     A L B U M S

module.exports.ListerAlbum = function(request, response){
    response.title = 'Album des stars';

    model.getAlbumVip(function(err,result){
        if (err) {
            console.log(err);
            return;
        }
        response.allVips = result;
        response.render('listerAlbum', response);
    });
}
module.exports.PhotoDuVip = function(request, response){
    response.title = 'Album des stars';

    var numero = request.params.numero;

    async.parallel([
        function(callback){
            model.getAlbumVip(function(err,result) {callback(null, result)});
        },
        function(callback){
            model.getAllPhotoVip(numero, function(err2,result2) {callback(null,result2)});
        },
        function(callback){
            model.getDetailVip(numero, function(err3,result3) {callback(null,result3)});
        }
    ],
    function(err,result){
        if (err) {
            console.log(err);
            return;
        }
        response.allVips = result[0];
        response.vipPhoto = result[1];
        response.vipDetails = result[2];
        response.render('albumDuVip', response);
    });
}
