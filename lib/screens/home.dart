import 'package:flutter/material.dart';
import 'package:plantshop_ui/widgets/options.dart';
import 'package:plantshop_ui/widgets/tabs.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget controls(IconData icon) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          icon,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          centerTitle: true,
          title: Text(
            'Shop Plants',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          leading: Options(),
          actions: [
            Icon(Icons.search, color: Colors.black),
            SizedBox(width: 10),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.notifications, color: Colors.black),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/plant1.JPG'),
                    fit: BoxFit.fitWidth,
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          controls(Icons.arrow_back_ios),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Trending Plants',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                '31 products',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          controls(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              NestedTabBar()
            ],
          ),
        ));
  }
}
