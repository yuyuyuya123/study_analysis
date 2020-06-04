<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <meta name="format-detection" content="telephone=no">
    <meta charset="UTF-8">

    <meta name="description" content="Violate Responsive Admin Template">
    <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">

    <title>课程选择分析</title>

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
    <link href="${pageContext.request.contextPath}/css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <link href="${pageContext.request.contextPath}/css/form.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/media-player.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/calendar.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/generics.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/jquery.datetimepicker.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/AdminLTE.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/_all-skins.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" />
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

        <!-- Main Widgets -->
        <div class="block-area">
            <div class="row">
                <div class="col-md-12">
                    <!-- Chart 1 -->
                    <div class="tile" style="height: 350px">
                        <h2 class="tile-title" style="font-size: 20px">课程选择人数统计</h2>
                        <div class="tile-config dropdown">
                            <a data-toggle="dropdown" href="" class="tile-menu"></a>
                            <ul class="dropdown-menu pull-right text-right">
                                <li><a href="#top">Refresh</a></li>
                            </ul>
                        </div>
                        <div class="col-md-12" style="margin: 0px;padding: 0px">
                            <div class="col-md-9" style=" height: 270px;">
                                <div class="row " style="margin-top:15px;">
                                    <div class='col-md-4 hide'>
                                        <div class='col-md-4'>
                                            <button class="btn btn-default">机构:</button>
                                        </div>
                                        <div class='col-md-8'>
                                            <input id='123' class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div id="coursePersonNum" class="col-md-12 p-b-5" style=" height: 300px;"></div>
                            </div>
                            <div class="col-md-2">
                                <label style="height: 30px"></label>
                                <h3>课程选择</h3>
                                <span style="font-size: 18px">该表展示当前用户<span style="font-size: 14px">在2017-10-16这天</span>的课程选择情况。</span>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <!--  Chart 3 -->
                        <div class="col-md-12">
                            <div class="tile">
                                <div class="col-md-6" style="padding-left: 0px;">
                                    <div class="tile" style="height: 460px">
                                        <h3 class="tile-title" style="font-size: 17px">学习总时长</h3>
                                        <div class="tile-config dropdown">
                                            <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                            <ul class="dropdown-menu animated pull-right text-right">
                                                <li><a href="#top">Refresh</a></li>
                                            </ul>
                                        </div>
                                        <div class="p-10">
                                            <span class="col-md-11" style="padding-left: 20px">该表展示当前用户学习总时长的统计情况，时间以小时为单位。</span>
                                            <div id="genderTimeCom" style="width: 100%; height: 320px;"></div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Chart 2 -->
                                <div class="col-md-6">
                                    <div class="tile" style="height: 460px;">
                                        <h2 class="tile-title" style="font-size: 17px">课程点击率统计</h2>
                                        <div class="tile-config dropdown">
                                            <a data-toggle="dropdown" href="" class="tile-menu"></a>
                                            <ul class="dropdown-menu pull-right text-right">
                                                <li id="todo-refresh"><a href="">Refresh</a></li>
                                            </ul>
                                        </div>
                                        <div class="p-10">
                                            <span class="col-md-11" style="padding-left: 20px">该表展示当前课程点击的统计数据。</span>
                                            <div id="courseClickNum" class="main-chart" style="height: 320px;margin-top: 40px;"></div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </section>
</section>

<!-- Javascript Libraries -->
<!-- jQuery -->
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> <!-- jQuery Library -->
<script src="http://www.jq22.com/jquery/jquery-ui-1.11.0.js"></script> <!-- jQuery UI -->
<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script> <!-- jQuery Easing - Requirred for Lightbox + Pie Charts-->

<!-- Bootstrap -->
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>

<!-- Charts -->
<script src="${pageContext.request.contextPath}/js/charts/jquery.flot.js"></script> <!-- Flot Main -->
<script src="${pageContext.request.contextPath}/js/charts/jquery.flot.time.js"></script> <!-- Flot sub -->
<script src="${pageContext.request.contextPath}/js/charts/jquery.flot.animator.min.js"></script> <!-- Flot sub -->
<script src="${pageContext.request.contextPath}/js/charts/jquery.flot.resize.min.js"></script> <!-- Flot sub - for repaint when resizing the screen -->

