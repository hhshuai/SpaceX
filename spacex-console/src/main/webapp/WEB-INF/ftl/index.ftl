<#--
  Created by IntelliJ IDEA.
  User: hongshuai.hs
  Date: 2015/11/1
  Time: 11:10
-->
<html xmlns="http://www.w3.org/1999/html">
<#include "control/header.ftl">
<script type="text/javascript" src="/assets/js/jssor.slider.min.js"></script>
<script>
    jQuery(document).ready(function ($) {

        var jssor_1_SlideoTransitions = [
            [
                {b: 0.0, d: 600.0, y: -290.0, e: {y: 27.0}}
            ],
            [
                {b: 0.0, d: 600.0, x: 410.0, e: {x: 27.0}}
            ],
            [
                {b: -1.0, d: 1.0, o: -1.0},
                {b: 0.0, d: 600.0, o: 1.0, e: {o: 5.0}}
            ],
            [
                {b: -1.0, d: 1.0, c: {x: 175.0, t: -175.0}},
                {b: 0.0, d: 800.0, c: {x: -175.0, t: 175.0}, e: {c: {x: 7.0, t: 7.0}}}
            ],
            [
                {b: -1.0, d: 1.0, o: -1.0},
                {b: 0.0, d: 600.0, x: -570.0, o: 1.0, e: {x: 6.0}}
            ],
            [
                {b: -1.0, d: 1.0, o: -1.0, r: -180.0},
                {b: 0.0, d: 800.0, o: 1.0, r: 180.0, e: {r: 7.0}}
            ],
            [
                {b: 0.0, d: 1000.0, y: 80.0, e: {y: 24.0}},
                {b: 1000.0, d: 1100.0, x: 570.0, y: 170.0, o: -1.0, r: 30.0, sX: 9.0, sY: 9.0, e: {x: 2.0, y: 6.0, r: 1.0, sX: 5.0, sY: 5.0}}
            ],
            [
                {b: 0.0, d: 1000.0, y: 185.0},
                {b: 1000.0, d: 500.0, o: -1.0},
                {b: 1500.0, d: 500.0, o: 1.0},
                {b: 2000.0, d: 1500.0, r: 360.0},
                {b: 3500.0, d: 1000.0, rX: 30.0},
                {b: 4500.0, d: 500.0, rX: -30.0},
                {b: 5000.0, d: 1000.0, rY: 30.0},
                {b: 6000.0, d: 500.0, rY: -30.0},
                {b: 6500.0, d: 500.0, sX: 1.0},
                {b: 7000.0, d: 500.0, sX: -1.0},
                {b: 7500.0, d: 500.0, sY: 1.0},
                {b: 8000.0, d: 500.0, sY: -1.0},
                {b: 8500.0, d: 500.0, kX: 30.0},
                {b: 9000.0, d: 500.0, kX: -30.0},
                {b: 9500.0, d: 500.0, kY: 30.0},
                {b: 10000.0, d: 500.0, kY: -30.0},
                {b: 10500.0, d: 500.0, c: {x: 87.50, t: -87.50}},
                {b: 11000.0, d: 500.0, c: {x: -87.50, t: 87.50}}
            ],
            [
                {b: 2000.0, d: 600.0, rY: 30.0}
            ],
            [
                {b: 0.0, d: 500.0, x: -105.0},
                {b: 500.0, d: 500.0, x: 230.0},
                {b: 1000.0, d: 500.0, y: -120.0},
                {b: 1500.0, d: 500.0, x: -70.0, y: 120.0},
                {b: 2600.0, d: 500.0, y: -80.0},
                {b: 3100.0, d: 900.0, y: 160.0, e: {y: 24.0}}
            ],
            [
                {b: 0.0, d: 1000.0, o: -0.4, rX: 2.0, rY: 1.0},
                {b: 1000.0, d: 1000.0, rY: 1.0},
                {b: 2000.0, d: 1000.0, rX: -1.0},
                {b: 3000.0, d: 1000.0, rY: -1.0},
                {b: 4000.0, d: 1000.0, o: 0.4, rX: -1.0, rY: -1.0}
            ]
        ];

        var jssor_1_options = {
            $AutoPlay: true,
            $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_1_SlideoTransitions,
                $Breaks: [
                    [
                        {d: 3000, b: 1000}
                    ]
                ]
            },
            $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
            },
            $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
            }
        };

        var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

        //responsive code begin
        //you can remove responsive code if you don't want the slider scales while window resizes
        function ScaleSlider() {
            var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
            if (refSize) {
                refSize = Math.min(refSize, 920);
                jssor_1_slider.$ScaleWidth(refSize);
            }
            else {
                window.setTimeout(ScaleSlider, 30);
            }
        }

        ScaleSlider();
        $(window).bind("load", ScaleSlider);
        $(window).bind("resize", ScaleSlider);
        $(window).bind("orientationchange", ScaleSlider);
        //responsive code end
    });
