import 'package:flutter/material.dart';
import 'package:flutterwidget/Widget/ListViewDemo.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Sm Mohib'),
                accountEmail: Text('mohib56@yahoo.com'),
                currentAccountPicture: CircleAvatar(
                  radius: 50,
                  backgroundColor: Color.fromARGB(255, 228, 228, 228),
                )),
            Card(
              child: ListTile(
                trailing: Icon(Icons.login),
                title: Text("Login"),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () {},
                trailing: Icon(Icons.logout),
                title: Text("Log Out"),
              ),
            ),
          ],
        )),
        body: Column(
          children: [
            Text('Hospital Info',
                style: TextStyle(color: Colors.black, fontSize: 30)),
            SizedBox(
              height: 10,
            ),
            InkWell(
              child: Container(
                height: 300,
                width: double.infinity,
                child: Expanded(
                  flex: 2,
                  child: ListViewDemo(),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 18,
                ),
                Expanded(
                    flex: 7,
                    child: Text(' Populer Hospital',
                        style: TextStyle(color: Colors.black, fontSize: 20))),
                Expanded(
                    flex: 3,
                    child: Text('See More',
                        style: TextStyle(color: Colors.black, fontSize: 20))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 140,
              child: Expanded(
                flex: 1,
                child: ListViewDemo(),
              ),
            ),
          ],
        ));
  }
}
