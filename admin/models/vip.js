let db = require('../configDb');


module.exports.test = function(callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT COUNT(*) AS NB FROM vip ;";
            // console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.premiereLettre = function(callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT DISTINCT SUBSTR(VIP_NOM, 1, 1) as lettre FROM vip ORDER BY 1;"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.resultatLettre = function(lettre,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT v.VIP_NUMERO as numero ,PHOTO_NUMERO,VIP_NOM as nom, VIP_PRENOM as prenom, PHOTO_ADRESSE as photo FROM vip v join photo p ON v.VIP_NUMERO=p.VIP_NUMERO WHERE VIP_NOM like '"+lettre+"%' AND PHOTO_NUMERO=1;"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getPhotoVip = function(numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT PHOTO_ADRESSE FROM photo p JOIN vip v ON v.VIP_NUMERO=p.VIP_NUMERO WHERE p.VIP_NUMERO="+numero+";"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getNationaliteVip = function(numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT NATIONALITE_NOM FROM nationalite n JOIN vip v ON n.NATIONALITE_NUMERO=v.NATIONALITE_NUMERO WHERE VIP_NUMERO="+numero+";"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getAllPhotoVip = function(numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT PHOTO_COMMENTAIRE,PHOTO_ADRESSE FROM photo p JOIN vip v ON v.VIP_NUMERO=p.VIP_NUMERO WHERE p.VIP_NUMERO="+numero+";"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getMariageVip = function(numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql =
                "SELECT SUBSTRING(VIP_TEXTE, 1, 60) as vipTexte, PHOTO_ADRESSE, MARIAGE_LIEU, DATE_EVENEMENT, MARIAGE_FIN, VIP_PRENOM, VIP_NOM, v.VIP_NUMERO FROM vip v ";
            sql=sql+"JOIN mariage m ON v.VIP_NUMERO=m.VIP_NUMERO JOIN photo p ON p.VIP_NUMERO=v.VIP_NUMERO ";
            sql=sql+"WHERE m.VIP_VIP_NUMERO="+numero+" AND PHOTO_NUMERO=1";
            sql=sql+" UNION ";
            sql=sql+"SELECT SUBSTRING(VIP_TEXTE, 1, 60) as vipTexte,PHOTO_ADRESSE,MARIAGE_LIEU,DATE_EVENEMENT,MARIAGE_FIN,VIP_PRENOM, VIP_NOM, v.VIP_NUMERO FROM vip v ";
            sql=sql+"JOIN mariage m ON v.VIP_NUMERO=m.VIP_VIP_NUMERO JOIN photo p ON p.VIP_NUMERO=v.VIP_NUMERO ";
            sql=sql+"WHERE m.VIP_NUMERO="+numero+" AND PHOTO_NUMERO=1";
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getLiaisonVip = function(numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql =
                "SELECT LIAISON_MOTIFFIN, DATE_EVENEMENT, VIP_PRENOM, VIP_NOM, v.VIP_NUMERO FROM vip v ";
            sql=sql+"JOIN liaison l ON v.VIP_NUMERO=l.VIP_NUMERO ";
            sql=sql+"WHERE l.VIP_VIP_NUMERO="+numero;
            sql=sql+" UNION ";
            sql=sql+"SELECT LIAISON_MOTIFFIN, DATE_EVENEMENT,VIP_PRENOM, VIP_NOM, v.VIP_NUMERO FROM vip v ";
            sql=sql+"JOIN liaison l ON v.VIP_NUMERO=l.VIP_VIP_NUMERO ";
            sql=sql+"WHERE l.VIP_NUMERO="+numero;
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getDetailVip = function(numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT VIP_NUMERO,VIP_PRENOM,VIP_NOM,VIP_NAISSANCE,VIP_TEXTE,VIP_DATE_INSERTION FROM vip WHERE VIP_NUMERO="+numero+";"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getMannequinVip = function(numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT v.VIP_NUMERO, DEFILE_LIEU,DEFILE_DATE, v2.VIP_PRENOM,v2.VIP_NOM FROM vip v JOIN mannequin m ON v.VIP_NUMERO=m.VIP_NUMERO";
            sql=sql+" JOIN defiledans dd ON m.VIP_NUMERO=dd.VIP_NUMERO";
            sql=sql+" JOIN defile d ON dd.DEFILE_NUMERO=d.DEFILE_NUMERO";
            sql=sql+" JOIN couturier c ON d.VIP_NUMERO=c.VIP_NUMERO";
            sql=sql+" JOIN vip v2 ON c.VIP_NUMERO=v2.VIP_NUMERO";
            sql=sql+" WHERE v.VIP_NUMERO="+numero+";"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getCouturierVip = function(numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT v.VIP_NUMERO,DEFILE_LIEU, DEFILE_DATE FROM vip v JOIN couturier c ON c.VIP_NUMERO=v.VIP_NUMERO JOIN defile d ON d.VIP_NUMERO=c.VIP_NUMERO WHERE v.VIP_NUMERO="+numero+";"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getRealisateurVip = function(numero,callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT v.VIP_NUMERO as num, VIP_NOM as nom, VIP_PRENOM as pre, FILM_TITRE as film_titre, FILM_DATEREALISATION as film_date FROM vip as v JOIN realisateur as r ON v.VIP_NUMERO=r.VIP_NUMERO LEFT JOIN film as f ON r.VIP_NUMERO=f.VIP_NUMERO WHERE v.VIP_NUMERO="+numero+";"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getAllVip = function(callback){
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT VIP_NUMERO,VIP_PRENOM,VIP_NOM FROM vip ORDER BY 1;"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.getAlbumVip = function(callback){
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT VIP_NOM, VIP_PRENOM, PHOTO_ADRESSE, PHOTO_COMMENTAIRE, v.VIP_NUMERO FROM vip v JOIN photo p ON v.VIP_NUMERO=p.VIP_NUMERO WHERE PHOTO_NUMERO=1 ORDER BY 1;"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getParametreConnexion = function(callback){
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT LOGIN, PASSWD FROM parametres;"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.getAllNationnalite = function(callback){
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "SELECT NATIONALITE_NUMERO, NATIONALITE_NOM FROM nationalite;"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.ajouterInfoVip = function(nationalite,nom,prenom,sexe,naissance,texte,dateInsertion,callback){
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "INSERT INTO vip ('NATIONALITE_NUMERO', 'VIP_NOM', 'VIP_PRENOM','VIP_SEXE','VIP_NAISSANCE', 'VIP_TEXTE','VIP_DATE_INSERTION') VALUES ("+nationalite+",'"+nom+"','"+prenom+"','"+sexe+"','"+naissance+"','"+texte+"','"+dateInsertion+"');"
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
module.exports.ajouterPhotoVip = function(callback){
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = ""
            //console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};
