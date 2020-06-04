<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta name="format-detection" content="telephone=no">
    <meta charset="UTF-8">

    <meta name="description" content="Violate Responsive Admin Template">
    <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">

    <title>客户基本属性分析</title>

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <link href="${pageContext.request.contextPath}/css/form.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/calendar.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/media-player.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/generics.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/mstp_map.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/menu.css" rel="stylesheet">
</head>

<body id="skin-blur-ocean">
<!-- header -->
<jsp:include page="header.jsp"/>
<!-- /.header -->
<div class="clearfix"></div>

<section id="main" class="p-relative" role="main">

    <!-- Sidebar -->
    <jsp:include page="sidebar.jsp"/>
    <!-- /.Sidebar -->

    <!-- Content -->
    <section id="content" class="container">

        <!-- Breadcrumb -->
        <ol class="breadcrumb hidden-xs">
            <li><a href="${pageContext.request.contextPath}/page/page_index">首页</a></li>
            <li class="active">用户全息图</li>
        </ol>
        <h4 class="page-title"></h4>
        <!-- 地图 -->
        <div class="block-area">

            <div class="row">
                <!-- World Map -->
                <div class="col-md-12">
                    <div class="tile">
                        <h2 class="tile-title"></h2>
                        <div class="tile-config dropdown">
                            <a data-toggle="dropdown" href="" class="tooltips tile-menu" title="Options"></a>
                            <ul class="dropdown-menu animated pull-right text-right">
                                <li><a href="#top">Refresh</a></li>
                            </ul>
                        </div>
                        <div id='chinaClient' style='height:800px;width:100%;'></div>
                    </div>
                </div>

            </div>
        </div>

        <!-- 柱状图：对地图的数据的展示 -->
        <div class="block-area">

            <div class="row">
                <!-- Chart 5 -->
                <div class="col-md-12">
                    <div class="tile">
                        <h2 class="tile-title"></h2>
                        <div class="tile-config dropdown">
                            <a data-toggle="dropdown" href="" class="tooltips tile-menu" title="Options"></a>
                            <ul class="dropdown-menu animated pull-right text-right">
                                <li><a href="#top">Refresh</a></li>
                            </ul>
                        </div>
                        <div id='clientBar' style='height:600px;width:100%;'></div>
                    </div>
                </div>

            </div>
        </div>

        <!-- Pies -->
        <div class="block-area">
            <div class="row">
                <div class="col-md-4">
                    <div class="tile">
                        <h2 class="tile-title">用户性别聚合分析</h2>
                        <div class="tile-config dropdown">
                            <a data-toggle="dropdown" href="" class="tooltips tile-menu" title="Options"></a>
                            <ul class="dropdown-menu pull-right text-right">
                                <li><a href="#top">Refresh</a></li>
                            </ul>
                        </div>
                        <div class="p-10">
                            <div id="genderAggregate" class="main-chart" style="height: 300px"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="tile">
                        <h2 class="tile-title">用户学历聚合分析</h2>
                        <div class="tile-config dropdown">
                            <a data-toggle="dropdown" href="" class="tooltips tile-menu" title="Options"></a>
                            <ul class="dropdown-menu pull-right text-right">
                                <li><a href="#top">Refresh</a></li>
                            </ul>
                        </div>
                        <div class="p-10">
                            <div id="academicAggregate" class="main-chart" style="height: 300px"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="tile">
                        <h2 class="tile-title">用户职业聚合分析</h2>
                        <div class="tile-config dropdown">
                            <a data-toggle="dropdown" href="" class="tooltips tile-menu" title="Options"></a>
                            <ul class="dropdown-menu pull-right text-right">
                                <li><a href="#top">Refresh</a></li>
                            </ul>
                        </div>
                        <div class="p-10">
                            <div id="careerAggregate" class="main-chart" style="height: 300px"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <hr class="whiter m-t-20 m-b-20" />

    </section>
</section>

<!-- Javascript Libraries -->
<!-- jQuery -->
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> <!-- jQuery Library -->
<script src="http://www.jq22.com/jquery/jquery-ui-1.11.0.js"></script> <!-- jQuery UI -->
<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script> <!-- jQuery Easing - Requirred for Lightbox -->

