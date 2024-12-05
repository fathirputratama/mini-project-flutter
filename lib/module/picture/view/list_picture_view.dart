import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class ListPictureView extends StatelessWidget {
  const ListPictureView({super.key});

  @override
  Widget build(BuildContext context) {
    final ListPictureController controller = Get.find();

    return Scaffold(
      appBar: AppBar(title: const Text("List Photo")),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: controller.pictures.length,
          itemBuilder: (context, index) {
            final picture = controller.pictures[index];

            return ListContentWidget(
              imageUrl: picture['download_url'],
              author: picture['author'],
              onTap: () {
                Get.toNamed(
                  Routes.DETAIL,
                  arguments: {'id': picture['id'].toString()},
                );
              },
            );
          },
        );
      }),
    );
  }
}
