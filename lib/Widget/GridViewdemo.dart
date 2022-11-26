import 'package:flutter/material.dart';
import 'package:flutterwidget/Model/ColorText.dart';
import 'package:flutterwidget/Model/Data.dart';
import 'package:flutterwidget/ProductDetail.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  State<GridViewDemo> createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  //Toast
  void showTost() => Fluttertoast.showToast(
      msg: 'on the way',
      fontSize: 18,
      backgroundColor: Colors.black38,
      textColor: Colors.pink);
  void cancleTost() {}
//endTost
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 3.0,
            mainAxisSpacing: 3.0,
            mainAxisExtent: 170),
        itemCount: mobileList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onLongPress: showTost,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductDetail(
                            model: mobileList[index],
                          )));
            },
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Container(
                height: 200,
                child: Column(
                  children: [
                    Image.asset(
                      '${mobileList[index].image}',
                      fit: BoxFit.cover,
                      height: 100,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('${mobileList[index].title}',
                          style: GoogleFonts.roboto(
                              fontSize: 16, color: Colors.white)),
                    ),
                  ],
                ),
                color: primary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
