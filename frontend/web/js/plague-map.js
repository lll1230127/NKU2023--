

// 在文档加载完成后执行的函数
$(document).ready(function () {

    // 创建Leaflet地图对象并设置初始视图
    var mymap = L.map('plague-map').setView([30, 5], 2);

    // Mapbox图层的URL
    var mburl = 'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw';

    // 添加Mapbox图层到Leaflet地图
    L.tileLayer(mburl, {
        maxZoom: 18,
        attribution: 'Map data &copy; <a href="https://www.mapbox.com/">Mapbox</a>',
        id: 'mapbox/light-v9',
        tileSize: 512,
        zoomOffset: -1
    }).addTo(mymap);

    var latestDate;

    // 发送GET请求以获取最新的疫情数据
    $.ajax({
        url: "./covid/covid-info", // 服务器端提供疫情数据的API
        type: "GET",
        data: { type: 'latest' }, // 请求最新数据
        async: false, // 同步请求，等待数据返回
        dataType: 'json',
        error: function (request) {
            alert("获取疫情数据失败");
        },
        success: function (data) {
            // 处理返回的数据
            var recdate = data.features[0].properties.date;
            latestDate = recdate.substr(0, 4) + '年' +
                parseInt(recdate.substr(5, 2).toString()) + '月' +
                parseInt(recdate.substr(8, 2).toString()) + '日';

            // 创建GeoJSON图层并添加到地图上
            geojson = L.geoJson(data, {
                style: style, // 定义地图样式
                onEachFeature: onEachFeature // 定义每个要素的交互行为
            }).addTo(mymap);
        }
    });

    // 创建信息控件
    var info = L.control();
    info.onAdd = function (map) {
        this._div = L.DomUtil.create('div', 'info');
        this.update();
        return this._div;
    };

    // 更新信息控件的内容
    info.update = function (props) {
        if (!latestDate)
            latestDate = '';
        else
            latestDate.replace();

        this._div.innerHTML =
            '<h4>各国累计确诊人数</h4><p>数据更新于' + latestDate + '</p>' +
            (props ? '<b>' + props.namecn + '</b><br/>' + props.num + ' 人'
                : '鼠标置于对应国家以查看');
    };
    info.addTo(mymap); // 将信息控件添加到地图上

    // 创建图例控件
    var legend = L.control({ position: 'bottomleft' });
    legend.onAdd = function (map) {
        var div = L.DomUtil.create('div', 'info legend'),
            grades = [0, 10, 100, 500, 1000, 5000, 10000, 100000, 1000000],
            labels = [],
            from, to;
        for (var i = 0; i < grades.length; i++) {
            from = grades[i];
            to = grades[i + 1];

            labels.push('<p class="info-p"><i style="background:' + getColor(from + 1) + '"></i> ' +
                from + (to ? '-' + to : '+') + '</p>');
        }
        div.innerHTML = labels.join("<br>");
        return div;
    };
    legend.addTo(mymap); // 将图例控件添加到地图上

    // 根据确诊人数获取颜色
    function getColor(d) {
        return d > 1000000 ? '#800026' :
            d > 100000 ? '#BD0026' :
                d > 10000 ? '#E31A1C' :
                    d > 1000 ? '#FC4E2A' :
                        d > 1000 ? '#FD8D3C' :
                            d > 500 ? '#FEB24C' :
                                d > 100 ? '#FED976' :
                                    d > 10 ? '#FFEDA0' :
                                        '#ECECEC';
    }

    // 定义要素样式
    function style(feature) {
        return {
            weight: 2,
            opacity: 1,
            color: 'white',
            dashArray: '3',
            fillOpacity: 0.7,
            fillColor: getColor(feature.properties.num)
        };
    }

    // 高亮显示要素
    function highlightFeature(e) {
        var layer = e.target;
        layer.setStyle({
            weight: 5,
            color: '#666',
            dashArray: '',
            fillOpacity: 0.5
        });
        if (!L.Browser.ie && !L.Browser.opera && !L.Browser.edge) {
            layer.bringToFront();
        }
        info.update(layer.feature.properties);
    }

    // 重置要素样式
    function resetHighlight(e) {
        geojson.resetStyle(e.target);
        info.update();
    }

    // 缩放到点击的要素
    function zoomToFeature(e) {
        mymap.fitBounds(e.target.getBounds());
    }

    // 为每个要素添加交互行为
    function onEachFeature(feature, layer) {
        layer.on({
            mouseover: highlightFeature,
            mouseout: resetHighlight,
            click: zoomToFeature
        });
    }
});
