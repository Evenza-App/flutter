import 'package:evenza/models/event.dart';
import 'package:evenza/services/event_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

(bool, Event) useEventDetails({required int id}) {
  return use(_EventDetailsHook(id: id));
}

class _EventDetailsHook extends Hook<(bool, Event)> {
  const _EventDetailsHook({
    required this.id,
  });

  final int id;

  @override
  _EventDetailsHookState createState() => _EventDetailsHookState();
}

class _EventDetailsHookState
    extends HookState<(bool, Event), _EventDetailsHook> {
  bool loading = true;
  Event event = Event(id: 0, name: 'jkk', image: 'ffh');

  final EventService service = EventService();

  @override
  void initHook() async {
    super.initHook();

    // api
    event = await service.geteventdetails(hook.id);
    loading = false;
    setState(() {});
  }

  @override
  (bool, Event) build(BuildContext context) => (loading, event);
}
