import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class DetailPictureView extends StatelessWidget {
  const DetailPictureView({super.key});

  @override
  Widget build(BuildContext context) {
    final DetailPictureController controller = Get.find();

    final arguments = Get.arguments;
    final pictureId = arguments != null && arguments['id'] != null
        ? int.tryParse(arguments['id'].toString()) ?? 0
        : 0;

    controller.fetchPictureDetail(pictureId);

    return Scaffold(
      appBar: AppBar(title: const Text("Detail Photo")),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        final picture = controller.pictureDetail;

        return DetailContentWidget(
          imageUrl: picture['download_url'] ?? '',
          author: picture['author'] ?? 'Unknown',
        );
      }),
    );
  }
}
