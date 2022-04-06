import 'package:injectable/injectable.dart';
import 'package:injectable_example/providers/quote_api_provider.dart';

@injectable
class QuoteRepository {
  final QuoteApiProvider _provider;
  final String _env;

  const QuoteRepository(
      {@Named("prod") required QuoteApiProvider provider, @factoryParam env})
      : _env = env,
        _provider = provider;

  Future<List> getQuotes() {
    return _provider.getQuotes(_env);
  }
}