</script>
<style>

    /* jssor slider bullet navigator skin 01 css */
    /*
    .jssorb01 div           (normal)
    .jssorb01 div:hover     (normal mouseover)
    .jssorb01 .av           (active)
    .jssorb01 .av:hover     (active mouseover)
    .jssorb01 .dn           (mousedown)
    */
    .jssorb01 {
        position: absolute;
    }

    .jssorb01 div, .jssorb01 div:hover, .jssorb01 .av {
        position: absolute;
        /* size of bullet elment */
        width: 12px;
        height: 12px;
        filter: alpha(opacity=70);
        opacity: .7;
        overflow: hidden;
        cursor: pointer;
        border: #000 1px solid;
    }

    .jssorb01 div {
        background-color: gray;
    }

    .jssorb01 div:hover, .jssorb01 .av:hover {
        background-color: #d3d3d3;
    }

    .jssorb01 .av {
        background-color: #fff;
    }

    .jssorb01 .dn, .jssorb01 .dn:hover {
        background-color: #555555;
    }

    /* jssor slider arrow navigator skin 02 css */
    /*
    .jssora02l                  (normal)
    .jssora02r                  (normal)
    .jssora02l:hover            (normal mouseover)
    .jssora02r:hover            (normal mouseover)
    .jssora02l.jssora02ldn      (mousedown)
    .jssora02r.jssora02rdn      (mousedown)
    */
    .jssora02l, .jssora02r {
        display: block;
        position: absolute;
        /* size of arrow element */
        width: 55px;
        height: 55px;
        cursor: pointer;
        background: url(/assets/imgs/nav.png) no-repeat;
        overflow: hidden;
    }

    .jssora02l {
        background-position: -3px -33px;
    }

    .jssora02r {
        background-position: -63px -33px;
    }

    .jssora02l:hover {
        background-position: -123px -33px;
    }

    .jssora02r:hover {
        background-position: -183px -33px;
    }

    .jssora02l.jssora02ldn {
        background-position: -3px -33px;
    }

    .jssora02r.jssora02rdn {
        background-position: -63px -33px;
    }
