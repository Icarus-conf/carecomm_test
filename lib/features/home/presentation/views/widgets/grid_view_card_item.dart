import 'package:cached_network_image/cached_network_image.dart';
import 'package:carecomm_test/core/util/custom_text_styles.dart';
import 'package:carecomm_test/features/home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewCardItem extends StatelessWidget {
  const GridViewCardItem({
    super.key,
    required this.product,
    required this.goToDetails,
    required this.saveToFavoriteFunc,
    required this.isFavorite,
  });

  final ProductModel product;
  final Function()? saveToFavoriteFunc;
  final Function()? goToDetails;
  final bool isFavorite;

  final bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: goToDetails,
          child: Container(
            padding: EdgeInsets.all(8.0.r),
            width: double.infinity,
            margin: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                  offset: Offset(0, 2),
                  color: Colors.grey[300]!,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CachedNetworkImage(
                  imageUrl: product.image ?? '',
                  width: 0.2.sw,
                  height: 0.1.sh,
                  fit: BoxFit.fill,
                ),
                Text(
                  product.title ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.textStyle12.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite
                ? Colors.red
                : Colors.grey, // Change color based on `isFavorite`
          ),
          onPressed: saveToFavoriteFunc,
        ),
      ],
    );
  }
}
