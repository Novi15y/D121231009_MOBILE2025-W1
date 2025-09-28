
abstract class ApiClient {
  // Mengembalikan list JSON post (seolah response REST)
  Future<List<Map<String, dynamic>>> getPosts();
}

// Fake API client untuk kelas. Data hardcoded di sini.
// Kamu bisa mengganti implementasi ini ke real HTTP client nanti.
class FakeApiClient implements ApiClient {
  final bool shouldFail; // untuk simulasi error dari network
  FakeApiClient({this.shouldFail = false});
  @override
  Future<List<Map<String, dynamic>>> getPosts() async {
    await Future.delayed(const Duration(milliseconds: 800)); // Simulasi network latency
    if (shouldFail) {
      throw Exception('Simulated network error');
    }
    return [
      {
        'id': 1,
        'title': 'Hello Flutter',
        'body': 'Ini adalah conoth posting pertama (hardcoded)',
      },
      {
        'id': 2,
        'title': 'Belajar SOLID',
        'body': 'Single responsibility, dependency inversion, dll',
      },
    ];
  }
}
