import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wafarha_app/src/core/dio_provider.dart';
import 'package:wafarha_app/src/features/list_page/domain/list_model.dart';

final listServiceProvider =
    Provider((ref) => ListService(client: ref.watch(dioProvider)));

class ListService {
  final Dio client;
  const ListService({required this.client});

  Future<MyListResponse> fetchList(ListRequest params) async {
    debugPrint('hena?');

    // try {
    final result = await client.get(
        'https://jsonplaceholder.typicode.com/photos?_limit=${params.pageSize}&_page=${params.pageNo}');

    if (result.statusCode != 200) {
      throw Exception(result.data);
    }
    // final listMap = result.data as List<dynamic>; // Get the list
    // final map = listMap[0] as Map<String, dynamic>;
    final listData = result.data as List<dynamic>;
    final mappedList = listData
        .map(
            (dynamic item) => ListEntity.fromJson(item as Map<String, dynamic>))
        .toList();
    final myListResponse = MyListResponse(data: mappedList);
    return myListResponse;
    // } catch (exception) {
    //   if (exception.runtimeType == DioError) {
    //     final dioException = exception as DioError;

    //     throw Exception(dioException.errorMsg); // Do something with response
    //   }
    //   rethrow;
    // }
  }
}
