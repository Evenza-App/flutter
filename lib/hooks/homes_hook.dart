import 'package:evenza/models/home.dart';
import 'package:evenza/services/home_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

(bool, Home) useHome() {
  return use(const _HomesHook());
}

class _HomesHook extends Hook<(bool, Home)> {
  const _HomesHook();

  @override
  _HomesHookState createState() => _HomesHookState();
}

class _HomesHookState extends HookState<(bool, Home), _HomesHook> {
  bool loading = true;
  Home homes = Home(
    latestevents: [],
    trends: [],
  );

  final HomeService service = HomeService();

  @override
  void initHook() async {
    super.initHook();

    // api
    homes = await service.getAll();
    loading = false;
    setState(() {});
  }

  @override
  (bool, Home) build(BuildContext context) => (loading, homes);
}
