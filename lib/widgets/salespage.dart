import 'package:flutter/material.dart';
import 'package:plantshop_ui/widgets/plant_card.dart';
import 'package:plantshop_ui/widgets/recents_card.dart';

class SalePage extends StatefulWidget {
  @override
  _SalePageState createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 250,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return PlantCard();
              }),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Recent Buying',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 160,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Recents();
              }),
        ),
      ],
    );
  }
}
