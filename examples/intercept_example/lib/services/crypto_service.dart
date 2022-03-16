import 'package:dio/dio.dart';
import 'package:event_bus/event_bus.dart';
import '../api/api.dart';

class CryptoService {
  final EventBus _eventBus = EventBus();

  Future<Response> getCrypto(String _coin) async {
    return Api().dio.get('/simple/price',
        queryParameters: {'ids': _coin, 'vs_currencies': 'eur'});
  }

  EventBus getEventBusInstance() {
    return _eventBus;
  }
}
