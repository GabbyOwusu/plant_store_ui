import 'package:flutter/material.dart';

class PlantCard extends StatefulWidget {
  final int index;
  PlantCard({this.index});
  final images = [
    'images/plant3.jpg',
    'images/plant4.jpg',
    'images/plant5.jpg',
    'images/plant2.jpg',
    'images/plant1.JPG',
  ];
  @override
  _PlantCardState createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage(widget.images[widget.index]),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, bottom: 5),
            child: Text('Snake Plant'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Text('\$500'),
                Spacer(),
                Text('4.5'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
