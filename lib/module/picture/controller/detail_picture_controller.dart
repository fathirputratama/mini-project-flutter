import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class DetailPictureController extends GetxController {
  var isLoading = true.obs;
  var pictureDetail = {}.obs;

  final PictureService pictureService = PictureService();

  void fetchPictureDetail(int id) async {
    isLoading.value = true;
    try {
      final fetchedDetail = await pictureService.fetchPictureDetail(id);
      pictureDetail.value = fetchedDetail;
    } catch (e) {
      print("Error fetching picture detail: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
