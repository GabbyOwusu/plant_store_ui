import 'package:flutter/material.dart';

class Recents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 13),
                child: Text(
                  'Monstera\nDeliciosa',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                '\$14.00',
                style: TextStyle(color: Colors.lightGreen, fontSize: 18),
              ),
              SizedBox(height: 10),
              Text('Stars'),
            ],
          )
        ],
      ),
    );
  }
}