</style>
<body>
<#include "control/nav.ftl">
<div class="container">
<div class="row">
    <div class="col-md-9">
        <div id="jssor_1"
             style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 920px; height: 375px; overflow: hidden; visibility: hidden;">
            <!-- Loading Screen -->
            <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
                <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                <div style="position:absolute;display:block;background:url('/assets/imgs/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
            </div>
            <div data-u="slides"
                 style="cursor: default; position: relative; top: 5px; left: 0px; width: 920px; height: 375px; overflow: hidden;">
                <div data-p="112.50" style="display: none;">
                    <img data-u="image" src="/assets/imgs/banner/002.jpg"/>

                    <div data-u="caption" data-t="0"
                         style="position: absolute; top: 320px; left: 30px; width: 350px; height: 30px; background-color: rgba(235,81,0,0.5); font-size: 20px; color: #ffffff; line-height: 30px; text-align: center;">
                        互联网装修
                    </div>
                </div>
                <div data-p="112.50" style="display: none;">
                    <img data-u="image" src="/assets/imgs/banner/003.jpg"/>

                    <div data-u="caption" data-t="1"
                         style="position: absolute; top: 30px; left: -380px; width: 350px; height: 30px; background-color: rgba(235,81,0,0.5); font-size: 20px; color: #ffffff; line-height: 30px; text-align: center;">
                        比自己装修还便宜
                    </div>
                </div>
                <div data-p="112.50" style="display: none;">
                    <img data-u="image" src="/assets/imgs/banner/004.jpg"/>

                    <div data-u="caption" data-t="2"
                         style="position: absolute; top: 30px; left: 30px; width: 350px; height: 30px; background-color: rgba(235,81,0,0.5); font-size: 20px; color: #ffffff; line-height: 30px; text-align: center;">
                        真的很省
                    </div>
                </div>
                <div data-p="112.50" style="display: none;">
                    <img data-u="image" src="/assets/imgs/banner/005.jpg"/>

                    <div data-u="caption" data-t="3"
                         style="position: absolute; top: 30px; left: 30px; width: 350px; height: 30px; background-color: rgba(235,81,0,0.6); font-size: 20px; color: #ffffff; line-height: 30px; text-align: center;">
                        家装管家
                    </div>
                </div>
                <div data-p="112.50" style="display: none;">
                    <img data-u="image" src="/assets/imgs/banner/006.jpg"/>

                    <div data-u="caption" data-t="4"
                         style="position: absolute; top: 30px; left: 920px; width: 350px; height: 30px; background-color: rgba(235,81,0,0.5); font-size: 20px; color: #ffffff; line-height: 30px; text-align: center;">
                        真正的互联网家装
                    </div>
                </div>
            </div>
            <!-- Bullet Navigator -->
            <div data-u="navigator" class="jssorb01" style="bottom:16px;right:10px;">
                <div data-u="prototype" style="width:12px;height:12px;"></div>
            </div>
            <!-- Arrow Navigator -->
                <span data-u="arrowleft" class="jssora02l" style="top:123px;left:8px;width:55px;height:55px;"
                      data-autocenter="2"></span>
                <span data-u="arrowright" class="jssora02r" style="top:123px;right:8px;width:55px;height:55px;"
                      data-autocenter="2"></span>
        </div>
    </div>
    <div class="col-md-3">
        <div class="col_r">
            <div class="sec_top_brand">
                <a class="sec_top_brand2" target="_blank" href="/owner/fadback">
                    <i class="fa fa-thumbs-o-up fa-2"> 96%业主反馈</i>
                    <em>&gt;</em>

                    <p>在家装管家找工长很靠谱</p>
                </a>
                <a class="sec_top_brand3" target="_blank" href="/headman/fadback" rel="nofollow">
                    <i class="fa fa-creative-commons fa-2"> 99%工长资质</i>
                    <em>&gt;</em>

                    <p>工长监管严格，施工不低于行业标准</p>
                </a>
                <a class="sec_top_brand3" target="_blank" href="/headman/fadback" rel="nofollow">
                    <i class="fa fa-line-chart fa-2"> 99%工长资质</i>
                    <em>&gt;</em>

                    <p>工长监管严格，施工不低于行业标准</p>
                </a>
                <a class="sec_top_brand3" target="_blank" href="/headman/fadback" rel="nofollow">
                    <i class="fa fa-clock-o fa-2"> 99%工长资质</i>
                    <em>&gt;</em>

                    <p>工长监管严格，施工不低于行业标准</p>
                </a>
                <a class="sec_top_brand3" target="_blank" href="/headman/fadback" rel="nofollow">
                    <i class="fa fa-coffee fa-2"> 99%工长资质</i>
                    <em>&gt;</em>

                    <p>工长监管严格，施工不低于行业标准</p>
                </a>
                <a class="sec_top_brand3" target="_blank" href="/headman/fadback" rel="nofollow">
                    <i class="fa fa-smile-o fa-2"> 99%工长资质</i>
                    <em>&gt;</em>

                    <p>工长监管严格，施工不低于行业标准</p>
                </a>
                <a class="sec_top_brand3" target="_blank" href="/headman/fadback" rel="nofollow">
                    <i class="fa fa-star fa-2"> 99%工长资质</i>
                    <em>&gt;</em>

                    <p>工长监管严格，施工不低于行业标准</p>
                </a>
            </div>
        </div>
    </div>
</div>
<div class="row index_zxxgt">
    <div class="index_module_header">
        <span><a href="/design/list" target="_blank" class="tlink">装修效果图</a></span>
        <em>已有 <b>32688117</b> 位业主找到灵感</em>
    </div>
    <div class="index_xgt">
        <a href="/design/c10031718.html" target="_blank" class="index_xgt_one" rel="nofollow">
            <img src="/assets/imgs/zxxg/a001.jpg" alt="简约欧式风格两室一厅" class="lazy" style="display: inline;">
            <span class="index_xgt_tranlayer"></span>

            <p>简约欧式风格两室一厅</p>
            <em>简化欧式，舍弃华丽艺术雕琢，回归简单生活空间。</em>
        </a>
        <a href="/design/c10036607.html" target="_blank" class="index_xgt_two" rel="nofollow">
            <img src="/assets/imgs/zxxg/b001.jpg" alt="125平简欧风三居" class="lazy" style="display: inline;">
            <span class="index_xgt_tranlayer"></span>

            <p>125平简欧风三居</p>
        </a>
        <a href="/design/c10025917.html" target="_blank" class="index_xgt_three" rel="nofollow">
            <img src="/assets/imgs/zxxg/c001.jpg" alt="简欧豪华公寓设计" class="lazy" style="display: inline;">
            <span class="index_xgt_tranlayer"></span>

            <p>简欧豪华公寓设计</p>
        </a>
        <a href="/design/c10003064.html" target="_blank" class="index_xgt_four" rel="nofollow">
            <img src="/assets/imgs/zxxg/c002.jpg" alt="简欧风四居设计" class="lazy" style="display: inline;">
            <span class="index_xgt_tranlayer"></span>

            <p>简欧风四居设计</p>
        </a>
        <a href="/design/p10362126.html" target="_blank" class="index_xgt_five" rel="nofollow">
            <img src="/assets/imgs/zxxg/d001.jpg" alt="简欧风格吧台设计" class="lazy" style="display: inline;">
            <span class="index_xgt_tranlayer"></span>

            <p>简欧风格吧台设计</p>
        </a>
    </div>
