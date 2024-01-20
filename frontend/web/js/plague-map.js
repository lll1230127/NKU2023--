/**
*  team : LLLG NKU
*  Coding by : 李威远2112338
*  使用echart.js实现地图
 */

// 在文档加载完成后执行的函数
$(document).ready(function () {

    if (chinaMapChart && chinaMapChart.dispose) {
        chinaMapChart.dispose();
    }
    var chinaMapChart = echarts.init(document.getElementById('plague-map'), 'macarons');
    // 通过 AJAX 请求获取 JSON 文件中的数据
    $.ajax({
        url: '../chinaMap/avg_new.json', // 替换为实际的 JSON 文件路径
        type: 'GET',
        dataType: 'json',
        success: function (jsonData) {
            renderMap(chinaMapChart, jsonData);
        },
        error: function (request) {
            alert('获取 JSON 数据失败');
        }
    });
    function renderMap(chinaMapChart, jsonData) {
        // 处理加载的 JSON 数据
        var convertedData = [];
        for (var key in jsonData) {
            if (jsonData.hasOwnProperty(key)) {
                var item = jsonData[key];
                convertedData.push({
                    name: item.name,
                    value: parseFloat(item.avg_value) // 转换为浮点数
                });
            }
        }

        optionChinaMap = {
            title: {
                text: '中国核污染辐射一览图',
                subtext: 'Data from https://data.rmtc.org.cn/',
                sublink: 'https://data.rmtc.org.cn/',
                left: 'right',
                textStyle: {
                    fontSize: 36, // 设置标题的字体大小
                }
              },
              legend: {
                orient: 'horizontal',//图例的排列方向
                x:'left',//图例的位置
                y:'20',
 
                data:['全国数据'] // 设置标题的字体大小
                
            },

            tooltip: {//提示框组件
                formatter:function(params,ticket, callback){//提示框浮层内容格式器，支持字符串模板和回调函数两种形式。
                    return params.seriesName+'<br />'+params.name+'：'+params.value
                }//数据格式化
            },
        backgroundColor:'rgba(255,255,255,0.7)',//背景色
        visualMap: {
            left: 'right',
            min: 0,
            max: 150,
            inRange: {
              color: [
                '#313695',
                '#4575b4',
                '#74add1',
                '#abd9e9',
                '#e0f3f8',
                '#ffffbf',
                '#fee090',
                '#fdae61',
                '#f46d43',
                '#d73027',
                '#a50026'
              ]
            },
            text: ['High', 'Low'],
            calculable: true
          },
          toolbox: {
            show: true,
            //orient: 'vertical',
            left: 'left',
            top: 'top',
            feature: {
              dataView: { readOnly: false },
              restore: {},
              saveAsImage: {}
            }
          },
               series : [
                   {
                       name: '全国数据',
                       type: 'map',
                       mapType: 'china',
                       zoom: 1.1,
                       roam: true,//是否开启鼠标缩放和平移漫游
                       itemStyle:{//地图区域的多边形 图形样式
                           normal:{//是图形在默认状态下的样式
                               label:{
                                   show: true,
                                   textStyle: {color: "rgb(249, 249, 249)",fontSize : 15}

                               }
                           },
                           emphasis:{//是图形在高亮状态下的样式,比如在鼠标悬浮或者图例联动高亮时
                               label:{show:true},
                           }
                       },
                       top:"100",//组件距离容器的距离
                       data: convertedData
                   }
               ]
           };
        chinaMapChart.setOption(optionChinaMap, true);
    }
}
);

