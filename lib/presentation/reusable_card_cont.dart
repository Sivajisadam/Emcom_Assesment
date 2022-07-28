import 'package:flutter/material.dart';

class ReusableCardCont extends StatelessWidget {
  ReusableCardCont({this.color, this.icon, this.text});
  final color;
  final text;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      // height: 150,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 30),
                    height: 64,
                    width: 100,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                        color: Colors.white),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Shriners',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                              // Text('Children\'s Boston',maxLines: 2, style: TextStyle(
                              //       fontSize: 10, overflow: TextOverflow.clip)),
                            ],
                          ),
                        ]),
                  ),
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('jul 22   01:00PM-09:00PM'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Shrines Children\'s Boston \$480 at\$15/hr',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('277, Madison st, New York, NY 10002, USA'),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('10 miles away'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Registered Nurse'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 8,
                    bottom: 8,
                  ),
                  child: Icon(Icons.arrow_forward),
                ),
              ),
              Text(
                '$text',
                maxLines: 2,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    right: 20,
                  ),
                  child: icon),
            ],
          ),
        ],
      ),
    );
  }
}