/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
    //显示当前待选课程
    listTeaching(1, 10);
    //我所选的课程
    listLearning(1, 10);
    //作业情况
    listHomework(1, 10);
    //已完成的作业
    //当前分组情况
    listGroup(1,10);
});

function listGroup(offset, pageSize) {
    console.info("列出当前的分组情况");
    
    $.ajax({
        url: 'caiTools/queryGroup',
        data: 'offset=' + offset + '&max=' + pageSize,
        success: function (data, textStatus) {
            $('#group').html(data);
            console.info(data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.info(XMLHttpRequest);
            console.info(textStatus);
            console.info(errorThrown);
        }
    });
}


function listHomework(offset, pageSize) {
    console.info("列出需要完成的作业");
    
    $.ajax({
        url: 'caiTools/queryHomework',
        data: 'offset=' + offset + '&max=' + pageSize,
        success: function (data, textStatus) {
            $('#homework').html(data);
            console.info(data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.info(XMLHttpRequest);
            console.info(textStatus);
            console.info(errorThrown);
        }
    });
}

function listLearning(offset, pageSize) {
    console.info("列出我的课程");
    
    $.ajax({
        url: 'caiTools/queryLearning',
        data: 'offset=' + offset + '&max=' + pageSize,
        success: function (data, textStatus) {
            $('#learning').html(data);
            console.info(data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.info(XMLHttpRequest);
            console.info(textStatus);
            console.info(errorThrown);
        }
    });
}


function listTeaching(offset, pageSize) {
    console.info("列出可选的课程");
    
    $.ajax({
        url: 'caiTools/queryTeaching',
        data: 'offset=' + offset + '&max=' + pageSize,
        success: function (data, textStatus) {
            $('#teaching').html(data);
            console.info(data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.info(XMLHttpRequest);
            console.info(textStatus);
            console.info(errorThrown);
        }
    });
}

