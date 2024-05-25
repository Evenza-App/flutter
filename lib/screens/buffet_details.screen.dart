import 'package:evenza/hooks/buffets_details_hook.dart';
import 'package:evenza/hooks/buffets_hook.dart';
import 'package:evenza/models/Buffet_detail.dart';
import 'package:evenza/models/buffet.dart';
import 'package:evenza/widgets/base_loading.dart';
import 'package:evenza/widgets/buffet_details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class BuffetDetailsScreen extends HookWidget {
  const BuffetDetailsScreen({super.key, required this.buffetDetail});
  final BuffetDetail buffetDetail;
  @override
  Widget build(BuildContext context) {
    final (loading, buffet) = useBuffetDetails(id: buffetDetail.id);

    return loading
        ? BaseLoading()
        : BuffetDetailsWidget(
            id: buffet.id,
            imagePath: buffet.image,
            type: buffet.type,
            onback: () {
              // Get.off(null);
              Get.offAll(null);
            },
            title: buffet.name,
            price: buffet.price.toString(),
            ingredient: buffet.ingredients,
          );
  }
}
