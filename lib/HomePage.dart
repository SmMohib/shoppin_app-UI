import 'package:flutter/material.dart';
import 'package:flutterwidget/Model/ColorText.dart';
import 'package:flutterwidget/Model/Data.dart';
import 'package:flutterwidget/ProductDetail.dart';
import 'package:flutterwidget/Widget/GridViewdemo.dart';
import 'package:flutterwidget/Widget/ListViewDemo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Wi-Fi Shop & Service',
              style: text30(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Audio Shop on Ave 57',
              style: text14Darker(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'The Shop Offers both products & service',
              style: text14Darker(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        Text(
                          'Products',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(251, 0, 0, 0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '41',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(211, 0, 0, 0)),
                          ),
                        ),
                      ],
                    )),
                Expanded(
                  flex: 3,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GridViewDemo()));
                    },
                    child: Text(
                      'Show all',
                      style: TextStyle(
                          fontSize: 25, color: Color.fromARGB(251, 0, 0, 0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            child: Container(
              height: 200,
              width: double.infinity,
              child: Expanded(
                flex: 2,
                child: ListViewDemo(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    flex: 7,
                    child: Row(
                      children: [
                        Text(
                          'Accessories',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(251, 0, 0, 0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '19',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(211, 0, 0, 0)),
                          ),
                        ),
                      ],
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    'Show all',
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(251, 0, 0, 0)),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GridViewDemo()));
            },
            child: Container(
              height: 200,
              width: double.infinity,
              child: Expanded(
                flex: 2,
                child: ListViewDemo(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
