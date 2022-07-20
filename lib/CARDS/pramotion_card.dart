import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube/const.dart';

class PramotionCard extends StatelessWidget {
  const PramotionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(banner), fit: BoxFit.cover),
              ),
            ),
            controllBox()
          ],
        ),
        labelRow(context: context),
        discriptionTile(
            circleImage: enfiledLogo,
            titleText: "Through historical references, stories",
            subTitletext:
                "captured in a monochromatic photograph of the G2 Model"),
        const SizedBox(
          height: 10,
        ),
        thikDivider(),
      ],
    );
  }
}
