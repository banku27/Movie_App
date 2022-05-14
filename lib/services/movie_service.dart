import 'package:get_it/get_it.dart';
import 'package:movie_app/services/http__service.dart';

class MovieService {
  final GetIt getIt = GetIt.instance();

  late HttpService _http;

  MovieService() {
    _http = getIt.get<HttpService>();
  }
}
