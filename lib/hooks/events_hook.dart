

import 'package:evenza/models/event.dart';
import 'package:evenza/services/event_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

(bool, List<Event>) useEvents() {
  return use(const _EventsHook());
}

class _EventsHook extends Hook<(bool, List<Event>)> {
  const _EventsHook();

  @override
  _EventsHookState createState() => _EventsHookState();
}

class _EventsHookState
    extends HookState<(bool, List<Event>), _EventsHook> {
  bool loading = true;
  List<Event> events = [];

  final EventService service = EventService();

  @override
  void initHook() async {
    super.initHook();

    // api
    events = await service.getAll();
    loading = false;
    setState(() {});
  }

  @override
  (bool, List<Event>) build(BuildContext context) => (loading, events);
}
