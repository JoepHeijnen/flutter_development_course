import 'package:event_bus/event_bus.dart';

class EventBusService {
  final EventBus _eventBus = EventBus();

  EventBus getInstance() {
    return _eventBus;
  }
}
