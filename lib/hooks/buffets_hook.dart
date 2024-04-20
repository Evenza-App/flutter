import 'dart:html';

import 'package:evenza/models/buffet.dart';
import 'package:evenza/models/event.dart';
import 'package:evenza/services/buffet_service.dart';
import 'package:evenza/services/event_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

(bool, List<Buffet>) useBuffet({required int id}) {
  return use(_BuffetsHook(id: id));
}

class _BuffetsHook extends Hook<(bool, List<Buffet>)> {
  const _BuffetsHook({required this.id});
  final int id;
  @override
  _BuffetsHookState createState() => _BuffetsHookState();
}

class _BuffetsHookState extends HookState<(bool, List<Buffet>), _BuffetsHook> {
  bool loading = true;
  List<Buffet> buffets =
      [];

  final BuffetService service = BuffetService();

  @override
  void initHook() async {
    super.initHook();

    // api
    buffets = await service.getAll(hook.id);
    loading = false;
    setState(() {});
  }

  @override
  (bool, List<Buffet>) build (BuildContext context) => (loading,buffets);
}
