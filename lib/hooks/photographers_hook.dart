import 'package:evenza/models/photographer.dart';
import 'package:evenza/services/photographer_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// (bool,List<Photographer>)usePhotographer(){
(bool, List<Photographer>, void Function(String)) usePhotographer() {
  return use(_PhotographersHook());
}

// class _PhotographersHook extends Hook<(bool,List<Photographer>)>{
class _PhotographersHook
    extends Hook<(bool, List<Photographer>, void Function(String))> {
  const _PhotographersHook();
  @override
  _PhotographersHookState createState() => _PhotographersHookState();
}

// class _PhotographersHookState extends HookState<(bool,List<Photographer>),_PhotographersHook>{
class _PhotographersHookState extends HookState<
    (bool, List<Photographer>, void Function(String)), _PhotographersHook> {
  bool loading = true;
  List<Photographer> photographers = [];

  final PhotographerService service = PhotographerService();
  late final void Function(String) searchFunction = (String search) async {
    loading = true;
    setState(() {});
    photographers = await service.getAll(search);
    loading = false;

    setState(() {});
  };

  @override
  void initHook() async {
    super.initHook();

    // photographers = await service.getAll();
    // loading = false;

    // setState(() {});
  }

  @override
  // (bool,List<Photographer>)build(BuildContext context)=>(loading,photographers);
  (bool, List<Photographer>, void Function(String)) build(
          BuildContext context) =>
      (loading, photographers, searchFunction);
}
