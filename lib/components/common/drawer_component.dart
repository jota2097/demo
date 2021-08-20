import 'package:demo/style/styles.dart';
import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  final String userImage;
  const DrawerComponent({Key? key, required this.userImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage(userImage),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Johanna Doe',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Johanna@company.com',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildListTitle(
                    context: context,
                    text: "Home",
                    iconData: Icons.home,
                    color: Colors.blue[900]),
                _buildListTitle(
                    context: context,
                    text: "Reports",
                    iconData: Icons.analytics),
                _buildListTitle(
                    context: context,
                    text: "Accounts",
                    iconData: Icons.portrait),
                _buildListTitle(
                    context: context, text: "Quotes", iconData: Icons.favorite),
                _buildListTitle(
                    context: context,
                    text: "Tickets",
                    iconData: Icons.shopping_basket),
                _buildListTitle(
                    context: context,
                    text: "Notifications",
                    iconData: Icons.error_outline),
                _buildListTitle(
                    context: context, text: "News", iconData: Icons.article),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile _buildListTitle(
      {required BuildContext context,
      required String text,
      required IconData iconData,
      Color? color}) {
    return ListTile(
      leading: Icon(
        iconData,
        color: color == null ? Colors.grey[350] : color,
      ),
      trailing: Icon(
        Icons.navigate_next,
        color: color == null
            ? Colors.grey[350]
            : Theme.of(context).iconTheme.color,
      ),
      title: Text(text),
    );
  }
}
