import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  final List<int> imageIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController _scrollController = ScrollController();

  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels + 200 >=
          _scrollController.position.maxScrollExtent) {
        fectchData();
      }
    });
  }

  Future fectchData() async {
    if (_isLoading) return;
    _isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 3));
    _loadMore();
    _isLoading = false;
    setState(() {});
    if (_scrollController.position.pixels + 100 <=
        _scrollController.position.maxScrollExtent) return;
    _scrollController.animateTo(_scrollController.position.pixels + 200,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void _loadMore() {
    final int index = imageIds.last;
    imageIds.addAll([1, 2, 3, 4, 5].map((e) => index + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final index = imageIds.length;
    imageIds.clear();
    imageIds.add(index + 1);
    _loadMore();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          RefreshIndicator(
            color: Colors.red,
            onRefresh: onRefresh,
            child: ListView.builder(
              controller: _scrollController,
              itemCount: imageIds.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder:
                        const AssetImage('assets/loading/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?image=${imageIds[index]}'));
              },
            ),
          ),
          Positioned(
              bottom: 40,
              left: size.width * 0.5 - 30,
              child: _LoadingIcon(isLoading: _isLoading)),
        ],
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
    required bool isLoading,
  })  : _isLoading = isLoading,
        super(key: key);

  final bool _isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: _isLoading
          ? const CircularProgressIndicator(
              color: Colors.red,
            )
          : null,
    );
  }
}
