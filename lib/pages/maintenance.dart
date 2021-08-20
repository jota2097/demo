import 'package:demo/components/section_component.dart';
import 'package:demo/style/styles.dart';
import 'package:flutter/material.dart';

class MaintenancePage extends StatefulWidget {
  MaintenancePage({Key? key}) : super(key: key);

  @override
  _MaintenancePageState createState() => _MaintenancePageState();
}

class _MaintenancePageState extends State<MaintenancePage> {
  @override
  Widget build(BuildContext context) {
    return SectionComponent(title: "Maintenance", child: _buildContainerData());
  }

  _buildContainerData() {
    return ListView(
      shrinkWrap: true,
      children: [
        _buildListTitle(context: context, text: "Label"),
        _buildListTitle(context: context, text: "Label")
      ],
    );
  }

  ListTile _buildListTitle(
      {required BuildContext context, required String text}) {
    return ListTile(
      trailing: Icon(Icons.navigate_next, color: Colors.grey[350]),
      title: Text(
        text,
        style: Theme.of(context).textTheme.headline2,
      ),
      subtitle: Text(
          "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."),
    );
  }
}
