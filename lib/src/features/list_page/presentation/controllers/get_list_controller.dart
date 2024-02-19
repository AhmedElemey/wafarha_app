import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wafarha_app/src/features/list_page/domain/list_model.dart';
import 'package:wafarha_app/src/features/list_page/services/get_list_service.dart';

final pageNumberProvider = StateProvider<int>((ref) {
  return 1;
});

final myListControllerProvider =
    AutoDisposeAsyncNotifierProvider<MyListController, List<ListEntity>?>(
        MyListController.new);

class MyListController extends AutoDisposeAsyncNotifier<List<ListEntity>?> {
  @override
  FutureOr<List<ListEntity>?> build() async {
    state = const AsyncValue.loading();
    await fetchMoreData(const ListRequest(pageNo: 1, pageSize: 10));
    return state.value;
  }

  Future<void> fetchMoreData(ListRequest params) async {
    state = await AsyncValue.guard(() async {
      final result = await ref.read(listServiceProvider).fetchList(params);
      if (!state.hasValue) {
        return result.data!;
      } else if (state.hasValue) {
        return AsyncValue.data([...state.value!, ...result.data!]).value;
      }
      return state.value;
    });
  }

  List<ListEntity> sortList(SortBy sortBy, bool ascending) {
    return state.value!.toList()
      ..sort((a, b) {
        int comparison;
        switch (sortBy) {
          case SortBy.albumId:
            comparison = a.albumId.compareTo(b.albumId);
            break;
          case SortBy.title:
            comparison = a.title.compareTo(b.title);
            break;
          default:
            throw Exception('Unsupported sort criteria: $sortBy');
        }
        return ascending ? comparison : -comparison;
      });
  }

  // List<ListEntity> filterList(int albumId) {
  //   return state.value!.where((element) => element.albumId == albumId).toList();
  // }
}

enum SortBy {
  albumId,
  title,
}

// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:wafarha_app/src/features/list_page/domain/list_model.dart';
// import 'package:wafarha_app/src/features/list_page/services/get_list_service.dart';

// final myListControllerProvider =
//     FutureProvider.autoDispose<List<ListEntity>?>((ref) async {
//   try {
//     final result = (await ref.read(listServiceProvider).fetchList(10, 1)).data;
//     return result;
//   } catch (error, stackTrace) {
//     debugPrint("Error fetching data: $error");
//     rethrow;
//   }
// });

// class MyListController {
//   final List<ListEntity>? data;

//   MyListController(this.data);

//   List<ListEntity>? sortList(SortBy sortBy, bool ascending) {
//     return data!.toList()
//       ..sort((a, b) {
//         int comparison;
//         switch (sortBy) {
//           case SortBy.albumId:
//             comparison = a.albumId.compareTo(b.albumId);
//             break;
//           case SortBy.title:
//             comparison = a.title.compareTo(b.title);
//             break;
//           default:
//             throw Exception('Unsupported sort criteria: $sortBy');
//         }
//         return ascending ? comparison : -comparison;
//       });
//   }

//   List<ListEntity> filterList(int albumId) {
//     return data?.where((element) => element.albumId == albumId).toList() ?? [];
//   }
// }

// enum SortBy {
//   albumId,
//   title,
// }
