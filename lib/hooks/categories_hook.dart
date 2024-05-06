import 'package:evenza/models/category.dart';
import 'package:evenza/services/category_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

(bool, List<Category>) useCategories() {
  return use(const _CategoriesHook());
}

class _CategoriesHook extends Hook<(bool, List<Category>)> {
  const _CategoriesHook();

  @override
  _CategoriesHookState createState() => _CategoriesHookState();
}

class _CategoriesHookState
    extends HookState<(bool, List<Category>), _CategoriesHook> {
  bool loading = true;
  List<Category> categories = [];

  final CategoryService service = CategoryService();

  @override
  void initHook() async {
    super.initHook();

    // api
    categories = await service.getAll();
    loading = false;
    setState(() {});
  }

  @override
  (bool, List<Category>) build(BuildContext context) => (loading, categories);
}