<!-- Bootstrap -->
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

<!-- Charts -->
<script src="${pageContext.request.contextPath}/js/charts/jquery.flot.js"></script> <!-- Flot Main -->
<script src="${pageContext.request.contextPath}/js/charts/jquery.flot.time.js"></script> <!-- Flot sub -->
<script src="${pageContext.request.contextPath}/js/charts/jquery.flot.animator.min.js"></script> <!-- Flot sub -->
<script src="${pageContext.request.contextPath}/js/charts/jquery.flot.resize.min.js"></script> <!-- Flot sub - for repaint when resizing the screen -->
<script src="${pageContext.request.contextPath}/js/charts/jquery.flot.orderBar.js"></script> <!-- Flot Bar chart -->
<script src="${pageContext.request.contextPath}/js/charts/jquery.flot.pie.min.js"></script> <!-- Flot Pie chart -->

<script src="${pageContext.request.contextPath}/js/sparkline.min.js"></script> <!-- Sparkline - Tiny charts -->
<script src="${pageContext.request.contextPath}/js/easypiechart.js"></script> <!-- EasyPieChart - Animated Pie Charts -->
<script src="${pageContext.request.contextPath}/js/mstp_map.js"></script> <!-- All the above chart related functions -->

<!-- Map -->
<script src="${pageContext.request.contextPath}/js/maps/jvectormap.min.js"></script> <!-- jVectorMap main library -->
<!--Media Player-->
<script src="${pageContext.request.contextPath}/js/media-player.min.js"></script> <!-- USA Map for jVectorMap -->

<!-- UX -->
<script src="${pageContext.request.contextPath}/js/scroll.min.js"></script> <!-- Custom Scrollbar -->

<!-- Other -->
<script src="${pageContext.request.contextPath}/js/calendar.min.js"></script> <!-- Calendar -->
<script src="${pageContext.request.contextPath}/js/feeds.min.js"></script> <!-- News Feeds -->

