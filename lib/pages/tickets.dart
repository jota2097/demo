import 'package:demo/components/charts/pie_chart_component.dart';
import 'package:flutter/material.dart';

class TicketsPage extends StatefulWidget {
  static String page = "TickesPage";
  TicketsPage({Key? key}) : super(key: key);

  @override
  _TicketsPageState createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    return PieChartPage();
    // return Column(
    //   children: [
    //     Align(
    //       alignment: Alignment.centerRight,
    //       child: Container(
    //         child: Text(
    //           "Tickers section",
    //           style: Theme.of(context).textTheme.headline2,
    //         ),
    //       ),
    //     ),
    //     PieChartPage(),
    //   ],
    //);
  }
}
