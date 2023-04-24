import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FiChartPage extends StatefulWidget {
  const FiChartPage({Key? key}) : super(key: key);

  @override
  _FiChartPageState createState() => _FiChartPageState();
}

class _FiChartPageState extends State<FiChartPage> {
  List<Color> gradientColors = [Colors.black, Colors.black, Colors.black];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white54.withOpacity(0.1),
          ),
          width: 400,
          height: 130,
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 10),
            child: LineChart(LineChartData(
                borderData: FlBorderData(
                    show: true,
                    border: Border.all(color: Colors.white, width: 0)),
                gridData: FlGridData(
                  show: true,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(color: Colors.white, strokeWidth: 0);
                  },
                  drawVerticalLine: true,
                  getDrawingVerticalLine: (value) {
                    return FlLine(color: Colors.white, strokeWidth: 0);
                  },
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 25,
                      getTextStyles: (context, value) {
                        return const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 10,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold);
                      },
                      getTitles: (value) {
                        switch (value.toInt()) {
                          case 0:
                            return 'M';
                          case 4:
                            return 'T';
                          case 8:
                            return 'W';
                          case 12:
                            return 'Th';
                          case 16:
                            return 'F';
                          case 20:
                            return 'Sa';
                          case 24:
                            return 'Su';
                        }
                        return '';
                      },
                      margin: 0),
                  rightTitles: SideTitles(),
                  topTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 10,
                    getTextStyles: (context, value) {
                      return const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 10,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold);
                    },
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 0:
                          return ' ';
                        case 2:
                          return ' ';
                        case 10:
                          return 'COINGRAPH';
                        case 20:
                          return ' ';
                      }
                      return '';
                    },
                    margin: 6,
                  ),
                  leftTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 15,
                    getTextStyles: (context, value) {
                      return const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 10,
                          fontWeight: FontWeight.bold);
                    },
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 0:
                          return '0';
                        case 2:
                          return '50';
                        case 4:
                          return '100';
                        case 6:
                          return '150';
                      }
                      return '';
                    },
                    margin: 6,
                  ),
                ),
                maxX: 20,
                maxY: 24,
                minY: 0,
                minX: 0,
                lineBarsData: [
                  LineChartBarData(
                      spots: [
                        const FlSpot(0, 18),
                        const FlSpot(6, 14),
                        const FlSpot(8, 5),
                        const FlSpot(11, 10),
                        const FlSpot(13, 4),
                        const FlSpot(15, 3),
                        const FlSpot(18, 10),
                        const FlSpot(20, 8),
                      ],
                      isCurved: true,
                      colors: [
                        const Color.fromARGB(255, 160, 160, 160),
                        const Color.fromARGB(255, 156, 150, 150),
                        const Color.fromARGB(255, 255, 255, 255)
                      ],
                      barWidth: 4,
                      belowBarData: BarAreaData(
                          show: true,
                          colors: gradientColors
                              .map((e) => e.withOpacity(0.5))
                              .toList()))
                ])),
          ),
        ),
      ),
    );
  }
}
