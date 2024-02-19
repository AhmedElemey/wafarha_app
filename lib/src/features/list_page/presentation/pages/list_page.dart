import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wafarha_app/src/features/list_page/domain/list_model.dart';
import 'package:wafarha_app/src/features/list_page/presentation/controllers/get_list_controller.dart';
import 'package:wafarha_app/src/utils/overlay.dart';

class ListPage extends StatefulHookConsumerWidget {
  const ListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<ListPage> {
  @override
  Widget build(BuildContext context) {
    final listController = ref.watch(myListControllerProvider);
    final pageLimit = ref.watch(pageNumberProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Page'),
        actions: [
          InkWell(
              onTap: () {
                ref
                    .read(myListControllerProvider.notifier)
                    .sortList(SortBy.title, true);
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.sort,
                  color: Colors.red,
                ),
              )),
          InkWell(
              onTap: () {
                ref.read(pageNumberProvider.notifier).state++;
                ref.read(myListControllerProvider.notifier).fetchMoreData(
                    ListRequest(pageNo: 1, pageSize: 10 * pageLimit));
                context.showToast(
                    message: 'New Page Added', status: OverlayStatus.alert);
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.more,
                  color: Colors.green,
                ),
              )),
          InkWell(
              onTap: () {
                // ref.read(myListControllerProvider.notifier).filterList(albumId);
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(
                  Icons.filter,
                  color: Colors.blue,
                ),
              )),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // ref.invalidate(listControllerProvider);
        },
        child: listController.when(
          data: (data) {
            debugPrint(data.toString());
            return ListView.builder(
              shrinkWrap: true,
              itemCount: data!.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width * .5,
                                child: Text(data[index].title)),
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(35),
                        child: InkWell(
                          onTap: () {
                            // when the user click on the photo it will be opened in a pop up
                            showDialog(
                              context: context,
                              builder: (context) => PhotoDialog(
                                url: data[index].url,
                              ),
                            );
                          },
                          child: Image.network(
                            data[index].url,
                            fit: BoxFit.fill,
                            loadingBuilder: (BuildContext context, Widget child,
                                ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Container(
                                alignment: AlignmentDirectional.center,
                                width: 20,
                                height: 20,
                                child: const CircularProgressIndicator.adaptive(
                                    backgroundColor: Colors.deepOrangeAccent),
                              );
                            },
                            errorBuilder: (_, __, ___) {
                              return const Icon(Icons.error);
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
          error: (error, stackTrace) {
            return Center(child: Text(error.toString()));
          },
          loading: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
        ),
      ),
    );
  }
}

class PhotoDialog extends StatelessWidget {
  final String? url;
  const PhotoDialog({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.network(
        url!,
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height * 0.5,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            alignment: AlignmentDirectional.center,
            child: const CircularProgressIndicator.adaptive(),
          );
        },
        errorBuilder: (_, __, ___) {
          return const SizedBox();
        },
      ),
    );
  }
}
