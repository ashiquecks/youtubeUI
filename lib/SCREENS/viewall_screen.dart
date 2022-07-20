import 'package:flutter/material.dart';
import 'package:youtube/CARDS/pramotion_card.dart';
import 'package:youtube/CARDS/shourts_card.dart';
import 'package:youtube/CARDS/video_card.dart';
import 'package:youtube/SCREENS/shourts_section.dart';
import 'package:youtube/const.dart';

class ViewAllScreen extends StatefulWidget {
  const ViewAllScreen({Key? key}) : super(key: key);

  @override
  State<ViewAllScreen> createState() => _ViewAllScreenState();
}

class _ViewAllScreenState extends State<ViewAllScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const PramotionCard(),
        VideoCard(
          videoId: '8PnC-lpVD8I',
          channelImage: brototype,
          videoTitle: '',
          videoSubTitle: '',
        ),
        const ShourtSection(),
        VideoCard(
          videoId: '8PnC-lpVD8I',
          channelImage: manorama,
          videoTitle: '',
          videoSubTitle: '',
        ),
        VideoCard(
          videoId: '8PnC-lpVD8I',
          channelImage: dana,
          videoTitle: '',
          videoSubTitle: '',
        ),
      ],
    );
  }
}
