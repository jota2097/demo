import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key}) : super(key: key);

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
            backgroundImage: NetworkImage(
                'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg'),
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
                ListTile(
                  selectedTileColor: Colors.red,
                  leading: Icon(Icons.home, color: Colors.blue[900]),
                  title: Text('Home'),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.report),
                  title: Text('Reports'),
                ),
                ListTile(
                  leading: Icon(Icons.portrait),
                  title: Text('Accounts'),
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('Quotes'),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text('Tickets'),
                ),
                ListTile(
                  leading: Icon(Icons.error_outline),
                  title: Text('Notifications'),
                ),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text('News'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
