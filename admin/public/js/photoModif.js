function modifInput(){
    var fileVal=$('#selectPhoto').val();

    var res = fileVal.slice(12);
    $('#inputPhoto').attr("value",res);
};
