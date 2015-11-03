<#--
  Created by IntelliJ IDEA.
  User: hongshuai.hs
  Date: 2015/11/1
  Time: 11:10
-->
<html>
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
    <div id="advantages">
        <div class="container">
            <div class="same-height-row">
                <div class="col-sm-4">
                    <div class="box same-height clickable" style="height: 168px;">
                        <div class="icon"><i class="fa fa-heart"></i>
                        </div>

                        <h3><a href="#">We love our customers</a></h3>

                        <p>We are known to provide best possible service ever</p>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="box same-height clickable" style="height: 168px;">
                        <div class="icon"><i class="fa fa-tags"></i>
                        </div>

                        <h3><a href="#">Best prices</a></h3>

                        <p>You can check that the height of the boxes adjust when longer text like this one is used in
                            one of them.</p>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="box same-height clickable" style="height: 168px;">
                        <div class="icon"><i class="fa fa-thumbs-up"></i>
                        </div>

                        <h3><a href="#">100% satisfaction guaranteed</a></h3>

                        <p>Free returns on everything for 3 months.</p>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </div>
    <div class="row">
        <div class="col-md-8">.col-md-8</div>
        <div class="col-md-4">.col-md-4</div>
    </div>
    <div class="row">
        <div class="col-md-4">.col-md-4</div>
        <div class="col-md-4">.col-md-4</div>
        <div class="col-md-4">.col-md-4</div>
    </div>
    <div class="row">
        <div class="col-md-6">.col-md-6</div>
        <div class="col-md-6">.col-md-6</div>
    </div>
</div>
<#include "control/footer.ftl">
</body>
</html>
