import 'package:http/http.dart' as http;
import 'package:oauth2/oauth2.dart' as oauth2;

abstract class RemoteDataSource {
  /// Requests authorization from api
  /// Returns [AccessToken] if successfull
  /// Throws a [ServerException] if status is not 200
  Future<oauth2.Credentials> login();
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final http.Client client;
  RemoteDataSourceImpl({required this.client});

  @override
  Future<oauth2.Credentials> login() {
    // TODO: implement login
    throw UnimplementedError();
  }
}
