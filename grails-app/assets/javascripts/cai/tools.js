/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function draw(id) {
    $.ajax({
        url: "randTools/draw",
        data:{id: id},
        success: function (data, textStatus) {
            $("#drawResult").html(data);
            console.info(data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.info(XMLHttpRequest);
            console.info(textStatus);
            console.info(errorThrown);
        }
        
    });
}

