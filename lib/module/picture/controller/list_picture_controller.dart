import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class ListPictureController extends GetxController {
  var isLoading = true.obs;
  var pictures = [].obs;

  final PictureService pictureService = PictureService();

  @override
  void onInit() {
    super.onInit();
    fetchPictures();
  }

  void fetchPictures({int page = 1, int limit = 10}) async {
    isLoading.value = true;
    try {
      final fetchedPictures = await pictureService.fetchPictures(page: page, limit: limit);
      pictures.value = fetchedPictures;
    } catch (e) {
      print("Error fetching pictures: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
