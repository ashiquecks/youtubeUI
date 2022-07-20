import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String shourtsIcon = "assets/images/shourts_icon.png";
String youtubeIconBlank = "assets/images/youtube_logo_transparent.png";
String myPic = "assets/images/my_pic.jpg";

String banner = "assets/images/banner.jpg";
String enfiledLogo = "assets/images/enfiled_logo.png";

String brototype = "assets/images/brototype.jpg";
String manorama = "assets/images/manorama.png";
String dana = "assets/images/dana.jpg";

const Color darkGray = Color.fromARGB(255, 39, 38, 38);
const Color transparentBlack = Color.fromARGB(146, 0, 0, 0);
const Color lightGray = Color.fromARGB(255, 189, 188, 188);

String videoUri = "https://youtu.be/Bitp7LkA61U";

Widget thikDivider() {
  return const Divider(
    thickness: 6,
    color: lightGray,
  );
}

Widget exploreButton() {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: ElevatedButton.icon(
      style: ElevatedButton.styleFrom(primary: Colors.grey[300], elevation: 0),
      icon: const Icon(
        Icons.explore,
        color: Colors.black,
      ),
      label: const Text(
        "Explore",
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {},
    ),
  );
}

Widget verticalDivider() {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 5),
    child: Container(
      height: 35,
      width: 2,
      color: Colors.grey,
    ),
  );
}

Widget youtubeIconButton({required IconData buttonIcon}) {
  return IconButton(
    onPressed: () {},
    icon: Icon(
      buttonIcon,
      color: Colors.white,
    ),
  );
}

Widget controllBox() {
  return Positioned(
    top: 10,
    right: 10,
    child: Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(
          color: transparentBlack, borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Row(
          children: [
            youtubeIconButton(buttonIcon: Icons.volume_off_outlined),
            youtubeIconButton(buttonIcon: Icons.closed_caption_off),
          ],
        ),
      ),
    ),
  );
}

Widget labelRow({
  required BuildContext context,
}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 40,
    color: darkGray,
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "LEARN MORE",
          style: TextStyle(color: Colors.white),
        ),
        Icon(
          Icons.open_in_new_sharp,
          color: Colors.white,
        ),
      ],
    ),
  );
}

Widget discriptionTile({
  required String circleImage,
  required String titleText,
  required String subTitletext,
}) {
  return ListTile(
    leading: CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage(circleImage),
    ),
    title: Text(
      titleText,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: Text(subTitletext),
    trailing: Wrap(
      spacing: 12, // space between two icons
      children: <Widget>[
        const SizedBox(
          width: 15,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.ellipsis_vertical,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
