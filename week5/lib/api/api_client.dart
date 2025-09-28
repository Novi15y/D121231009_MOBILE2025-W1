abstract class ApiClient {
  Future<List<Map<String, dynamic>>> getPosts();
}

class FakeApiClient implements ApiClient {
  final bool shouldfail;
  FakeApiClient({this.shouldFail = false});
  @override
  Future<List<Map<String, dynamic>>> getPosts() async {

    await Future.delayed(const Duration(milliseconds: 800));
    if (shouldfail) {
      throw Exception('Simulated network eror');
    }
    return [
      {
      'id' : 1,
      'title': 'hello FLutter'
      'body':  'Ini adalah contoh posting pertama (hardcode).'
      },
    ]
  }
}