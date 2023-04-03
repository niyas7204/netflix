import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/apllication/fast_lagh/fast_lagh_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/const_strings.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget childWidget;
  final Downloads movieData;

  const VideoListItemInheritedWidget(
      {super.key, required this.childWidget, required this.movieData})
      : super(child: childWidget);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItems extends StatelessWidget {
  final int index;
  const VideoListItems({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final videodata = videoUrl[index % videoUrl.length];
    final postarPath =
        VideoListItemInheritedWidget.of(context)?.movieData.pasterPath;
    return Stack(
      children: [
        FastLaghVidoPlayer(
          videoData: videodata,
          onStateChanged: (isPlaying) {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(.5),
                radius: 30,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off_sharp,
                      size: 30,
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CircleAvatar(
                      backgroundImage: postarPath == null
                          ? null
                          : NetworkImage('$imageApentUrl$postarPath'),
                      radius: 25,
                    ),
                  ),
                  ValueListenableBuilder(
                    valueListenable: likedVideosIdNotifier,
                    builder: (context, newLikedlist, _) {
                      final id = index;
                      if (newLikedlist.contains(id)) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: GestureDetector(
                            onTap: () {
                              //BlocProvider.of<FastLaghBloc>(context).add(UnLikedVideos(id: id));
                              likedVideosIdNotifier.value.remove(index);
                              likedVideosIdNotifier.notifyListeners();
                            },
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                Text(
                                  'Liked',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return GestureDetector(
                          onTap: () {
                            //BlocProvider.of<FastLaghBloc>(context)
                            //.add(LikedVideos(id: id));
                            likedVideosIdNotifier.value.add(index);
                            likedVideosIdNotifier.notifyListeners();
                          },
                          child: const ActionIconsWidget(
                              icon: Icons.favorite, label: 'like'),
                        );
                      }
                    },
                  ),
                  const ActionIconsWidget(icon: Icons.add, label: 'My List'),
                  GestureDetector(
                      onTap: () {
                        final movieName =
                            VideoListItemInheritedWidget.of(context)
                                ?.movieData
                                .title;
                        if (movieName != null) {
                          Share.share(movieName);
                        }
                      },
                      child: const ActionIconsWidget(
                          icon: Icons.share, label: 'Share')),
                  const ActionIconsWidget(
                      icon: Icons.play_arrow_sharp, label: 'Play')
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class ActionIconsWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  const ActionIconsWidget({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: clrWhite,
            size: 30,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class FastLaghVidoPlayer extends StatefulWidget {
  final String videoData;
  final void Function(bool isPlaying) onStateChanged;

  const FastLaghVidoPlayer(
      {super.key, required this.videoData, required this.onStateChanged});

  @override
  State<FastLaghVidoPlayer> createState() => _FastLaghVidoPlayerState();
}

class _FastLaghVidoPlayerState extends State<FastLaghVidoPlayer> {
  late VideoPlayerController videoPlayerController;
  @override
  void initState() {
    videoPlayerController = VideoPlayerController.network(widget.videoData);
    videoPlayerController.initialize().then((value) {
      setState(() {
        videoPlayerController.value.isPlaying
            ? videoPlayerController.pause()
            : videoPlayerController.play();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: videoPlayerController.value.aspectRatio,
              child: VideoPlayer(videoPlayerController),
            )
          : const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }
}
