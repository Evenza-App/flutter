
import 'package:evenza/models/buffet.dart';
import 'package:evenza/models/my_event.dart';
import 'package:evenza/services/buffet_service.dart';
import 'package:evenza/services/my_event_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

(bool, List<MyEvent>) useMyEvents() {
  return use(const _MyEventsHook());
}

class _MyEventsHook extends Hook<(bool, List<MyEvent>)> {
  const _MyEventsHook();

  @override
  _MyEventsHookState createState() => _MyEventsHookState();
}

class _MyEventsHookState extends HookState<(bool, List<MyEvent>), _MyEventsHook> {
  bool loading = true;
  List<MyEvent> myEvents =
      [];

  final MyEventService service = MyEventService();

  @override
  void initHook() async {
    super.initHook();

    // api
    myEvents = await service.getAll();
    loading = false;
    setState(() {});
  }

  @override
  (bool, List<MyEvent>) build (BuildContext context) => (loading,myEvents);
}
