import 'package:flutter/material.dart';
import 'package:flutterwidget/Model/ColorText.dart';
import 'package:flutterwidget/Model/Data.dart';
import 'package:flutterwidget/ProductDetail.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: mobileList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetail(
                                model: mobileList[index],
                              )));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 150,
                    width: 180,
                    color: cardColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          '${mobileList[index].image}',
                          fit: BoxFit.cover,
                          width: 180,
                          height: 120,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('${mobileList[index].title}'),
                        SizedBox(
                          height: 4,
                        ),
                        Text(' \$${mobileList[index].price}')
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
