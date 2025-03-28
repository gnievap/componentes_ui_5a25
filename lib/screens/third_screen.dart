import 'package:componentes/models/ventas.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Ventas> data = [
      Ventas('Lunes', 50),
      Ventas('Martes', 100),
      Ventas('Miercoles', 75),
      Ventas('Jueves', 25),
      Ventas('Viernes', 40),
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY:
                data
                    .map((venta) => venta.venta)
                    .reduce((a, b) => a > b ? a : b) +
                10,
            barTouchData: BarTouchData(enabled: true),
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 10,
                  reservedSize: 40,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    return Text(
                      value.toInt().toString(),
                      style: const TextStyle(color: Colors.black),
                    );
                  },
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    if (value.toInt() < data.length) {
                      return Text(data[value.toInt()].dia);
                    }
                    return const Text('');
                  },
                ),
              ),
            ),
            borderData: FlBorderData(show: false),
            barGroups:
                data
                    .asMap()
                    .entries
                    .map(
                      (entry) => BarChartGroupData(
                        x: entry.key,
                        barRods: [
                          BarChartRodData(toY: entry.value.venta.toDouble()),
                        ],
                      ),
                    )
                    .toList(),
          ),
        ),
      ),
    );
  }
}
