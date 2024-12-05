import 'package:dio/dio.dart';

class PictureService {
  final Dio _dio;

  PictureService()
      : _dio = Dio(BaseOptions(
          baseUrl: 'https://picsum.photos/',
        ));

  Future<List<dynamic>> fetchPictures({int page = 1, int limit = 10}) async {
    final response = await _dio.get(
      'v2/list',
      queryParameters: {'page': page, 'limit': limit},
    );
    return response.data;
  }

  Future<Map<String, dynamic>> fetchPictureDetail(int id) async {
    final response = await _dio.get('id/$id/info');
    return response.data;
  }
}
