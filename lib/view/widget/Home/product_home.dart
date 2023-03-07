import 'dart:math';

import 'package:alaji_new/controller/home_controller.dart';
import 'package:alaji_new/core/constant/imageAsset.dart';
import 'package:alaji_new/data/model/product_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../api.dart';

class ProductHome extends StatelessWidget {
   List productList ;
   ProductHome({Key? key, required this.productList}) : super(key: key);



  Widget build(BuildContext context) {
    final _random = Random();
    productList = List.generate(50, (_) => productList[_random.nextInt(productList.length)]).reversed.toSet().toList();
    return SizedBox(
        width: double.infinity,
        height: 235.0,
        child: ListView.builder(
          // addAutomaticKeepAlives: true,
            physics: const BouncingScrollPhysics(),
            itemCount: productList.length >6 ?6:productList.length,
            scrollDirection: Axis.horizontal,
            // shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                child: ProductHomeItem(
                  productModel: ProductModel.fromJson(productList[index]),
                ),
              );
            })
    );
  }
}

class ProductHomeItem extends GetView<HomeControllerImp> {
  final ProductModel productModel;
  const ProductHomeItem({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        //   return ProductDetail(
        //     id: loadedProduct.id,
        //     imageJpj: loadedProduct.imageJpj,
        //   );
         //}
        //  )
        // );
      },
      child: Stack(
          children: [
            Card(

              elevation: 2,
              margin: const EdgeInsets.only(right: 10.0, bottom: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(2, 5, 2, 5),
                child: Column(
                  children: [
                    Stack(
                      children: [

                        CachedNetworkImage(
                          width: 140.0,
                          height: 148.0,
                          alignment: Alignment.topRight,
                          imageUrl: AppApi.imageProductUrl + productModel.imagePang.toString() + '',
                          imageBuilder: (context,imageProvider)=>
                              Container(
                                width: 140.0,
                                height: 148.0,
                                alignment: Alignment.topRight,
                                padding: const EdgeInsets.only(
                                  top: 12,
                                  right: 12,

                                ),

                                decoration:
                                BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15) ),
                                  color: Theme.of(context).indicatorColor,

                                  image:
                                  DecorationImage(

                                    image:  imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),

                              ),

                          placeholder: (context,url)=> const Center(child: CircularProgressIndicator(),),
                          errorWidget: (context,url,error)=> Image.asset(AppImageAsset.imageLoading),

                          fit: BoxFit.cover,
                        ),

                      ],
                    ),
                    const SizedBox(height: 0),
                    Expanded(
                      child: SizedBox(
                        width: 145.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              productModel.name.toString(),
                              overflow: TextOverflow.visible,
                              maxLines: 1,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),

                            Row(
                              children: <Widget>[
                                Text(
                                  " ${controller.userPrice==1?productModel.price.toString():
                                  controller.userPrice==2?productModel.wholesale.toString():
                                  controller.userPrice==3?productModel.halfWholesalePrice.toString():productModel.price} "+ 'currency'.tr,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,

                                  ),
                                ),
                                const Spacer(),
                              //  AddCartAndFavorite(id: loadedProduct.id, qty: 1),


                                //   // ايقون المفضلة
                                //
                                //
                                //   AddCart(id: loadedProduct.id,
                                //     qty: 1,
                                //     price: loadedProduct.price,),


                                // TestCart(),



                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Positioned(
            //
            //     right: 10.0,
            //     bottom: 1.0,
            //     child: Container(
            //       height: 40,
            //       width: 40,
            //
            //
            //       decoration: BoxDecoration(
            //
            //         color: Colors.black,
            //         borderRadius: BorderRadius.only(
            //           bottomRight: const Radius.circular(10.0),
            //           topLeft: const Radius.circular(50.0),
            //
            //         ),
            //       ),child: Center(
            //       child: Icon(Icons.add,color: Colors.white,size: 15,),
            //     ),
            //
            //     )
            // ),
            // Positioned(
            //
            //     right: 124.0,
            //     bottom: 0.0,
            //     child: Container(
            //       height: 40,
            //       width: 40,
            //
            //
            //       decoration: BoxDecoration(
            //
            //         color: Colors.black,
            //         borderRadius: BorderRadius.only(
            //           bottomLeft: const Radius.circular(10.0),
            //           topRight: const Radius.circular(50.0),
            //
            //         ),
            //       ),child: Center(
            //       child: Icon(Icons.add,color: Colors.white,size: 15,),
            //     ),
            //
            //     )
            // ),

          ]
      ),
    );
  }
}
