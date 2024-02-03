import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../model/viderolist.dart';

class VideoPlayerControllerDemo extends GetxController {
  late VideroItem videroItem;
  late VideoPlayerController videoController =
      VideoPlayerController.asset(videroItem.urlVideo);
  var isFullScreen = false.obs;
  var isPlaying = false.obs;
  var videoSliderValue = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    videoController.dispose();
    super.onClose();
  }

  void playVideo() {
    videoController.play();
    isPlaying.value = true;
  }

  void stopVideo() {
    videoController.pause();
  }

  void stopVideozero() {
    videoController.pause();
    videoController.seekTo(Duration.zero);
  }

  Future<void> initializeVideo(String videoUrl) async {
    videoController = VideoPlayerController.asset(videoUrl);
    await videoController.initialize();
    videoController.addListener(() {
      isPlaying.value = videoController.value.isPlaying;
      videoSliderValue.value =
          videoController.value.position.inSeconds.toDouble() /
              videoController.value.duration.inSeconds.toDouble();
    });
  }

  void setPlay() {
    isPlaying.value = !isPlaying.value;
    isPlaying.value ? videoController.pause() : videoController.play();
  }

  void toggleFullScreen() {
    isFullScreen.value = !isFullScreen.value;
  }

  void togglePlayPause() {
    isPlaying.value ? videoController.pause() : videoController.play();
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitHours = twoDigits(duration.inHours.remainder(60));
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitHours:$twoDigitMinutes:$twoDigitSeconds";
  }

  void onVideoSliderChanged(double value) {
    final Duration duration = videoController.value.duration;
    videoController
        .seekTo(Duration(seconds: (duration.inSeconds * value).toInt()));
  }
}
