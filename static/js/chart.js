function make_data() {
        var barData = google.visualization.arrayToDataTable([
                    ['Day', 'Page Views'],
                    ['Sun', 1050],
                    ['Mon', 1370],
                    ['Tue', 660],
                    ['Wed', 1030],
                    ['Thu', 1000],
                    ['Fri', 1170],
                    ['Sat', 660],
                ]);

        return barData;
    }
