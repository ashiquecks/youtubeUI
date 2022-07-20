import 'package:flutter/material.dart';
import 'package:youtube/const.dart';

class ShourtsCard extends StatelessWidget {
  final String shourtsThumpnail;
  const ShourtsCard({Key? key, required this.shourtsThumpnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 160,
          height: 220,
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(shourtsThumpnail), fit: BoxFit.cover),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: transparentBlack,
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: const ListTile(
                title: Text(
                  "Description is the pattern of narrative development",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "14M views",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
