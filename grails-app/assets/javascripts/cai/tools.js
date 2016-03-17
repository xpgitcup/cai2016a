/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function draw(id) {
    
    var rrow = $("#realTimeDraw tr");
    var orow = $("#drawed");
    console.info(rrow);
    console.info(orow);
    rrow.each(function(index,item){
        if (index>0) {
            console.info(item);
            orow.append(item);
            console.info("增加。。。");
        }
    });
    
    $.ajax({
        url: "randTools/draw",
        data:{id: id},
        success: function (data, textStatus) {
            $("#drawResult").html(data);
            //console.info(data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.info(XMLHttpRequest);
            console.info(textStatus);
            console.info(errorThrown);
        }
        
    });
    
}

