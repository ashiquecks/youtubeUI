import 'package:flutter/material.dart';
import 'package:youtube/CARDS/shourts_card.dart';
import 'package:youtube/DATAS/shourts_data.dart';
import 'package:youtube/const.dart';

class ShourtSection extends StatefulWidget {
  const ShourtSection({Key? key}) : super(key: key);

  @override
  State<ShourtSection> createState() => _ShourtSectionState();
}

class _ShourtSectionState extends State<ShourtSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        thikDivider(),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            shourtsIcon,
            width: 80,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: shourtsData.length,
            itemBuilder: (Context, index) {
              return ShourtsCard(
                shourtsThumpnail: shourtsData[index]["shourtsImage"],
              );
            },
          ),
        ),
        thikDivider(),
      ],
    );
  }
}
