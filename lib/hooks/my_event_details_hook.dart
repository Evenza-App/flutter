import 'package:evenza/models/buffet.dart';
import 'package:evenza/models/my_event.dart';
import 'package:evenza/models/my_event_detail.dart';
import 'package:evenza/services/buffet_service.dart';
import 'package:evenza/services/my_event_details_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

(bool, MyEventDetails) useMyEventDetails({required int id}) {
  return use(_MyEventDetailsHook(id: id));
}

class _MyEventDetailsHook extends Hook<(bool, MyEventDetails)> {
  const _MyEventDetailsHook({required this.id});
  final int id;
  @override
  _MyEventDetailsHookState createState() => _MyEventDetailsHookState();
}

class _MyEventDetailsHookState
    extends HookState<(bool, MyEventDetails), _MyEventDetailsHook> {
  bool loading = true;
  MyEventDetails myEventDetails = MyEventDetails(
      id: 0,
      startTime: '',
      endTime: '',
      date: 'date',
      status: 'status',
      location: 'location',
      numberOfPeople: 0,
      event: 'event',
      photographer: Photographer(name: 'name', image: 'image'),
      buffet: [],
      details: [],
      image: null, payment:null);

  final MyEventDetailsService service = MyEventDetailsService();

  @override
  void initHook() async {
    super.initHook();

    // api
    myEventDetails = await service.getmyeventdetails(hook.id);
    loading = false;
    setState(() {});
  }

  @override
  (bool, MyEventDetails) build(BuildContext context) =>
      (loading, myEventDetails);
}
