import 'package:flutter/material.dart';
import 'package:flutterwidget/Model/ColorText.dart';
import 'package:flutterwidget/Widget/ProgressBar.dart';
import 'package:flutterwidget/Widget/TostNotification.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // appBar: AppBar(
        //   toolbarHeight: 200,
        // bottom: TabBar(tabs: [
        //   Tab(
        //     child: Text('Index1'),
        //   ),
        //   Tab(
        //     child: Text('Index1'),
        //   )
        // ]),
        //  ),
        // body: TabBarView(children: [PrograssBarDemo(), TostNotificationDemo()]),

        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    color: primary,
                    child: const TabBar(
                      indicator: BoxDecoration(
                        color: green,
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text('Index1'),
                        ),
                        Tab(
                          child: Text('Index1'),
                        )
                      ],
                    )),
              ),
            ),
            Expanded(
              child: TabBarView(
                  children: [PrograssBarDemo(), TostNotificationDemo()]),
            )
          ],
        ),
      ),
    );
  }
}
