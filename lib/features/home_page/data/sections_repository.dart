import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:green_grocer_yandeh/features/home_page/domain/models/section_model.dart';

class SectionsRepository {
  Future<List<SectionModel>> getAllSections() async {
    try {
      final dio = Dio();

      final response = await dio.get(
        'https://gateway-smartforce.yandeh.com.br/process/candidates/search-products?argument=*',
        options: Options(
          headers: {
            'token': '562db55d-58f3-407e-bd8e-c66b1af3fcad',
          },
        ),
      );

      final responseMap = response.data['sections'];

      final List<SectionModel> sectionList = responseMap
          .map<SectionModel>((section) => SectionModel.fromMap(section))
          .toList();

      return sectionList;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        log(
          'Server Error: ${e.response?.statusCode} - ${e.response?.statusMessage}',
        );
      } else if (e.type == DioExceptionType.connectionTimeout) {
        log('Connection Timeout Error');
      }
      rethrow;
    } catch (e) {
      log('Unexpected Error: $e');

      return [];
    }
  }
}
