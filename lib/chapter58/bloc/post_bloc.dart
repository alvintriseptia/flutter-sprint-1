import 'package:bloc/bloc.dart';
import 'package:sprint1/chapter58/model/post.dart';

class PostEvent {}

abstract class PostState {}

class PostUninitialized extends PostState {}

class PostLoaded extends PostState {
  final List<Post> posts;
  final bool hasReachedMax;

  PostLoaded({this.posts, this.hasReachedMax});

  PostLoaded copyWith({List<Post> posts, bool hasReachedMax}) {
    return PostLoaded(
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostUninitialized());

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    List<Post> posts;

    if (state is PostUninitialized) {
      posts = await Post.connectToAPI(0, 10);
      yield PostLoaded(posts: posts, hasReachedMax: false);
    } else {
      PostLoaded postLoaded = state as PostLoaded;
      posts = await Post.connectToAPI(postLoaded.posts.length, 10);
      yield posts.isEmpty
          ? postLoaded.copyWith(hasReachedMax: true)
          : PostLoaded(
              posts: postLoaded.posts + posts,
              hasReachedMax: false,
            );
    }
  }
}
