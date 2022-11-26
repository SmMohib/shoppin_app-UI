import 'package:flutter/material.dart';
import 'package:flutterwidget/CardPage.dart';
import 'package:flutterwidget/HomePage.dart';
import 'package:flutterwidget/Model/ColorText.dart';
import 'package:flutterwidget/Model/Data.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail(
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
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int counter = 1;
//counter
  increment() {
    setState(() {
      counter++;
    });
  }

  decrement() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('${widget.model!.title}'),
      // ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            children: [
              // SizedBox(
              //   height: 20,
              // ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  // topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  // topRight: Radius.circular(15)
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      '${widget.model!.image}',
                      width: double.infinity,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 10,
                      right: 150,
                      child: SvgPicture.asset(
                        'asset/img/Sliderslider1.svg',
                        //'asset/img/Slider2.svg',
                        //    'asset/img/Sliderslider1.svg',
                      ),
                    ),
                    //next screen
                    Positioned(
                      top: 25,
                      left: 10,
                      child: InkWell(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        }),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 40,
                            width: 30,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(child: Icon(Icons.arrow_back_ios)),
                            ),
                            color: inActiveColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.delivery_dining,
                            color: Colors.blue,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Shopping',
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 8,
                            child: Text('${widget.model!.title}',
                                style: GoogleFonts.anton(fontSize: 28)),
                          ),
                          Expanded(
                              flex: 2,
                              child: FloatingActionButton(
                                onPressed: () {},
                                child: Icon(Icons.favorite),
                              ))
                        ],
                      ),
                      Text('${widget.model!.location}'),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          'Price: ${widget.model!.price}',
                          style: text28(),
                        ),
                      ),
                      //location
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    'asset/img/Screenshot 2022-05-12 171932.png',
                                    height: 50,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text('${widget.model!.location}')),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        color: shadowColor,
                        endIndent: 1,
                      ),
                      Text(
                        '\$${widget.model!.price}',
                        style: text30(),
                      ),
                      Text(
                        'Tax Rate 2% ${widget.model!.price}',
                        style: text16(),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      //ElevatedButton
                      ElevatedButton(
                        onPressed: () {
                          Fluttertoast.showToast(
                            msg: 'Ad To Card',
                            textColor: pink,
                            backgroundColor: secondary,
                            toastLength: Toast.LENGTH_SHORT,
                          );
                          Navigator.of(
                            context,
                          ).push(MaterialPageRoute(
                              builder: (context) => CardPage(
                                    image: widget.model!.image,
                                    title: widget.model!.title,
                                    price: widget.model!.price,
                                    location: widget.model!.location,
                                  )));
                          //   Navigator.of(context).push(MaterialPageRoute(
                          // builder: (context) => model(
                          //       img: widget.img,
                          //       name: widget.name,
                          //       price: widget.price,
                          //       subtext: widget.subtext,
                          //       description: widget.description,
                          //     )));
                        },
                        child: Container(
                            height: 60,
                            width: double.infinity,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Ad To Card',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            )),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  //Toast
  // void showTost() => Fluttertoast.showToast(
  //     msg: 'on the way',
  //     fontSize: 18,
  //     backgroundColor: Colors.black38,
  //     textColor: Colors.pink);
  // void cancleTost() {}
//endTost
}
