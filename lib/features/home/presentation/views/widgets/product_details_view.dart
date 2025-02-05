import 'package:cached_network_image/cached_network_image.dart';
import 'package:carecomm_test/core/util/app_colors.dart';
import 'package:carecomm_test/core/util/custom_text_styles.dart';
import 'package:carecomm_test/features/home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsView extends StatelessWidget {
  final ProductModel product;
  const ProductDetailsView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          product.title ?? '',
          style: CustomTextStyles.textStyle14.copyWith(
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 12.h,
          children: [
            Container(
              padding: EdgeInsets.all(12.r),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: CachedNetworkImage(
                imageUrl: product.image ?? '',
                height: 0.5.sh,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.r),
              child: Column(
                spacing: 12.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title ?? '',
                    style: CustomTextStyles.textStyle12.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    product.description ?? '',
                    style: CustomTextStyles.textStyle12.copyWith(
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "\$${product.price.toString()}",
                    style: CustomTextStyles.textStyle12.copyWith(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.all(12.r),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25.r)),
                      child: Text(
                        product.category ?? '',
                        style: CustomTextStyles.textStyle12.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
