import 'package:dio/dio.dart' ;

class PictureService {
  final Dio dio;

  static const String _baseurl = 'https://picsum.photos';

  PictureService(this.dio){
    dio.options.baseUrl = _baseurl;
  }

  Future<List<dynamic>> getPictures() async {
    try {
      final response = await dio.get('https://picsum.photos/v2/list');
      if(response.statusCode == 200) {
        return response.data;
      } else{
        throw Exception("Failed to fetch the Image");
      }
    }catch(e){
      throw Exception("Something Wrong : $e");
    }
  }
}

// buat ngefetch API