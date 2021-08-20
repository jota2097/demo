import 'package:demo/components/section_component.dart';
import 'package:demo/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TicketsPage extends StatefulWidget {
  static String page = "TickesPage";
  TicketsPage({Key? key}) : super(key: key);

  @override
  _TicketsPageState createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    return SectionComponent(
        title: "Tickets section", child: _buildContainerData());
  }

  Container _buildContainerData() {
    return Container(
      padding: EdgeInsets.only(top: paddingContainer),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildPercentIndicator(
              text: "Open cases",
              countItems: "4",
              color: Colors.green,
              percentIndicator: 0.4),
          _buildPercentIndicator(
              text: "General Outages",
              countItems: "9",
              color: Colors.deepPurple[700]!,
              percentIndicator: 0.9)
        ],
      ),
    );
  }

  CircularPercentIndicator _buildPercentIndicator(
      {required String text,
      required Color color,
      required String countItems,
      required double percentIndicator}) {
    return CircularPercentIndicator(
      header: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          text,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
      radius: 100.0,
      lineWidth: 7.0,
      percent: percentIndicator,
      center: new Text(
        countItems,
        style:
            TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color),
      ),
      progressColor: color,
    );
  }
}
