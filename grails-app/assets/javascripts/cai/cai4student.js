/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
    var appTabs = $("#homeTabPage");
    appTabs.tabs({onSelect: function (title, index) {
            console.info('选择：' + title + ':' + index);
            var p = $('#student' + index).pagination('select');
            console.info(p);
        }});

    $("#student2").pagination({
        onSelectPage: function (pageNumber, pageSize) {
            $(this).pagination('loading');
            //alert('pageNumber:' + pageNumber + ',pageSize:' + pageSize);
            $(this).pagination('loaded');
        }
    });
    $('#student2').pagination('select', 1); //缺省的状态，调出1页
});

function loadData(pageNumber, pageSize) {
    console.info('loading...' + pageNumber);
    var offset = (pageNumber - 1) * pageSize;
    var tab = $("#appTabs").tabs('getSelected');
    console.info(tab);
    var role = tab.panel('options').title;//tab;
    console.info('当前页：' + role);
    //调用testa--查询数据
    $.ajax({
        url: 'userAppManager/queryUserApp',
        data: 'offset=' + offset + '&max=' + pageSize + '&role=' + role,
        success: function (data, textStatus) {
            $('#appView' + role).html(data);
            console.info(data);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.info(XMLHttpRequest);
            console.info(textStatus);
            console.info(errorThrown);
        }
    });
}

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
