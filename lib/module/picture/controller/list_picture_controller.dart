import 'package:dio/dio.dart';
import 'package:get/get.dart';
import  '../../../core.dart';

class ListPictureController extends GetxController {
  late final Dio _dio;
  late final PictureService _pictureService;


  var pictures = <Map<String, dynamic>>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    // Inisialisasi data
    // semua data yang ada wajib kena inisialisasi
    super.onInit();
    _dio = Dio();
    _pictureService = PictureService(_dio);
    getAllPictures();
  }

  void getAllPictures() async {
    print("Fetch the pictures");
    try {
      isLoading.value = true;
      var result = await _pictureService.getPictures(); // manggil fetch data yang di service
      pictures.value = List<Map<String, dynamic>>.from(result);
    }catch (e) {
      Get.snackbar("error", "Failed to get all pictures : $e");
    } finally{
      isLoading.value = false;
    }
  }
}