<!-- All JS functions -->
<script src="${pageContext.request.contextPath}/js/functions.js"></script>
<!-- echarts -->
<script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
<script src="${pageContext.request.contextPath}/js/westeros.js"></script>
<!-- Map图 -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/china.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/world.js"></script>
<script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=OMlwEb71SxZepXEYvne0GcmVCn8mubTI"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/bmap.min.js"></script>
<!-- customized charts -->
<script type="text/javascript">
    $(document).ready(function() {
        //******* 饼状图1 *******
        var myChart = echarts.init(document.getElementById('genderAggregate'), 'westeros');
        myChart.showLoading();
        var genderNums=[];
        var gnames=[];
        $.ajax({
            url:"${pageContext.request.contextPath}/webUser/getGenderPersonNumData",
            type:'GET',
            dataType:"json",
            success: function (data) {
                myChart.hideLoading();  //隐藏加载动画
                if(data.length>0) {
                    for (var i = 0; i < data.length; i++) {
                        gnames.push(data[i].gender);
                        genderNums.push({
                            name:data[i].gender,
                            value:data[i].num
                        })
                    }
                }
                // 指定图表的配置项和数据
                var option =  {
                    // background:'#fff',
                    tooltip : {
                        trigger: 'item'
                    },
                    legend: {
                        data: gnames,
                        right:'5%'
                    },
                    series : [
                        {
                            name: '访问来源',
                            type: 'pie',
                            radius : '55%',
                            center: ['50%', '60%'],
                            data:genderNums
                            // itemStyle: {
                            //     emphasis: {
                            //         shadowBlur: 10,
                            //         shadowOffsetX: 0,
                            //         shadowColor: 'rgba(0, 0, 0, 0.5)'
                            //     }
                            // }
                        }
                    ]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            },
            error:function () {
                alert("回调错误！");
            }
        });

        //******* 饼状图2 *******
        var myChart2 = echarts.init(document.getElementById('academicAggregate'), 'westeros');
        myChart2.showLoading();
        var educationNums=[];
        var enames=[];
        $.ajax({
            url:"${pageContext.request.contextPath}/webUser/getEducationPersonNumData",
            type:'GET',
            dataType:"json",
            success: function (data) {
                myChart2.hideLoading();  //隐藏加载动画
                if(data.length>0) {
                    for (var i = 0; i < data.length; i++) {
                        enames.push(data[i].pname);
                        educationNums.push({
                            name:data[i].pname,
                            value:data[i].pnum
                        })
                    }
                }
                // 指定图表的配置项和数据
                var option2 = {
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    },
                    legend:{
                        data: enames,
                        right:'5%'
                    },
                    series : [
                        {
                            name:'访问来源',
                            type:'pie',
                            radius : '55%',
                            center: ['50%', '50%'],
                            data:educationNums.sort(function (a, b) { return a.value - b.value; }),
                            roseType: 'radius',
                            itemStyle: {
                                emphasis: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                }
                            }

                        }
                    ]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart2.setOption(option2);
            },
            error:function () {
                alert("回调错误！")
            }
        });

        //******* 饼状图3 *******
        var myChart3 = echarts.init(document.getElementById('careerAggregate'), 'westeros');
        myChart3.showLoading();
        var careerNums=[];
        var tnames=[];
        $.ajax({
            url:"${pageContext.request.contextPath}/webUser/getOccupationPersonNumData",
            type:'GET',
            dataType:"json",
            success: function (data) {
                myChart3.hideLoading();  //隐藏加载动画
                if(data.length>0) {
                    for (var i = 0; i < data.length; i++) {
                        tnames.push(data[i].tname);
                        careerNums.push({
                            name:data[i].tname,
                            value:data[i].tnum
                        })
                    }
                }
                // 指定图表的配置项和数据
                var option3 =  {
                    tooltip : {
                        trigger: 'item',
                    },
                    legend: {
                        data: tnames,
                        right:'5%'
                    },
                    series : [
                        {
                            name: '访问来源',
                            type: 'pie',
                            radius : '55%',
                            center: ['50%', '60%'],
                            data:careerNums,
                            itemStyle: {
                                emphasis: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                }
                            }
                        }
                    ]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart3.setOption(option3);
            },
            error:function () {
                alert("回调错误！")
            }
        });

        //******* 地图 *******
        var dom = document.getElementById("chinaClient");
        var myChart4 = echarts.init(dom);

        var data = [];
        $.ajax({
            url:"${pageContext.request.contextPath}/webUser/getProvincePersonNumData",
            type:'GET',
            async: false,
            dataType:"json",
            success: function (res) {
                if(res.length>0) {
                    for (var i = 0; i < res.length; i++) {
                        data.push({
                            name:res[i].province,
                            value:res[i].pnum
                        })
                    }
                }
            },
            error:function () {
                alert("获取数据失败！")
            }
        });

        //获取省市的经纬度数据
        var geoCoordMap=new Object();
        $.ajax({
            type: 'get',
            async: false,
            url: '${pageContext.request.contextPath}/js/coordinatesData.json',
            dataType: "json",
            success: function (temp) {
                var a = temp.data;
                for (var i = 0; i < a.length; i++) {
                    geoCoordMap[a[i].areaName]=[a[i].longitude, a[i].latitude];
                }
            },
            error: function (err) {
                alert(err + "获取坐标数据失败!");
            }
        });

        //将地区名、坐标、要展示的数据封装起来
        var convertData = function(data) {
            var res = [];
            for (var i = 0; i < data.length; i++) {
                var geoCoord = geoCoordMap[data[i].name];
                if (geoCoord) {
                    res.push({
                        name:data[i].name,  //获取该地区的名字
                        value:geoCoord.concat(data[i].value)    //获取该地区要展示的数据
                    });
                }
            }
            return res;
        };

        var option4 = {
            // backgroundColor:"#203a55", //地图背景色
            animation:true,
            animationDuration:1e3,
            animationEasing:"cubicInOut",
            animationDurationUpdate:1e3,
            animationEasingUpdate:"cubicInOut",
            title:{
                text:"用户全国分布图",
                left:"center",
                top:20,
                textStyle:{
                    color:"#fff" //标题文字颜色
                }
            },
            tooltip : {
                trigger: 'item'
            },
            legend: {
                orient: 'vertical',
                top: 'bottom',
                left: 'right',
                data:['人数'],
                textStyle: {
                    color: '#fff'
                }
            },
            geo: {
                map: 'china',
                roam: true,
                label: {
                    emphasis:{ //鼠标移入动态的时候显示的默认样式,也就是鼠标移上去，显示该地区的地名，可具体设置样式
                        show:false
                    }
                },
                itemStyle: {
                    normal:{ //静态的时候显示的默认样式
                        areaColor:"#142957",//地图颜色
                        borderColor:"#0b6783" //地图的各区域间分界线的 及地图边缘 的颜色
                    },
                    emphasis:{
                        areaColor:"#0b1c2d" //鼠标悬停时区域变成的颜色
                    }
                }
            },
            series : [ // 所有的点
                {
                    name: '人数',
                    type: 'effectScatter',
                    coordinateSystem: 'geo',
                    data: convertData(data),
                    rippleEffect:{
                        brushType:"stroke" //stroke(涟漪)和fill(扩散)，两种效果
                    },
                    encode: {
                        value: 2
                    },
                    symbolSize: function (val) {
                        return val[2] / 6;
                    },
                    label: { //是否显示地图上的文字
                        formatter: '{b}',
                        position: 'right',
                        show: true
                    },
                    itemStyle: {
                        normal:{
                            color:"#a6c84c", //地图各地区的点和文字的颜色
                            shadowBlur:10,
                            shadowColor:"#333" //地图各地区的点的阴影颜色
                        }
                    },
                    emphasis: {
                        label: {
                            show: true
                        }
                    }
                },
                { // 数据前5名的点
                    name: 'Top 5',
                    type: 'effectScatter',
                    coordinateSystem: 'geo',
                    data: convertData(data.sort(function (a, b) {
                        return b.value - a.value;
                    }).slice(0, 5)),
                    encode: {
                        value: 2
                    },
                    symbolSize: function (val) {
                        return val[2] / 6;
                    },
                    showEffectOn: 'render',
                    rippleEffect: {
                        brushType: 'stroke'
                    },
                    hoverAnimation: true,
                    label: {
                        formatter: '{b}',
                        position: 'right',
                        show: true
                    },
                    itemStyle: {
                        color: '#f4e925',
                        shadowBlur: 10,
                        shadowColor: '#333'
                    },
                    zlevel: 1
                }
            ]
        };

        if (option4 && typeof option4 === "object") {
            myChart4.setOption(option4, true);
        }

        var myChart5=echarts.init(document.getElementById('clientBar'));
        //给数据排序
        data.sort(function(a, b) {
            return a.value - b.value;
        });
        //获取数据
        var categoryData=[];
        var barData=[];
        for (var i = 0; i < data.length; i++) {
            categoryData.push(data[i].name);
            barData.push(data[i].value);
        }

        var option5={
            title: {
                text:"全国用户统计排行榜",
                left:"center",
                top:20,
                textStyle:{
                    color:"#fff" //标题文字颜色
                }
            },
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
                }
            },
            legend: {
                data: ['人数']
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: {
                type: 'value',
                boundaryGap: [0, 0.01],
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: 'gray', //更改坐标轴文字颜色
                        fontSize: 12 //更改坐标轴文字大小
                    }
                }
            },
            yAxis: {
                type: 'category',
                data: categoryData,
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: 'gray', //更改坐标轴文字颜色
                        fontSize: 12 //更改坐标轴文字大小
                    }
                }
            },
            series: [
                {
                    name: '2011年',
                    type: 'bar',
                    data: barData,
                    itemStyle: {
                        normal: {
                            label: {
                                show: true, //开启显示：在柱子顶端显示数据
                                position: 'right' //在右边显示
                            },
                            color:'#a6c84c' //柱子的颜色
                        }
                    }
                }
            ]
        };
        myChart5.setOption(option5);

    });
</script>
</body>
</html>

