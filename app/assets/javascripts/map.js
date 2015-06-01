
var mapAreas = $.getJSON('/brewery_map.json', function(data) {
	console.log(data)
	var map = AmCharts.makeChart("chartdiv", {
		type: "map",
	    "theme": "none",
	    pathToImages: "http://www.amcharts.com/lib/3/images/",
		colorSteps: 50,
		dataProvider: {
			map: "usaLow",
			areas: $.map(data, function(val, i) {
				return { id: val.id, value: val.value }
			})
		},

		areasSettings: {
			autoZoom: true
		},

		valueLegend: {
			right: 10,
			minValue: "little",
			maxValue: "a lot!"
		}

	});

});
