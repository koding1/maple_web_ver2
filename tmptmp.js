        google.load('visualization', '1', {packages: ['corechart']});

        google.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Date', 'firstdata', 'second', 'third'],
                ['2015-04-08',  2842, 208, 934],['2015-04-09',  2835, 209, 936],['2015-04-10',  2899, 208, 936],['2015-04-11',  2910, 208, 937],['2015-04-12',  2929, 207, 937],['2015-04-13',  2921, 207, 937],['2015-04-14',  2946, 207, 937],['2015-04-15',  2932, 208, 937],['2015-04-16',  2963, 208, 939],['2015-04-17',  2966, 207, 939],['2015-04-18',  2991, 206, 939],['2015-04-19',  3025, 206, 940],['2015-04-20',  3014, 206, 940],['2015-04-21',  3042, 206, 941],['2015-04-22',  3058, 206, 941],['2015-04-23',  3060, 206, 941],            ]);

            var options = {
                chart: {
                    title: 'The test ',
                    subtitle: '3 data'
                },
                width: 900,
                height: 500
            };

            data.addColumn({type: 'string', role: 'annotation'});
            var view = new google.visualization.DataView(data);
            view.setColumns([0, 1,
                { calc: "stringify",
                    sourceColumn: 1,
                    type: "string",
                    role: "annotation" },2,
                { calc: "stringify",
                    sourceColumn: 2,
                    type: "string",
                    role: "annotation" },3,
                { calc: "stringify",
                    sourceColumn: 3,
                    type: "string",
                    role: "annotation" }]);

            var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

            chart.draw(view, options);
                    $(document).ready(function () {
                // do stuff on "ready" event
                $(".checkbox").change(function() {

                    view = new google.visualization.DataView(data);
                    var tes =[0];

                    if($("#kolom1").is(':checked')) {

                        tes.push(1,
                            { calc: "stringify",
                                sourceColumn: 1,
                                type: "string",
                                role: "annotation" });                    }
                    if($("#kolom2").is(':checked'))
                    {
                        tes.push(2,
                            { calc: "stringify",
                                sourceColumn: 2,
                                type: "string",
                                role: "annotation" });
                    }
                    if($("#kolom3").is(':checked'))
                    {
                        tes.push(3,
                            { calc: "stringify",
                                sourceColumn: 3,
                                type: "string",
                                role: "annotation" });
                    }
                    view.setColumns(tes);


                    chart.draw(view, options);

                });
            });

        }
