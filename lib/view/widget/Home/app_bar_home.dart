import 'package:alaji_new/controller/home_controller.dart';
import 'package:alaji_new/data/model/product_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:get/get.dart';

import '../../../api.dart';
import '../../../core/constant/imageAsset.dart';

class AppbarCarouselWidget extends GetView<HomeControllerImp> {

  const AppbarCarouselWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [

        SizedBox(
          width: size.width,
          height: 185,
          child: Stack(
            children: [
              Positioned(
                top: -2,
                left: 0,
                right: 0,
                child: Container(
                  width: size.width,
                  height: 100,
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.symmetric(
                    vertical: 60,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0),
                    ),
                  ),

                ),
              ),
              Positioned(
                top: 5,
                left: 0,
                right: 0,
                child: Container(
                  width: size.width,
                  height: 170.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),

                  child: Card(
                    color: Theme.of(context).cardColor,
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:  Swiper(
                        itemCount:  controller.productAppBar.length,
                        autoplay: true,
                        pagination:
                        const SwiperPagination(margin: EdgeInsets.all(10),
                          builder: DotSwiperPaginationBuilder(
                            color: Colors.grey,activeColor: Colors.green,
                          ),

                        ),


                        itemBuilder: (BuildContext context, int index) {

                          return  ProductAppBar(productModel: ProductModel.fromJson(controller.productAppBar[index]),);
                        }),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

}

class ProductAppBar extends StatelessWidget {
  final ProductModel productModel;
  const ProductAppBar({Key? key,required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: (){
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) {
        //   return ProductDetail(
        //     id : products[index].id,
        //     imageJpj: products[index].imageJpj,
        //   );
        // }));
      },
      child: CachedNetworkImage(

        imageUrl: AppApi.imageProductUrl + productModel.imageName3.toString() + '',
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) =>Image.asset(AppImageAsset.imageLoading),
        fit: BoxFit.cover,
      ),
    );
  }
}


// Widget carouselCard (ProductModel loadedProduct,context ) {
//   return Container(
//     margin: const EdgeInsets.fromLTRB(12, 12, 12, 40),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         CachedNetworkImage(
//           width: 150.0,
//           height: 150.0,
//           alignment: Alignment.topRight,
//
//           imageUrl: '$imageProduct' + loadedProduct.imagePang! + '',
//           imageBuilder: (context,imageProvider)=>
//               Container(
//                 width: 150.0,
//                 height: 150.0,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15.0),
//                   image:  DecorationImage(
//                     image:  imageProvider,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//
//           placeholder: (context,url)=> const Center(child: CircularProgressIndicator(),),
//           errorWidget: (context,url,error)=>const Icon(Icons.error),
//
//           fit: BoxFit.cover,
//         ),
//
//
//         const SizedBox(width: 12),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(
//               vertical: 12.0,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   loadedProduct.name!,
//                   overflow: TextOverflow.visible,
//                   maxLines: 1,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 12.0,
//                   ),
//                 ),
//                 Text(
//                   "${loadedProduct.price} \ $currency",
//                 ),
//                 SizedBox(
//                   width: 80,
//                   height: 30,
//                   child: RaisedButton(
//                     color: Colors.black,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(
//                         6.0,
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.of(context)
//                           .push(MaterialPageRoute(builder: (context) {
//                         return ProductDetail(
//                           id : loadedProduct.id,
//                           imageJpj: loadedProduct.imageJpj,
//                         );
//                       }));
//                     },
//                     child: Text(
//                       "details".tr,
//                       style: TextStyle(
//                         fontSize: 13.0,
//                         color: ColorHome,
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         )
//       ],
//     ),
//   );
// }

