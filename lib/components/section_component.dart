import 'package:demo/style/styles.dart';
import 'package:flutter/material.dart';

class SectionComponent extends StatelessWidget {
  final String title;
  final Widget child;
  const SectionComponent({Key? key, required this.title, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: paddingContainer),
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Divider(
                  thickness: 5,
                  height: 1,
                  color: Colors.grey[350],
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 5,
                  height: 1,
                  color: Colors.indigo[900],
                ),
              ),
            ],
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: paddingContainer), child: child),
      ],
    );
  }
}
