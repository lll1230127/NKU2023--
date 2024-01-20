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
            //中国地图
            function randomData() {  
                return Math.round(Math.random()*500);  
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
                       data:[
                           {name: '北京',value: '100' },{name: '天津',value: randomData() },  
                           {name: '上海',value: randomData() },{name: '重庆',value: randomData() },  
                           {name: '河北',value: randomData() },{name: '河南',value: randomData() },  
                           {name: '云南',value: randomData() },{name: '辽宁',value: randomData() },  
                           {name: '黑龙江',value: randomData() },{name: '湖南',value: randomData() },  
                           {name: '安徽',value: randomData() },{name: '山东',value: randomData() },  
                           {name: '新疆',value: randomData() },{name: '江苏',value: randomData() },  
                           {name: '浙江',value: randomData() },{name: '江西',value: randomData() },  
                           {name: '湖北',value: randomData() },{name: '广西',value: randomData() },  
                           {name: '甘肃',value: randomData() },{name: '山西',value: randomData() },  
                           {name: '内蒙古',value: randomData() },{name: '陕西',value: randomData() },  
                           {name: '吉林',value: randomData() },{name: '福建',value: randomData() },  
                           {name: '贵州',value: randomData() },{name: '广东',value: randomData() },  
                           {name: '青海',value: randomData() },{name: '西藏',value: randomData() },  
                           {name: '四川',value: randomData() },{name: '宁夏',value: randomData() },  
                           {name: '海南',value: randomData() },{name: '台湾',value: randomData() },  
                           {name: '香港',value: randomData() },{name: '澳门',value: randomData() }  
                       ]
                   }
               ]
           };
        chinaMapChart.setOption(optionChinaMap, true);
});
