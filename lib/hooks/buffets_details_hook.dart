import 'package:evenza/models/Buffet_detail.dart';
import 'package:evenza/services/buffet_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

(bool, BuffetDetail) useBuffetDetails({required int id}) {
  return use(_BuffetDetailsHook(id: id));
}

class _BuffetDetailsHook extends Hook<(bool, BuffetDetail)> {
  const _BuffetDetailsHook({
    required this.id,
  });

  final int id;

  @override
  _BuffetDetailsHookState createState() => _BuffetDetailsHookState();
}

class _BuffetDetailsHookState
    extends HookState<(bool, BuffetDetail), _BuffetDetailsHook> {
  bool loading = true;
  BuffetDetail buffetDetail = BuffetDetail(
      id: 0,
      name: 'name',
      type: '',
      ingredients: 'ingredients',
      price: 0,
      image: 'image');
  final BuffetService service = BuffetService();

  @override
  void initHook() async {
    super.initHook();

    // api
    buffetDetail = await service.getbuffetdetails(hook.id);
    loading = false;
    setState(() {});
  }

  @override
  (bool, BuffetDetail) build(BuildContext context) => (loading, buffetDetail);
}
