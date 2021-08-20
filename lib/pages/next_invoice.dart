import 'package:demo/components/section_component.dart';
import 'package:demo/style/styles.dart';
import 'package:flutter/material.dart';

class NextInvoice extends StatefulWidget {
  static String page = "NextInvoice";
  NextInvoice({Key? key}) : super(key: key);

  @override
  _NextInvoiceState createState() => _NextInvoiceState();
}

class _NextInvoiceState extends State<NextInvoice> {
  @override
  Widget build(BuildContext context) {
    return SectionComponent(
        title: "Next invoice", child: _buildContainerData());
  }

  Container _buildContainerData() {
    return Container(
      padding: EdgeInsets.only(
          top: paddingContainer,
          left: paddingContainer,
          right: paddingContainer),
      child: Column(
        children: [
          Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
              title: Text(
                "Invoice",
                style: Theme.of(context).textTheme.headline2,
              ),
              trailing: Text(
                "\$720.25",
                style: Theme.of(context).textTheme.headline2,
              )),
          Divider(
            height: 1,
            thickness: 1,
          ),
          // Text("Invoice"),
          // Text("\$720.25")
        ],
      ),
    );
  }
}
