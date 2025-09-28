import '../models/post.dart';

abstract class PostRepository {
  Future<List<Post>> fetchPosts();
}