import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprint1/chapter58/bloc/post_bloc.dart';
import 'package:sprint1/chapter58/ui/post_item.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollController controller = ScrollController();
  PostBloc _postBloc;

  void onScroll() {
    double maxScroll = controller.position.maxScrollExtent;
    double currentScroll = controller.position.pixels;

    if (currentScroll == maxScroll) {
      _postBloc.add(PostEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    _postBloc = BlocProvider.of<PostBloc>(context);
    controller.addListener(onScroll);
    return Scaffold(
      appBar: AppBar(title: Text("Infinite List with BLoC")),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<PostBloc, PostState>(builder: (context, state) {
          if (state is PostUninitialized) {
            return Center(
                child: SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(),
            ));
          } else {
            PostLoaded postLoaded = state as PostLoaded;
            return ListView.builder(
                controller: controller,
                itemCount: postLoaded.hasReachedMax
                    ? postLoaded.posts.length
                    : postLoaded.posts.length + 1,
                itemBuilder: (context, index) =>
                    (index < postLoaded.posts.length)
                        ? PostItem(postLoaded.posts[index])
                        : Container(
                            child: Center(
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          ));
          }
        }),
      ),
    );
  }
}
