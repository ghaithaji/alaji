import 'package:alaji_new/core/constant/imageAsset.dart';
import 'package:flutter/material.dart';

import '../../../core/functions/my_separator.dart';
import '../../widget/Home/bottom_navigation.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        bottomNavigationBar: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            child:   TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 25),
                hintText: "     Promo code     ",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
                suffixIcon: Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(120, 60),
                      primary: Colors.red,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text("apply"),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),

              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                        alignment: Alignment.center,
                        child: Text('sub Total')),),
                  Expanded(
                    flex: 4,
                    child: Container(
                      alignment: Alignment.center,
                      child: MySeparator(color: Colors.redAccent,height: 2,)
                    ),),
                  Expanded(
                    flex: 2,
                    child: Container(
                        alignment: Alignment.center,
                        child: Text('2000 ل.س')),)
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                        alignment: Alignment.center,
                        child: Text('shipping')),),
                  Expanded(
                    flex: 4,
                    child: Container(
                      alignment: Alignment.center,
                      child: MySeparator(color: Colors.redAccent,height: 2,)
                    ),),
                  Expanded(
                    flex: 2,
                    child: Container(
                        alignment: Alignment.center,
                        child: Text('2000 ل.س')),)
                ],
              ),
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                        alignment: Alignment.center,
                        child: Text('TOTAL')),),
                  Expanded(
                    flex: 4,
                    child: Container(
                    alignment: Alignment.center,
                    child: MySeparator(color: Colors.redAccent,height: 2,)
                  ),),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('2000 ل.س')),)
                ],
              ),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(right:30, left: 30,top: 25,bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50)
                ),
                child: MaterialButton(
                  height: 45,
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  onPressed: (){},
                  child: Text('send order'),

                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: BottomNavigation(index: 1),
              )
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(right:10, left: 10,),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                margin: const EdgeInsets.only(top: 35,bottom: 5),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          padding: const EdgeInsets.all(0),
                          // لوضع علامة + في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                          icon: const Icon(
                            Icons.arrow_back_ios_outlined,
                            // color: Colors.white,
                            size: 25.0,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 5,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("cart"),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child:
                        Stack(
                            children: <Widget>[
                              IconButton(
                                padding: const EdgeInsets.all(0),
                                icon: const Icon(
                                  Icons.shopping_bag_outlined,
                                  // color: Colors.white,
                                  size: 25.0,
                                ),
                                onPressed: () {},
                              ),
                              Positioned(
                                  bottom: 7.0,
                                  right: 6.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.red,

                                    ),
                                    child: Center(
                                      child: Text(
                                        "20",
                                        style: const TextStyle(
                                            fontSize: 13.0,
                                            fontWeight:
                                            FontWeight.w500),
                                      ),
                                    ),
                                  ),
                              )]
                              ),

                      ),
                    ),
                  ],
                ),
              ), ),
              Expanded(
               flex: 15,
               child:  ListView(

               children: [
                 Container(
                   margin: EdgeInsets.only(bottom: 20),
                   height: 130,
                   child: Row(
                     children: [
                       Expanded(
                         flex: 2,
                         child:Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(25), // تدوير الحواف بشكل دائري
                             image: const DecorationImage( // Container وضع صورة بداخل
                               fit: BoxFit.fill,           // Container تمديد الصورة لتناسب حجم
                               image: AssetImage(AppImageAsset.imageLogin,),
                               // image:NetworkImage('url');
                               repeat: ImageRepeat.repeat, // تكرار الصورة في الجوانب التي لم تغطيها الصورة
                             ),
                           ),


                         ),
                       ),
                       Expanded(
                           flex: 4,
                           child:Column(
                             children: [
                               Container(
                                 width: double.infinity,
                                   margin: EdgeInsets.only(left: 10,right: 10),
                                   child: Text( " كمبيوتر محمول ماركة اتش بي",maxLines: 2),),
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10),
                                 child: Text( "25000 ل.س",maxLines: 1),),
                              Spacer(),
                               Container(
                                   width: double.infinity,
                                   margin: EdgeInsets.only(left: 10,right: 10),
                                   child: Text('علبة 24 قطعة : 20000 ل.س')),
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                 child: Row(
                                   children: [
                                     Container(
                                       height: 25.0,
                                       width: 25.0,
                                       decoration: BoxDecoration(
                                         color: Theme.of(context).disabledColor,
                                         borderRadius: BorderRadius.circular(5.0),
                                       ),
                                       child: Center(
                                         child: IconButton(
                                           padding: const EdgeInsets.all(0),
                                           // لوضع علامة + في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                           icon: const Icon(
                                             Icons.add,
                                             // color: Colors.white,
                                             size: 15.0,
                                           ),
                                           onPressed: () {

                                           },
                                         ),
                                       ),
                                     ),
                                     Center(
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                         child: Align(
                                           alignment: Alignment.center,
                                           child: GestureDetector(
                                             onTap: () {},
                                             child: Text(
                                               "1",
                                               style: const TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ),
                                     Container(
                                       height: 25.0,
                                       width: 25.0,
                                       decoration: BoxDecoration(
                                         color: Theme.of(context).disabledColor,
                                         borderRadius: BorderRadius.circular(5.0),
                                       ),
                                       child: Center(
                                         child: IconButton(
                                           padding: const EdgeInsets.all(0),
                                           // لوضع علامة - في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                           icon: const Icon(
                                             Icons.remove,
                                             color: Colors.white,
                                             size: 15.0,
                                           ),
                                           onPressed: () {

                                           },
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),),
                             ],
                           )
                       ),
                       Expanded(
                           flex: 1,
                           child:
                           Container(
                             alignment: Alignment.center,
                             child: Column(

                               mainAxisSize: MainAxisSize.min,
                               children: [
                               Text("M"),
                               Container(
                                   margin: EdgeInsets.only(top: 7),
                                   child:  Container(
                                     height: 20,
                                     width: 20,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(100),
                                       color: Colors.blue,
                                       border: Border.all(   // Container حواف حول
                                         color: Colors.black12, // لون الحواف
                                         width: 1, // سماكة الحواف
                                       ),

                                     ),)),
                               IconButton(
                                 padding: const EdgeInsets.all(0),
                                 // لوضع علامة + في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                 icon: const Icon(
                                   Icons.delete,
                                   // color: Colors.white,
                                   size: 30.0,
                                 ),
                                 onPressed: () {

                                 },
                               ),
                             ],),
                           )
                       )
                     ],
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.only(bottom: 20),
                   height: 130,
                   child: Row(
                     children: [
                       Expanded(
                         flex: 2,
                         child:Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(25), // تدوير الحواف بشكل دائري
                             image: const DecorationImage( // Container وضع صورة بداخل
                               fit: BoxFit.fill,           // Container تمديد الصورة لتناسب حجم
                               image: AssetImage(AppImageAsset.imageLogin,),
                               // image:NetworkImage('url');
                               repeat: ImageRepeat.repeat, // تكرار الصورة في الجوانب التي لم تغطيها الصورة
                             ),
                           ),


                         ),
                       ),
                       Expanded(
                           flex: 4,
                           child:Column(
                             children: [
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10),
                                 child: Text( " كمبيوتر محمول ماركة اتش بي",maxLines: 2),),
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10),
                                 child: Text( "25000 ل.س",maxLines: 1),),
                               Spacer(),
                               Container(
                                   width: double.infinity,
                                   margin: EdgeInsets.only(left: 10,right: 10),
                                   child: Text('علبة 24 قطعة : 20000 ل.س')),
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                 child: Row(
                                   children: [
                                     Container(
                                       height: 25.0,
                                       width: 25.0,
                                       decoration: BoxDecoration(
                                         color: Theme.of(context).disabledColor,
                                         borderRadius: BorderRadius.circular(5.0),
                                       ),
                                       child: Center(
                                         child: IconButton(
                                           padding: const EdgeInsets.all(0),
                                           // لوضع علامة + في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                           icon: const Icon(
                                             Icons.add,
                                             // color: Colors.white,
                                             size: 15.0,
                                           ),
                                           onPressed: () {

                                           },
                                         ),
                                       ),
                                     ),
                                     Center(
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                         child: Align(
                                           alignment: Alignment.center,
                                           child: GestureDetector(
                                             onTap: () {},
                                             child: Text(
                                               "1",
                                               style: const TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ),
                                     Container(
                                       height: 25.0,
                                       width: 25.0,
                                       decoration: BoxDecoration(
                                         color: Theme.of(context).disabledColor,
                                         borderRadius: BorderRadius.circular(5.0),
                                       ),
                                       child: Center(
                                         child: IconButton(
                                           padding: const EdgeInsets.all(0),
                                           // لوضع علامة - في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                           icon: const Icon(
                                             Icons.remove,
                                             color: Colors.white,
                                             size: 15.0,
                                           ),
                                           onPressed: () {

                                           },
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),),
                             ],
                           )
                       ),
                       Expanded(
                           flex: 1,
                           child:
                           Container(
                             alignment: Alignment.center,
                             child: Column(

                               mainAxisSize: MainAxisSize.min,
                               children: [
                                 Text("M"),
                                 Container(
                                     margin: EdgeInsets.only(top: 7),
                                     child:  Container(
                                       height: 20,
                                       width: 20,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100),
                                         color: Colors.blue,
                                         border: Border.all(   // Container حواف حول
                                           color: Colors.black12, // لون الحواف
                                           width: 1, // سماكة الحواف
                                         ),

                                       ),)),
                                 IconButton(
                                   padding: const EdgeInsets.all(0),
                                   // لوضع علامة + في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                   icon: const Icon(
                                     Icons.delete,
                                     // color: Colors.white,
                                     size: 30.0,
                                   ),
                                   onPressed: () {

                                   },
                                 ),
                               ],),
                           )
                       )
                     ],
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.only(bottom: 20),
                   height: 130,
                   child: Row(
                     children: [
                       Expanded(
                         flex: 2,
                         child:Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(25), // تدوير الحواف بشكل دائري
                             image: const DecorationImage( // Container وضع صورة بداخل
                               fit: BoxFit.fill,           // Container تمديد الصورة لتناسب حجم
                               image: AssetImage(AppImageAsset.imageLogin,),
                               // image:NetworkImage('url');
                               repeat: ImageRepeat.repeat, // تكرار الصورة في الجوانب التي لم تغطيها الصورة
                             ),
                           ),


                         ),
                       ),
                       Expanded(
                           flex: 4,
                           child:Column(
                             children: [
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10),
                                 child: Text( " كمبيوتر محمول ماركة اتش بي",maxLines: 2),),
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10),
                                 child: Text( "25000 ل.س",maxLines: 1),),
                               Spacer(),
                               Container(
                                   width: double.infinity,
                                   margin: EdgeInsets.only(left: 10,right: 10),
                                   child: Text('علبة 24 قطعة : 20000 ل.س')),
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                 child: Row(
                                   children: [
                                     Container(
                                       height: 25.0,
                                       width: 25.0,
                                       decoration: BoxDecoration(
                                         color: Theme.of(context).disabledColor,
                                         borderRadius: BorderRadius.circular(5.0),
                                       ),
                                       child: Center(
                                         child: IconButton(
                                           padding: const EdgeInsets.all(0),
                                           // لوضع علامة + في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                           icon: const Icon(
                                             Icons.add,
                                             // color: Colors.white,
                                             size: 15.0,
                                           ),
                                           onPressed: () {

                                           },
                                         ),
                                       ),
                                     ),
                                     Center(
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                         child: Align(
                                           alignment: Alignment.center,
                                           child: GestureDetector(
                                             onTap: () {},
                                             child: Text(
                                               "1",
                                               style: const TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ),
                                     Container(
                                       height: 25.0,
                                       width: 25.0,
                                       decoration: BoxDecoration(
                                         color: Theme.of(context).disabledColor,
                                         borderRadius: BorderRadius.circular(5.0),
                                       ),
                                       child: Center(
                                         child: IconButton(
                                           padding: const EdgeInsets.all(0),
                                           // لوضع علامة - في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                           icon: const Icon(
                                             Icons.remove,
                                             color: Colors.white,
                                             size: 15.0,
                                           ),
                                           onPressed: () {

                                           },
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),),
                             ],
                           )
                       ),
                       Expanded(
                           flex: 1,
                           child:
                           Container(
                             alignment: Alignment.center,
                             child: Column(

                               mainAxisSize: MainAxisSize.min,
                               children: [
                                 Text("M"),
                                 Container(
                                     margin: EdgeInsets.only(top: 7),
                                     child:  Container(
                                       height: 20,
                                       width: 20,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100),
                                         color: Colors.blue,
                                         border: Border.all(   // Container حواف حول
                                           color: Colors.black12, // لون الحواف
                                           width: 1, // سماكة الحواف
                                         ),

                                       ),)),
                                 IconButton(
                                   padding: const EdgeInsets.all(0),
                                   // لوضع علامة + في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                   icon: const Icon(
                                     Icons.delete,
                                     // color: Colors.white,
                                     size: 30.0,
                                   ),
                                   onPressed: () {

                                   },
                                 ),
                               ],),
                           )
                       )
                     ],
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.only(bottom: 20),
                   height: 130,
                   child: Row(
                     children: [
                       Expanded(
                         flex: 2,
                         child:Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(25), // تدوير الحواف بشكل دائري
                             image: const DecorationImage( // Container وضع صورة بداخل
                               fit: BoxFit.fill,           // Container تمديد الصورة لتناسب حجم
                               image: AssetImage(AppImageAsset.imageLogin,),
                               // image:NetworkImage('url');
                               repeat: ImageRepeat.repeat, // تكرار الصورة في الجوانب التي لم تغطيها الصورة
                             ),
                           ),


                         ),
                       ),
                       Expanded(
                           flex: 4,
                           child:Column(
                             children: [
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10),
                                 child: Text( " كمبيوتر محمول ماركة اتش بي",maxLines: 2),),
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10),
                                 child: Text( "25000 ل.س",maxLines: 1),),
                               Spacer(),
                               Container(
                                   width: double.infinity,
                                   margin: EdgeInsets.only(left: 10,right: 10),
                                   child: Text('علبة 24 قطعة : 20000 ل.س')),
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                 child: Row(
                                   children: [
                                     Container(
                                       height: 25.0,
                                       width: 25.0,
                                       decoration: BoxDecoration(
                                         color: Theme.of(context).disabledColor,
                                         borderRadius: BorderRadius.circular(5.0),
                                       ),
                                       child: Center(
                                         child: IconButton(
                                           padding: const EdgeInsets.all(0),
                                           // لوضع علامة + في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                           icon: const Icon(
                                             Icons.add,
                                             // color: Colors.white,
                                             size: 15.0,
                                           ),
                                           onPressed: () {

                                           },
                                         ),
                                       ),
                                     ),
                                     Center(
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                         child: Align(
                                           alignment: Alignment.center,
                                           child: GestureDetector(
                                             onTap: () {},
                                             child: Text(
                                               "1",
                                               style: const TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ),
                                     Container(
                                       height: 25.0,
                                       width: 25.0,
                                       decoration: BoxDecoration(
                                         color: Theme.of(context).disabledColor,
                                         borderRadius: BorderRadius.circular(5.0),
                                       ),
                                       child: Center(
                                         child: IconButton(
                                           padding: const EdgeInsets.all(0),
                                           // لوضع علامة - في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                           icon: const Icon(
                                             Icons.remove,
                                             color: Colors.white,
                                             size: 15.0,
                                           ),
                                           onPressed: () {

                                           },
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),),
                             ],
                           )
                       ),
                       Expanded(
                           flex: 1,
                           child:
                           Container(
                             alignment: Alignment.center,
                             child: Column(

                               mainAxisSize: MainAxisSize.min,
                               children: [
                                 Text("M"),
                                 Container(
                                     margin: EdgeInsets.only(top: 7),
                                     child:  Container(
                                       height: 20,
                                       width: 20,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100),
                                         color: Colors.blue,
                                         border: Border.all(   // Container حواف حول
                                           color: Colors.black12, // لون الحواف
                                           width: 1, // سماكة الحواف
                                         ),

                                       ),)),
                                 IconButton(
                                   padding: const EdgeInsets.all(0),
                                   // لوضع علامة + في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                   icon: const Icon(
                                     Icons.delete,
                                     // color: Colors.white,
                                     size: 30.0,
                                   ),
                                   onPressed: () {

                                   },
                                 ),
                               ],),
                           )
                       )
                     ],
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.only(bottom: 20),
                   height: 130,
                   child: Row(
                     children: [
                       Expanded(
                         flex: 2,
                         child:Container(
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(25), // تدوير الحواف بشكل دائري
                             image: const DecorationImage( // Container وضع صورة بداخل
                               fit: BoxFit.fill,           // Container تمديد الصورة لتناسب حجم
                               image: AssetImage(AppImageAsset.imageLogin,),
                               // image:NetworkImage('url');
                               repeat: ImageRepeat.repeat, // تكرار الصورة في الجوانب التي لم تغطيها الصورة
                             ),
                           ),


                         ),
                       ),
                       Expanded(
                           flex: 4,
                           child:Column(
                             children: [
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10),
                                 child: Text( " كمبيوتر محمول ماركة اتش بي",maxLines: 2),),
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10),
                                 child: Text( "25000 ل.س",maxLines: 1),),
                               Spacer(),
                               Container(
                                   width: double.infinity,
                                   margin: EdgeInsets.only(left: 10,right: 10),
                                   child: Text('علبة 24 قطعة : 20000 ل.س')),
                               Container(
                                 width: double.infinity,
                                 margin: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                                 child: Row(
                                   children: [
                                     Container(
                                       height: 25.0,
                                       width: 25.0,
                                       decoration: BoxDecoration(
                                         color: Theme.of(context).disabledColor,
                                         borderRadius: BorderRadius.circular(5.0),
                                       ),
                                       child: Center(
                                         child: IconButton(
                                           padding: const EdgeInsets.all(0),
                                           // لوضع علامة + في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                           icon: const Icon(
                                             Icons.add,
                                             // color: Colors.white,
                                             size: 15.0,
                                           ),
                                           onPressed: () {

                                           },
                                         ),
                                       ),
                                     ),
                                     Center(
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                         child: Align(
                                           alignment: Alignment.center,
                                           child: GestureDetector(
                                             onTap: () {},
                                             child: Text(
                                               "1",
                                               style: const TextStyle(
                                                 fontWeight: FontWeight.bold,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ),
                                     Container(
                                       height: 25.0,
                                       width: 25.0,
                                       decoration: BoxDecoration(
                                         color: Theme.of(context).disabledColor,
                                         borderRadius: BorderRadius.circular(5.0),
                                       ),
                                       child: Center(
                                         child: IconButton(
                                           padding: const EdgeInsets.all(0),
                                           // لوضع علامة - في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                           icon: const Icon(
                                             Icons.remove,
                                             color: Colors.white,
                                             size: 15.0,
                                           ),
                                           onPressed: () {

                                           },
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),),
                             ],
                           )
                       ),
                       Expanded(
                           flex: 1,
                           child:
                           Container(
                             alignment: Alignment.center,
                             child: Column(

                               mainAxisSize: MainAxisSize.min,
                               children: [
                                 Text("M"),
                                 Container(
                                     margin: EdgeInsets.only(top: 7),
                                     child:  Container(
                                       height: 20,
                                       width: 20,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(100),
                                         color: Colors.blue,
                                         border: Border.all(   // Container حواف حول
                                           color: Colors.black12, // لون الحواف
                                           width: 1, // سماكة الحواف
                                         ),

                                       ),)),
                                 IconButton(
                                   padding: const EdgeInsets.all(0),
                                   // لوضع علامة + في منتصف تم ازالة الحشوة الافتراضية حول ايقونة
                                   icon: const Icon(
                                     Icons.delete,
                                     // color: Colors.white,
                                     size: 30.0,
                                   ),
                                   onPressed: () {

                                   },
                                 ),
                               ],),
                           )
                       )
                     ],
                   ),
                 ),

               ],
             ),),



            ],

          ),
        ),
      );
  }
}
