import 'package:evenza/models/user.dart';
import 'package:evenza/services/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

(bool, User) useUser() {
  return use(_UserHook());
}

class _UserHook extends Hook<(bool, User)> {
  const _UserHook();

  @override
  _UserHookState createState() => _UserHookState();
}

class _UserHookState extends HookState<(bool, User), _UserHook> {
  bool loading = true;
  User user =
      User(id: 0, name: 'kpo', address: 'address', phone: '', email: '');

  final AutheticationService service = AutheticationService();

  @override
  void initHook() async {
    super.initHook();

    // api
    user = await service.getprofile();
    loading = false;
    setState(() {});
  }

  @override
  (bool, User) build(BuildContext context) => (loading, user);
}
