import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';


class CovidSeries{
  final String semana;
  final int casos;
  final charts.Color barColor;

  CovidSeries(
      {@required this.semana,
      @required this.casos,
     @required this.barColor}
      );
}