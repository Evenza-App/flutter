import 'package:cached_network_image/cached_network_image.dart';
import 'package:evenza/helpers/api/api_helper.dart';
import 'package:evenza/styles/images.dart';
import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  const CustomImageWidget({super.key, required this.imageUrl});

  final String imageUrl;

    static CachedNetworkImageProvider provider(String url) => CachedNetworkImageProvider(url, headers: ApiHelper.ngrokHeaders);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      httpHeaders: ApiHelper.ngrokHeaders,
      placeholder: (context, url) => Image.asset(BaseImages.logo),
      errorWidget: (context, url, _) => Image.asset(BaseImages.logo),
    );

  }
}
