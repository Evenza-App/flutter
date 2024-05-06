import 'package:evenza/models/profile.dart';
import 'package:evenza/services/profile_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


(bool, Profile) useProfile({required int id}) {
  return use(_ProfileHook(id: id));
}

class _ProfileHook extends Hook<(bool, Profile)> {
  const _ProfileHook({
    required this.id,
  });

  final int id;

  @override
  _ProfileHookState createState() => _ProfileHookState();
}

class _ProfileHookState extends HookState<(bool, Profile), _ProfileHook> {
  bool loading = true;
  Profile profile = Profile(id: 0, name: 'name', address: 'address', phone: 0);

  final ProfileService service = ProfileService();

  @override
  void initHook() async {
    super.initHook();

    // api
    profile = await service.getProfile(hook.id);
    loading = false;
    setState(() {});
  }

  @override
  (bool, Profile) build(BuildContext context) => (loading, profile);
}
