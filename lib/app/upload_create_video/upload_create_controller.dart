import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class PickerController extends GetxController {
  var selectedFile = Rx<File?>(null);
  final ImagePicker _picker = ImagePicker();
  VideoPlayerController? videoPlayerController;
  var isPlaying = false.obs;

  // Method to pick a video from the gallery
  Future<void> pickVideo(ImageSource source) async {
    try {
      final pickedFile = await _picker.pickVideo(source: source);

      if (pickedFile != null) {
        selectedFile.value = File(pickedFile.path);
        videoPlayerController?.dispose();  // Dispose of any existing video player
        videoPlayerController = VideoPlayerController.file(File(pickedFile.path))
          ..initialize().then((_) {
            update();  // Notify GetX of changes
          });
      }
    } catch (e) {
      // Handle or log the error
      print('Error picking video: $e');
    }
  }

  void playPauseVideo() {
    if (videoPlayerController == null) return;
    if (isPlaying.value) {
      videoPlayerController!.pause();
    } else {
      videoPlayerController!.play();
    }
    isPlaying.value = !isPlaying.value;
  }

  @override
  void dispose() {
    videoPlayerController?.dispose();
    super.dispose();
  }
}
