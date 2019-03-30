$(function(){
    $('#album').easyPaginate({
        paginateElement: 'a',
        elementsPerPage: 12
    });

    $('#paginationVip').easyPaginate2({
        paginateElement : 'li',
        elementsPerPage : 1,
        prevButtonText : "<<",
        nextButtonText :">>",
        firstButton : false,
        lastButton : false
    });
});
