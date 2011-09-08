function populateContents(url, div) {
    $.post(url, function (data){
        $('#' + div).html(data);
    });
}
