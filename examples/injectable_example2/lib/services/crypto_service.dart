import "package:dio/dio.dart";
import "package:injectable/injectable.dart";

@Named("Prod")
@injectable
class CryptoService {
  CryptoService();
  final _dio = Dio(BaseOptions(baseUrl: "https://api.coingecko.com/api/v3"));

  Future<dynamic> getCoins() async {
    try {
      Response? _response = await _dio
          .get("/coins/markets", queryParameters: {"vs_currency": "eur"});
      return _response;
    } catch (e) {
      throw Exception("Something went wrong in CryptoService");
    }
  }
}
