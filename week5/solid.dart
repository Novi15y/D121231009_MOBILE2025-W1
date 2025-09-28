abstract class ApiClient {
  String fetch();
}

class HttpApiClient implements ApiClient {
  @override
  String fetch() {
    return 'data from Http Api Client';
  }
}

class FirebaseApiClient implements ApiClient {
  @override
  String fetch() {
    return 'data from Firebase Api Client';
  }
}

class Repo {
  final ApiClient _apiClient;
  Repo(this._apiClient);
  String fetchData() {
    return _apiClient.fetch();
  }
}

void main() {
  // HttpApiClient httpApiClient = HttpApiClient();
  ApiClient firebaseApiClient = FirebaseApiClient();
  Repo repo = Repo(firebaseApiClient);
  print(repo.fetchData());
}