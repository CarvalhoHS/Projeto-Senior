
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/config/covidSeries.dart';


class CovidBarChart extends StatelessWidget {
  final List<CovidSeries> data;

CovidBarChart({@required this.data});


  @override
  Widget build(BuildContext context) {
    List<charts.Series<CovidSeries, String>> series = [
      charts.Series(
        id: "Casos Covid",
        data: data,
        domainFn: (CovidSeries series, _)=> series.semana,
        measureFn: (CovidSeries series, _)=> series.casos,
        colorFn: (CovidSeries series, _)=> series.barColor
      )
    ];

    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Column(
          children: <Widget>[
            Text("Casos semanais de Covid-19", style: Theme.of(context).textTheme.bodyText2,
            ),
            Expanded(
                child: charts.BarChart(series, animate: true),
            )
          ],
        ),
      ),

    );
  }
}