</div>
<div class="row index_zxxgt">
    <div class="index_module_header">
        <span><a href="/headman/list" target="_blank" class="tlink">优秀工长</a></span>
        <em>已注册 <b>8117</b> 位优秀工长</em>
    </div>
    <div class="index_xgt_gzxgt">
        <ul>
            <li><a href="/headman/00001" target="_blank">
                <img src="/assets/imgs/headman/h001.jpg" alt="孙乔伟" class="lazy" style="display: inline;">

                <div>
                    <span>孙乔伟</span>

                    <p class="fa fa-thumbs-up" title="好评度">99%</p>

                    <p class="fa fa-database" title="累计接单">129384次</p>
                </div>
            </a>
            </li>
            <li><a href="/headman/00002" target="_blank">
                <img src="/assets/imgs/headman/h002.jpg" alt="张军" class="lazy" style="display: inline;">
                <div>
                    <span>张军</span>

                    <p class="fa fa-thumbs-up" title="好评度">98%</p>

                    <p class="fa fa-database" title="累计接单">59384次</p>
                </div>
            </a>
            </li>
            <li><a href="/headman/00003" target="_blank">
                <img src="/assets/imgs/headman/h003.jpg" alt="李燕飞" class="lazy" style="display: inline;">
                <div>
                    <span>李燕飞</span>

                    <p class="fa fa-thumbs-up" title="好评度">97%</p>

                    <p class="fa fa-database" title="累计接单">9384次</p>
                </div>
            </a>
            </li>
            <li><a href="/headman/00004">
                <img src="/assets/imgs/headman/h004.jpg" alt="郭鹏军" class="lazy" style="display: inline;">
                <div>
                    <span>孙乔伟</span>

                    <p class="fa fa-thumbs-up" title="好评度">96%</p>

                    <p class="fa fa-database" title="累计接单">129384次</p>
                </div>
            </a>
            </li>
            <li><a href="/headman/00005" target="_blank">
                <img src="/assets/imgs/headman/h005.jpg" alt="夏长林" class="lazy" style="display: inline;">
                <div>
                    <span>夏长林</span>

                    <p class="fa fa-thumbs-up" title="好评度">99%</p>

                    <p class="fa fa-database" title="累计接单">39184次</p>
                </div>
            </a>
            </li>
            <li><a href="/headman/00006" target="_blank">
                <img src="/assets/imgs/headman/h006.jpg" alt="姜必忠" class="lazy" style="display: inline;">
                <div>
                    <span>姜必忠</span>

                    <p class="fa fa-thumbs-up" title="好评度">99%</p>

                    <p class="fa fa-database" title="累计接单">29384次</p>
                </div>
            </a>
            </li>
            <li><a href="http://xiaoguotu.to8to.com/list-h6s336i0" target="_blank">
                <img src="assets/imgs/headman/h007.jpg" alt="董必山" class="lazy" style="display: inline;">
                <div>
                    <span>董必山</span>

                    <p class="fa fa-thumbs-up" title="好评度">92%</p>

                    <p class="fa fa-database" title="累计接单">12934次</p>
                </div>
            </a>
            </li>
            <li><a href="http://xiaoguotu.to8to.com/list-h6s16i0" target="_blank">
                <img src="assets/imgs/headman/h008.jpg" alt="胡勇" class="lazy" style="display: inline;">
                <div>
                    <span>胡勇</span>

                    <p class="fa fa-thumbs-up" title="好评度">91%</p>

                    <p class="fa fa-database" title="累计接单">19384次</p>
                </div>
            </a>
            </li>
        </ul>
    </div>
