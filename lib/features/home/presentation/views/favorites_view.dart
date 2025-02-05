import 'package:cached_network_image/cached_network_image.dart';
import 'package:carecomm_test/core/util/app_colors.dart';
import 'package:carecomm_test/core/util/custom_text_styles.dart';
import 'package:carecomm_test/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:carecomm_test/features/home/data/models/product_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesBox = GetIt.I<Box<ProductModel>>();

    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            text: "Favorites",
          ),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: favoritesBox.listenable(),
              builder: (context, Box<ProductModel> box, _) {
                final favoritesList = box.values.toList();

                return ListView.builder(
                  itemCount: favoritesList.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    final product = favoritesList[index];

                    return Container(
                      height: 0.09.sh,
                      margin: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 10.h),
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
                      child: ListTile(
                        title: Text(
                          product.title ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.textStyle12.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        subtitle: Text(
                          "\$${product.price ?? 0}",
                          style: CustomTextStyles.textStyle12.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[500],
                          ),
                        ),
                        leading: SizedBox(
                          width: 50.w,
                          height: 50.h,
                          child: CachedNetworkImage(
                            imageUrl: product.image ?? '',
                          ),
                        ),
                        trailing: IconButton(
                          icon: CircleAvatar(
                            backgroundColor: AppColors.primaryColor,
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            box.delete(product.id);
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
