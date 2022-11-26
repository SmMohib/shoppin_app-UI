import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutterwidget/Model/ColorText.dart';
import 'package:flutterwidget/Model/Data.dart';

//Toast
// import 'package:fluttertoast/fluttertoast.dart'
//                   Fluttertoast.showToast(
//                     msg: 'Ad To Card',
//                     textColor: pink,
//                     backgroundColor: secondary,
//                     toastLength: Toast.LENGTH_SHORT,
//                   );

class CardPage extends StatefulWidget {
  CardPage(
      {Key? key,
      this.title,
      this.image,
      this.description,
      this.location,
      this.price,
      this.model,
      this.brandName})
      : super(key: key);
  String? title, image, description, location, brandName;
  double? price;
  Model? model;

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          centerTitle: true,
          title: Text(
            "Order Details",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "My Cart",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Expanded(
                      flex: 3,
                      child: ClipRRect(
                        child: Container(
                          height: 100,
                          child: Image.asset(
                            '${widget.image}',
                            fit: BoxFit.fill,
                            //width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex: 1, child: Text("")),
                  Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${widget.title}',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('${((widget.price)! * i)}'),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    if (i > 1) {
                                      i--;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                ),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(10),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '$i',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    i++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(10),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              title: Text(
                "${widget.price}",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              subtitle: Text("Text Rate 2% - 4.00"),
            ),
            // ElevatedButton
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  minimumSize: Size.fromHeight(50),
                ),
                onPressed: () {
                  //Toast
                  Fluttertoast.showToast(
                    msg: 'Ad To Card',
                    textColor: pink,
                    backgroundColor: secondary,
                    toastLength: Toast.LENGTH_SHORT,
                  );
                },
                child: Text(
                  'Chackout: (${((widget.price)! * i)})',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ));
  }
}