</div>
<div class="row index_zxgl">
    <div class="index_module_header">
        <span><a href="/gonglve/list" target="_blank" class="tlink">成功案例</a></span>
        <em>已有 <b>18206</b> 位业主查看小区真实案例</em>
    </div>
    <div class="index_zxgl_dairy">
        <div class="zxgl_tit"><a href="http://www.to8to.com/riji/ " target="_blank"><span class="zxgl_tit_ico"></span>装修日记<em></em></a>
        </div>
        <div class="diary_list">
            <ul>
                <li>
                    <a href="http://www.to8to.com/riji/2743150/" target="_blank" rel="nofollow">
                        <img src="http://pic.to8to.com/hot/509_5674.jpg?1446428750"
                             data-original="http://pic.to8to.com/hot/509_5674.jpg?1446428750" width="240" height="168"
                             class="lazy" alt="元气妹子独自改造二手房" style="display: inline;">
                        <span class="diary_title">元气妹子独自改造二手房</span>
                        <span class="diary_title_iebg"></span>
                    </a>
                    <a class="diary_status" href="" target="_blank">现代风</a>
                </li>
                <li>
                    <a href="http://www.to8to.com/riji/48071/" target="_blank" rel="nofollow">
                        <img src="http://pic.to8to.com/hot/509_5676.jpg?1446428769"
                             data-original="http://pic.to8to.com/hot/509_5676.jpg?1446428769" width="240" height="168"
                             class="lazy" alt="货比三家！暖心奶爸筑爱窝" style="display: inline;">
                        <span class="diary_title">货比三家！暖心奶爸筑爱窝</span>
                        <span class="diary_title_iebg"></span>
                    </a>
                    <a class="diary_status" href="" target="_blank">简约风</a>
                </li>
                <li>
                    <a href="http://www.to8to.com/riji/2638366/" target="_blank" rel="nofollow">
                        <img src="http://pic.to8to.com/hot/509_5673.jpg?1446428798"
                             data-original="http://pic.to8to.com/hot/509_5673.jpg?1446428798" width="240" height="168"
                             class="lazy" alt="话唠小公主打造精致梦幻屋" style="display: inline;">
                        <span class="diary_title">话唠小公主打造精致梦幻屋</span>
                        <span class="diary_title_iebg"></span>
                    </a>
                    <a class="diary_status" href="" target="_blank">东南亚风</a>
                </li>
                <li>
                    <a href="http://www.to8to.com/riji/1689903/" target="_blank" rel="nofollow">
                        <img src="http://pic.to8to.com/hot/509_5675.jpg?1446428817"
                             data-original="http://pic.to8to.com/hot/509_5675.jpg?1446428817" width="240" height="168"
                             class="lazy" alt="大龄文青的半独立装修纪录" style="display: inline;">
                        <span class="diary_title">大龄文青的半独立装修纪录</span>
                        <span class="diary_title_iebg"></span>
                    </a>
                    <a class="diary_status" href="" target="_blank">美式风</a>
                </li>

            </ul>
        </div>
    </div>
