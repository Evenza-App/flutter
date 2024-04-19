import 'package:evenza/models/photographer.dart';
import 'package:evenza/services/photographer_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

(bool,List<Photographer>)usePhotographer({required int id}){
  return use( _PhotographersHook(id:id));
}
class _PhotographersHook extends Hook<(bool,List<Photographer>)>{
  const _PhotographersHook({required this.id});
final int id;
  @override
  _PhotographersHookState createState()=> _PhotographersHookState();
}

class _PhotographersHookState extends HookState<(bool,List<Photographer>),_PhotographersHook>{
  bool loading=true;
  List<Photographer>photographers=[];

  final PhotographerService service=PhotographerService();

  @override
  void initHook()async{
    super.initHook();

    photographers=await service.getAll(hook.id);
    loading=false;
    setState(() { });
  }

  @override
  (bool,List<Photographer>)build(BuildContext context)=>(loading,photographers);
}