<script src="${pageContext.request.contextPath}/js/sparkline.min.js"></script> <!-- Sparkline - Tiny charts -->
<script src="${pageContext.request.contextPath}/js/easypiechart.js"></script> <!-- EasyPieChart - Animated Pie Charts -->
<script src="${pageContext.request.contextPath}/js/charts.js"></script> <!-- All the above chart related functions -->
<!--Media Player-->
<script src="${pageContext.request.contextPath}/js/media-player.min.js"></script> <!-- USA Map for jVectorMap -->
<!-- Map -->
<script src="${pageContext.request.contextPath}/js/maps/jvectormap.min.js"></script> <!-- jVectorMap main library -->
<script src="${pageContext.request.contextPath}/js/maps/usa.js"></script> <!-- USA Map for jVectorMap -->

<!--  Form Related -->
<script src="${pageContext.request.contextPath}/js/icheck.js"></script> <!-- Custom Checkbox + Radio -->

<!-- UX -->
<script src="${pageContext.request.contextPath}/js/scroll.min.js"></script> <!-- Custom Scrollbar -->
<script src="${pageContext.request.contextPath}/js/select.min.js"></script> <!-- Custom Select -->
<!-- Other -->
<script src="${pageContext.request.contextPath}/js/calendar.min.js"></script> <!-- Calendar -->
<script src="${pageContext.request.contextPath}/assets/amcharts/amcharts.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/amcharts/serial.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.datetimepicker.js" type="text/javascript"></script>
<!--  		 <script src="js/feeds.min.js"></script> News Feeds -->
<!-- All JS functions -->
<script src="${pageContext.request.contextPath}/js/functions.js"></script>
<script src="${pageContext.request.contextPath}/js/enchart.js"></script>
<script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
<script src="${pageContext.request.contextPath}/js/shine.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        // 初始化chart1表
        var myChart = echarts.init(document.getElementById('coursePersonNum'), 'shine');
        // 数据加载完之前先显示一段简单的loading动画
        myChart.showLoading();
        // 获取Chart1要展示的数据
        var names=[];    // 课程名字数组（实际用来盛放X轴坐标值）
        var nums=[];    // 课程选择人数数组（实际用来盛放Y坐标值）
        $.ajax({
            url:"${pageContext.request.contextPath}/course/getChart1Data",
            type:'GET',
            dataType:"json",
            success: function (data) {
                myChart.hideLoading();  //隐藏加载动画
                if(data.length>0) {
                    for (var i = 0; i < data.length; i++) {
                        names[i]=data[i].unitName;
                        nums[i]=data[i].personNum;
                    }
                }
                // 指定图表的配置项和数据
                var option = {
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: { // 坐标轴指示器，坐标轴触发有效
                            type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
                        }
                    },
                    xAxis: {
                        type: 'category',
                        data: names,
                        splitLine: {
                            show: true,
                            lineStyle: {
                                color: ['#2e6256'],
                                width: 1,
                                type: 'solid'
                            }
                        },
                        axisLine: {
                            lineStyle: {
                                color: '#000',
                                width: 1
                            }
                        },
                        axisLabel: {
                            show: true,
                            textStyle: {
                                color: 'gray'
                            },
                            fontSize:12,
                            interval:0
                        }
                    },
                    yAxis: {
                        type: 'value',
                        axisLabel: {
                            show: true,
                            textStyle: {
                                color: 'gray', //更改坐标轴文字颜色
                                fontSize: 12 //更改坐标轴文字大小
                            }
                        },
                        splitLine: {
                            show: true,
                            lineStyle: {
                                color: ['#2e6256'],
                                width: 1,
                                type: 'solid'
                            }
                        },
                        axisLine: {
                            lineStyle: {
                                color: '#000',
                                width: 1
                            }
                        }
                    },
                    series: [{
                        data: nums,
                        type: 'bar',
                        //标记线
                        markLine: {
                            data: [{
                                type: 'average',
                                name: '平均值',
                                itemStyle: {
                                    normal: {
                                        color: '#fcd202'
                                    }
                                }
                            }]
                        },
                        itemStyle: {
                            normal: {
                                //每根柱子颜色设置
                                color: function(params) {
                                    var colorList = [
                                        "#ff0f00",
                                        "#ff6600",
                                        "#fcd202",
                                        "#f8ff01",
                                        "#04d215",
                                        "#0d52d1",
                                        "#2a0cd0",
                                        "#cd0d74",
                                        "#6e7074",
                                        "#546570",
                                        "#c4ccd3",
                                        "#4BABDE",
                                        "#FFDE76",
                                        "#E43C59",
                                        "#37A2DA"
                                    ];
                                    return colorList[params.dataIndex];
                                }
                            }
                        }
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            },
            error:function () {
                alert("回调错误！")
            }
        });

        //************** 表二 **************
        //初始化chart2表
        var myChart2 = echarts.init(document.getElementById('courseClickNum'), 'shine');
        //数据加载完之前先显示一段简单的loading动画
        myChart2.showLoading();
        //设置表二的样式及数据
        var names2=[];    //课程名字数组（实际用来盛放X轴坐标值）
        var clickNums=[];    //课程点击率数组（实际用来盛放Y坐标值）
        $.ajax({
            url:"${pageContext.request.contextPath}/course/getChart2Data",
            type:'GET',
            dataType:"json",
            success: function (data) {
                myChart2.hideLoading();  //隐藏加载动画
                if(data.length>0) {
                    for (var i = 0; i < data.length; i++) {
                        names2[i]=data[i].unitName;
                        clickNums[i]=data[i].clickNum;
                    }
                }
                // 指定图表的配置项和数据
                var option2 = {
                    // 弹框
                    tooltip: {
                        trigger: 'axis'
                    },
                    // 图例
                    legend: {
                        data: ['点击数']
                    },
                    // x轴
                    xAxis: {
                        data: names2,
                        axisLabel:{
                            textStyle:{
                                color:'gray'
                            },
                            fontSize:12,
                            interval:0,
                            rotate:40
                        }
                    },
                    // y轴
                    yAxis: {
                        axisLabel:{
                            textStyle:{
                                color:'gray'
                            },
                            fontSize:12
                        }
                    },
                    // 数据
                    series: [{
                        name: '点击数',
                        // 直方图
                        type: 'line',
                        areaStyle: {},
                        color: 'green',
                        data: clickNums,
                        //标记点
                        markPoint: {
                            symbolSize:20,
                            data: [{
                                type: 'max',
                                name: '最大值',
                                itemStyle: {
                                    normal: {
                                        color: '#c7423e'
                                    }
                                }
                            },
                                {
                                    type: 'min',
                                    name: '最小值',
                                    symbol: 'diamond',
                                    itemStyle: {
                                        normal: {
                                            color: '#1178c7'
                                        }
                                    }
                                } //标记的图形
                            ]
                        },
                        symbolSize: 8, //折线点的大小
                        itemStyle:{
                            normal: {
                                color: "#e9bf40", //折线点的颜色
                                lineStyle: {
                                    color: "#e9bf40" //折线的颜色
                                }
                            }
                        },
                        areaStyle: {
                            normal: {
                                color: '#60807a' //改变区域颜色
                            }
                        }
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart2.setOption(option2);
            },
            error:function () {
                alert("回调错误！")
            }
        });

        //************** 表三 **************
        //初始化chart3表
        var myChart3 = echarts.init(document.getElementById('genderTimeCom'), 'shine');
        //数据加载完之前先显示一段简单的loading动画
        myChart3.showLoading();
        // --------获取Chart3要展示的数据----------
        var comparation=['性别','男','女'];
        var snums=new Array();
        $.ajax({
            url:"${pageContext.request.contextPath}/course/getChart3Data",
            type:'GET',
            dataType:"json",
            success: function (data) {
                myChart3.hideLoading();  //隐藏加载动画
                if(data.length>0) {
                    for (var j = 0; j < data.length/2+1; j++) {
                        snums[j]=new Array();
                    }
                    for (var i = 0; i < data.length; i++) {
                        var index=data[i].timeId;
                         snums[index][0]=data[i].timeStr;
                        if(data[i].gender.search("男")!=-1){ //保证柱状对比贴图里始终男女先后顺序一致
                            snums[index][1]=data[i].snum
                        }else{
                            snums[index][2]=data[i].snum;
                        }
                    }
                }
                // 指定图表的配置项和数据
                var option = {
                    legend: {},
                    tooltip: {},
                    dataset: {
                        source: [
                            comparation,
                            snums[1],
                            snums[2],
                            snums[3],
                            snums[4]
                        ]
                    },
                    xAxis: {
                        type: 'category' ,
                        axisLabel: {
                            show: true,
                            textStyle: {
                                color: 'gray', //更改坐标轴文字颜色
                                fontSize: 12 //更改坐标轴文字大小
                            }
                        }
                    },
                    yAxis: {
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
                            type: 'bar',
                            itemStyle:{
                                normal:{
                                    color:'#81acd9'
                                }
                            }
                        },
                        {
                            type: 'bar',
                            itemStyle:{
                                normal:{
                                    color:'#add981'
                                }
                            }
                        },
                    ]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart3.setOption(option);
            },
            error:function () {
                alert("回调错误！")
            }
        });

    });
</script>


</body>
</html>