</div>
<div class="row index_jjsc">
    <div class="index_module_header">
        <p class="col_r"><a href="http://mall.to8to.com/jiancai/" target="_blank"
                            onclick="javascript:clickStream.getCvParams('1_1_1_182')">建材城</a><a
                href="http://mall.to8to.com/jiaju/" target="_blank"
                onclick="javascript:clickStream.getCvParams('1_1_1_183')">家具城</a><a href="http://mall.to8to.com/temai/"
                                                                                    target="_blank"
                                                                                    onclick="javascript:clickStream.getCvParams('1_1_1_184')">品牌特卖</a><a
                href="http://mall.to8to.com/zcb/" target="_blank"
                onclick="javascript:clickStream.getCvParams('1_1_1_185')">主材包</a></p>
        <span><a target="_blank" href="http://mall.to8to.com/" class="tlink tlink_jj">家居商城</a></span>
    </div>
    <div class="index_list_buy bg_7f4fad_div mtb20">

        <div class="content clear">
            <div class="sec1">
                <a class="clickstream_tag calcClickStream" rel="nofollow"
                   href="http://mall.to8to.com/shop/huodong/zhc1111" target="_blank"
                   onclick="javascript:clickStream.getCvParams('1_1_1_178')"><img
                        src="http://pic.to8to.com/hot/739_7547.jpg?1445571907"
                        data-original="http://pic.to8to.com/hot/739_7547.jpg?1445571907" width="300" height="188" alt=""
                        class="lazy" style="display: inline;"></a>

                <div class="sec1_div1_box">
                    <div class="sec1_div1 col_l">
                        <h4><a href="http://mall.to8to.com/jiancai/" target="_blank">建材城推荐:</a></h4>
                        <a href="http://mall.to8to.com/search?c=50020007" target="_blank"
                           onclick="javascript:clickStream.getCvParams('1_1_1_190')"><span>卫浴</span></a>
                        <a href="http://mall.to8to.com/search?c=50021011" target="_blank"
                           onclick="javascript:clickStream.getCvParams('1_1_1_191')"><span>开关</span></a>
                        <a href="http://mall.to8to.com/search?c=50019935" target="_blank"
                           onclick="javascript:clickStream.getCvParams('1_1_1_192')"><span>灯饰</span></a>
                        <a href="http://mall.to8to.com/search?c=50012082.350511.50015382.350503.50013508.50008556.350502"
                           target="_blank" onclick="javascript:clickStream.getCvParams('1_1_1_193')"><span>厨电</span></a>
                        <a href="http://mall.to8to.com/search?c=50002409" target="_blank"
                           onclick="javascript:clickStream.getCvParams('1_1_1_194')"><span>水槽</span></a>
                        <a href="http://mall.to8to.com/search?c=50013322" target="_blank"
                           onclick="javascript:clickStream.getCvParams('1_1_1_195')"><span>墙纸</span></a>
                    </div>
                    <div class="sec1_div1 col_r">
                        <h4><a href="http://mall.to8to.com/jiaju/" target="_blank">家具城推荐:</a></h4>
                        <a href="http://mall.to8to.com/search?c=50020006" target="_blank"
                           onclick="javascript:clickStream.getCvParams('1_1_1_196')"><span>沙发</span></a>
                        <a href="http://mall.to8to.com/search?c=50021837" target="_blank"
                           onclick="javascript:clickStream.getCvParams('1_1_1_197')"><span>床垫</span></a>
                        <a href="http://mall.to8to.com/search?c=50015200" target="_blank"
                           onclick="javascript:clickStream.getCvParams('1_1_1_198')"><span>床</span></a>
                        <a href="http://mall.to8to.com/search?c=211509" target="_blank"
                           onclick="javascript:clickStream.getCvParams('1_1_1_199')"><span>电视柜</span></a>
                        <a href="http://mall.to8to.com/search?c=50001709" target="_blank"
                           onclick="javascript:clickStream.getCvParams('1_1_1_200')"><span>茶几</span></a>
                        <a href="http://mall.to8to.com/search?c=50001403" target="_blank"
                           onclick="javascript:clickStream.getCvParams('1_1_1_201')"><span>餐桌</span></a>
                    </div>
                </div>
                <div class="sec1_div3">
                    <p>热卖促销： </p>
                    <ul>
                        <li><a href="http://mall.to8to.com/temai/13676.html" target="_blank" title="方太经典烟灶套餐【赠送刀具七件套】"
                               onclick="javascript:clickStream.getCvParams('1_1_1_202')">方太经典烟灶套餐【赠送刀具七件套】<span
                                class="f_song">&gt;</span></a></li>
                        <li><a href="http://mall.to8to.com/temai/13388.html" target="_blank" title="利豪大小户型现代布艺沙发组合"
                               onclick="javascript:clickStream.getCvParams('1_1_1_203')">利豪大小户型现代布艺沙发组合<span
                                class="f_song">&gt;</span></a></li>
                    </ul>
                </div>
            </div>
            <div class="sec2 ">
                <div class="index_banner">
                    <a href="javascript:void(0);" class="bLeft"><span class="banner_arrow">上一张</span></a>
                    <a href="javascript:void(0);" class="bRight"><span class="banner_arrow">下一张</span></a>
                    <ul id="mall_banner" class="banner_slider">
                        <li class="" style="opacity: 1; display: block;">
                            <a href="http://www.to8to.com/bx/index.php?hotid=7503&amp;bannerheaderurl=aHR0cDovL21hbGwudG84dG8uY29tL3RlbWFpLzEzNjc0Lmh0bWw="
                               target="_blank" rel="nofollow" onclick="javascript:clickStream.getCvParams('1_1_1_179')"><img
                                    src="http://pic.to8to.com/hot/740_7503.jpg?1445003330" width="358" height="400"
                                    alt="轮播图1" class="lazy" style="display: inline;"></a>
                        </li>
                        <li class="on" style="opacity: 1; display: none;">
                            <a href="http://www.to8to.com/bx/index.php?hotid=7504&amp;bannerheaderurl=aHR0cDovL21hbGwudG84dG8uY29tL3RlbWFpLzE0NjI1Lmh0bWw="
                               target="_blank" rel="nofollow" onclick="javascript:clickStream.getCvParams('1_1_1_180')"><img
                                    src="http://pic.to8to.com/hot/740_7504.jpg?1445003352" width="358" height="400"
                                    alt="轮播图2" class="lazy" style="display: inline;"></a>
                        </li>
                        <li class="on" style="opacity: 1; display: none;">
                            <a href="http://www.to8to.com/bx/index.php?hotid=7505&amp;bannerheaderurl=aHR0cDovL21hbGwudG84dG8uY29tL3RlbWFpLzE1NjczLmh0bWw="
                               target="_blank" rel="nofollow" onclick="javascript:clickStream.getCvParams('1_1_1_181')"><img
                                    src="http://pic.to8to.com/hot/740_7505.jpg?1445003396" width="358" height="400"
                                    alt="轮播图3" class="lazy" style="display: inline;"></a>
                        </li>
                    </ul>
                    <ul class="slider_mark" style="margin-left: -30px;">
                        <li class="mark_dot mark_dot_on"><a href="javascript:void(0);" class="slider_ico"></a></li>
                        <li class="mark_dot"><a href="javascript:void(0);" class="slider_ico"></a></li>
                        <li class="mark_dot"><a href="javascript:void(0);" class="slider_ico"></a></li>
                    </ul>
                </div>
            </div>
            <div class="sec3">
                <ul id="mall_recommend_list" class="clear">
                    <li><a class="mall_clickstream" href="http://mall.to8to.com/temai/15254.html" target="_blank"
                           data-ptag="1_1_1_186"> <img src="http://pic.to8to.com/hot/741_7506.jpg?1445003752"
                                                       width="155" height="120" alt="undefined"
                                                       style="display: inline;">

                        <p>simon西蒙二三居室55雅白系列35只装套餐</p>

                        <p class="f_c_e81a62">￥ <span class="f_arial">415.60</span></p>                    <em
                                class="icn_triangle_red_down">5.3折</em> </a></li>
                    <li><a class="mall_clickstream" href="http://mall.to8to.com/temai/13974.html" target="_blank"
                           data-ptag="1_1_1_187"> <img src="http://pic.to8to.com/hot/741_7507.jpg?1445003779"
                                                       width="155" height="120" alt="undefined"
                                                       style="display: inline;">

                        <p>君御现代简约主卧室灯浪漫温馨LED水晶灯吸顶灯餐厅灯具客厅灯饰2101/2102</p>

                        <p class="f_c_e81a62">￥ <span class="f_arial">139.00</span></p>                    <em
                                class="icn_triangle_red_down">5折</em> </a></li>
                    <li><a class="mall_clickstream" href="http://mall.to8to.com/temai/13388.html" target="_blank"
                           data-ptag="1_1_1_188"> <img src="http://pic.to8to.com/hot/741_7508.jpg?1445003805"
                                                       width="155" height="120" alt="undefined"
                                                       style="display: inline;">

                        <p>利豪 大小户型现代布艺沙发组合L14-0286</p>

                        <p class="f_c_e81a62">￥ <span class="f_arial">3999.00</span></p>                    <em
                                class="icn_triangle_red_down">3折</em> </a></li>
                    <li><a class="mall_clickstream" href="http://mall.to8to.com/temai/16551.html" target="_blank"
                           data-ptag="1_1_1_189"> <img src="http://pic.to8to.com/hot/741_7509.jpg?1445003828"
                                                       width="155" height="120" alt="undefined"
                                                       style="display: inline;">

                        <p>丽星 床 皮艺床 软床 真皮床 真皮靠背 米白色</p>

                        <p class="f_c_e81a62">￥ <span class="f_arial">1980.00</span></p>                    <em
                                class="icn_triangle_red_down">6.3折</em> </a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="row index_zxgl">
    <div class="index_module_header">
        <span><a href="http://www.to8to.com/gonglve/" target="_blank" class="tlink">装修攻略</a></span>
        <em>已有 <b>18192206</b> 位业主学习到装修知识</em>
    </div>
    <div class="index_zxgl_learn">
        <div class="zxgl_tit"><a href="http://www.to8to.com/yezhu/ " target="_blank"><span class="zxgl_tit_ico"></span>学装修<em></em></a>
        </div>
        <div class="learn_list">
            <div class="learn_item">
                <div class="item_hd"><a href="http://www.to8to.com/ask/" target="_blank" class="tlink">装修问答</a></div>
                <div class="item_bd">
                    <a href="http://www.to8to.com/ask/" target="_blank" rel="nofollow">
                        <img class="item_img lazy"
                             src="http://img.to8to.com/decorate_gallery/images/jpg/index_c4.jpg?v=1445575488" alt="装修问答"
                             width="100" height="100"
                             data-original="http://img.to8to.com/decorate_gallery/images/jpg/index_c4.jpg?v=1445575488"
                             style="display: block;">
                    </a>
                    <ul>
                        <li><em class="index_ico_li"></em><a href="http://www.to8to.com/ask/k875102.html"
                                                             target="_blank">现代简约实木床该怎么选择？&nbsp;</a></li>
                        <li><em class="index_ico_li"></em><a href="http://www.to8to.com/ask/k866853.html"
                                                             target="_blank">瓷砖拼贴电视背景墙好看吗?&nbsp;</a></li>
                        <li><em class="index_ico_li"></em><a href="http://www.to8to.com/ask/k880803.html"
                                                             target="_blank">请问地暖管安装方法是怎样的？</a></li>
                        <li><em class="index_ico_li"></em><a href="http://www.to8to.com/ask/k882025.html"
                                                             target="_blank">如何去除厨房油污?&nbsp;</a></li>

                    </ul>
                </div>
            </div>
            <div class="learn_item">
                <div class="item_hd">
                    <a href="http://www.to8to.com/yezhu/list-h9s4" target="_blank" class="tlink">装修风水</a>
                </div>
                <div class="item_bd">
                    <a href="http://www.to8to.com/yezhu/list-h9s4" target="_blank" rel="nofollow">
                        <img class="item_img lazy"
                             src="http://img.to8to.com/decorate_gallery/images/jpg/index_c2.jpg?v=1445575488" alt="装修风水"
                             width="100" height="100"
                             data-original="http://img.to8to.com/decorate_gallery/images/jpg/index_c2.jpg?v=1445575488"
                             style="display: block;">
                    </a>
                    <ul>
                        <li><em class="index_ico_li"></em><a href="http://www.to8to.com/yezhu/z18946.html"
                                                             target="_blank">梦见坐电梯暗示什么? 不同人员梦见坐电梯的寓意</a></li>
                        <li><em class="index_ico_li"></em><a href="http://www.to8to.com/yezhu/z6706.html"
                                                             target="_blank">农村住宅风水学 教你如何看农村居家风水学</a></li>
                        <li><em class="index_ico_li"></em><a href="http://www.to8to.com/yezhu/z3849.html"
                                                             target="_blank">店铺装修风水知识</a></li>
                        <li><em class="index_ico_li"></em><a href="http://www.to8to.com/yezhu/z9858.html"
                                                             target="_blank">房屋朝向风水 现代房子的朝向风水怎么看</a></li>

                    </ul>
                </div>
            </div>
            <div class="learn_item">
                <div class="item_hd">装修工具</div>
                <div class="item_bd">
                    <a href="http://www.to8to.com/tools/tool_index.php" target="_blank">
                        <img class="item_img lazy"
                             src="http://img.to8to.com/decorate_gallery/images/jpg/toolsjsq.jpg?v=1445575488" alt="装修工具"
                             width="100" height="100"
                             data-original="http://img.to8to.com/decorate_gallery/images/jpg/toolsjsq.jpg?v=1445575488"
                             style="display: block;">
                    </a>
                    <ul>
                        <li><em class="index_ico_li"></em><a href="http://www.to8to.com/yezhu/one_hour_class.php"
                                                             target="_blank" rel="nofollow">装修完全手册</a></li>
                        <li><em class="index_ico_li"></em><a href="http://www.to8to.com/tools/tool_index.php"
                                                             target="_blank" rel="nofollow">装修计算器大全</a></li>
                        <li><em class="index_ico_li"></em><a href="http://www.to8to.com/yezhu/z6086.html"
                                                             target="_blank" rel="nofollow">装修合同下载</a></li>
                        <li><em class="index_ico_li"></em><a href="http://www.to8to.com/yezhu/z9391.html"
                                                             target="_blank" rel="nofollow">土巴兔监理项目表下载 </a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<#include "control/footer.ftl">
</body>
</html>
