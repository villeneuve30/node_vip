/*
* config.Db contient les parametres de connection à la base de données
* Il utilise le module mysql
* il va créer aussi un pool de connexions utilisables
* la méthode getConnection permet de se connecter à MySQL
*
*/

let mysql = require('mysql'); // voir https://github.com/felixge/node-mysql/

let pool  = mysql.createPool({
  host     : 'localhost',
  user     : 'bd',
  password : 'bede',
  dateStrings : true,
  database : 'vip',
  port : "3306"
});

module.exports.getConnection = function(callback) {
    pool.getConnection(function(err, connection) {
        callback(err, connection);
        if (err) {
            console.log(err);
            return;
        }
    });
};
