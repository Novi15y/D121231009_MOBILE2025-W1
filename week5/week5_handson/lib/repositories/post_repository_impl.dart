import '../api/api_client.dart';
import '../models/post.dart';
import 'post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final ApiClient api;
  PostRepositoryImpl(this.api);

  @override
  Future<List<Post>> fetchPosts() async {
    final raw = await api.getPosts(); // raw = List<Map<String, dynamic>>
    return raw.map((json) => Post.fromJson(json)).toList();
  }
}