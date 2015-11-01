/**
 * Created by hongshuai.hs on 2015/11/1.
 */
$(function () {
    $('a.pop_wechat').mouseover(function () {
        $(this).children('.wechat_bg').show();
    }).mouseout(function () {
        $(this).children('.wechat_bg').hide();
    });
    $('.header_select').mouseenter(function () {
        $(this).addClass('on');
        $(this).find('ul').show();
    }).mouseleave(function () {
        $(this).removeClass('on');
        $(this).find('ul').hide();
    }).find('ul > li').click(function () {
        var $search_input = $('.header_search_input');
        var sName = $(this).find('a').text();
        $('.header_select_sort').find('span > em').text(sName);
        initsearch(sName);
        $(this).parent().hide();
        $search_input.focus();
    });
    function initsearch(sName) {
        var searchContext = {};
        searchContext.sName = $.trim(sName);
        switch (sName) {
            case '效果图':
                searchContext.sHref = '/search/design';
                searchContext.sText = '海量精美效果图任你选';
                break;
            case '工长':
                searchContext.sHref = "/search/headman";
                searchContext.sText = '挑选您心仪的工长';
                break;
            case '小区':
                searchContext.sHref = "/search/town/";
                searchContext.sText = '找找您家小区的装修案例';
                break;
            case '攻略':
                searchContext.sHref = '/search/gonglve';
                searchContext.sText = '了解装修相关的资讯知识';
                break;
            case 'cail':
                searchContext.sHref = '/search/mall';
                searchContext.sText = '挑选优质家居建材';
                break;
        }
        $('#searchform').attr('action', searchContext.sHref);
        $('.header_search_input_text').html(searchContext.sText);
    }
});
