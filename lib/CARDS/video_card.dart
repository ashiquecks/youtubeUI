import 'package:flutter/material.dart';
import 'package:youtube/const.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoCard extends StatefulWidget {
  final String videoId;
  final String channelImage;
  final String videoTitle;
  final String videoSubTitle;
  const VideoCard({
    required this.videoId,
    required this.channelImage,
    required this.videoTitle,
    required this.videoSubTitle,
  });

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  static var youtubeUrl;

  void contevertUrl() {
    youtubeUrl = YoutubePlayer.convertUrlToId(videoUri);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: widget.videoId,
                  flags: const YoutubePlayerFlags(autoPlay: false, mute: false),
                ),
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.white,
              ),
            ),
            controllBox()
          ],
        ),
        discriptionTile(
            circleImage: widget.channelImage,
            titleText: widget.videoTitle.isEmpty
                ? "Through historical references, stories"
                : widget.videoTitle,
            subTitletext: widget.videoSubTitle.isEmpty
                ? "captured in a monochromatic photograph of the G2 Model"
                : widget.videoSubTitle),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
