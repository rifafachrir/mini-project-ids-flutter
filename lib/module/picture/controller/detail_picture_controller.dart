import 'package:get/get.dart';
import 'package:dio/dio.dart';

class DetailPictureController extends GetxController {
  final Dio _dio = Dio();
  final pictureDetail ={}.obs;
  var isLoading = true.obs;
  late int pictureId;


  @override
  void onInit() {
    super.onInit();
    pictureId = int.tryParse(Get.arguments['id']) ?? 0;
    getPictureDetail(pictureId);
  }

  void getPictureDetail(int id) async {
    print("run Detail Controller ");
    try{
      isLoading.value = true;
      final response = await _dio.get('https://picsum.photos/id/${pictureId}/info');
      pictureDetail.value = response.data;
    }catch (e) {
      Get.snackbar("Error", "Failed to fetch picture detail: $e");
    } finally {
      isLoading.value = false;
    }
  }
}