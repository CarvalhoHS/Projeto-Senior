
import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/config/covidSeries.dart';
import 'package:flutter_covid_dashboard_ui/config/palette.dart';
import 'package:flutter_covid_dashboard_ui/widgets/widgets.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../widgets/covid_bar_chart.dart';


class StatsScreen extends StatelessWidget {
  
  final List<CovidSeries> data = [
    CovidSeries(semana: "14",
        casos: 308,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    CovidSeries(semana: "15",
      casos: 261,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    CovidSeries(semana: "16",
      casos: 182,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    CovidSeries(semana: "17",
      casos: 224,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    CovidSeries(semana: "18",
      casos: 221,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    CovidSeries(semana: "19",
      casos: 185,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    CovidSeries(semana: "20",
      casos: 189,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            sliver: SliverToBoxAdapter(
              child: StatsGrid(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20.0),
            sliver: SliverToBoxAdapter(
              child: CovidBarChart(data: data,),
            ),
          ),
        ],
      ),
    );
  }

  SliverPadding _buildHeader() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          'Estatísticas para o Município de Tubarão',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


