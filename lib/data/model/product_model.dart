class ProductModel {
  int? id;
  String? name;
  String? imagePang;
  dynamic price;
  dynamic wholesale;
  dynamic halfWholesalePrice;
  int? category ;
  int? quantity ;
  int? subCategory;
  int? number;
  int? homeCategory;
  int? userId;
  String? imageJpj;
  int ?miniMumQuantity;
  String?imageName3;
  ProductModel({this.id,this.name,this.imagePang,this.price,this.wholesale,this.halfWholesalePrice,this.category,this.quantity,
    this.subCategory,this.number,this.homeCategory,this.userId,this.imageJpj,this.miniMumQuantity,this.imageName3});

  ProductModel.fromJson(Map<String,dynamic>map){
    id= map['id_products'];
    name= map['name_products'];
    imagePang= map['image_png'];
    price= map['price_products'];
    wholesale= map['w_priceproduct'];
    halfWholesalePrice= map['h_priceproduct'];
    category= map['cat_id']as int?;
    quantity= map['qty_product']as int?;
    subCategory= map['fcat_product']as int?;
    number= map['number_products'];
    homeCategory= map['products_home']as int?;
    userId= map['userId']as int?;
    imageJpj=map['image_jpg'];
    miniMumQuantity=map['mini_mum_quantity'];
    imageName3=map['imageName3'];

  }
  Map<String,dynamic> toJson() {
    final Map<String,dynamic> data = Map<String,dynamic>();
    data['id_products'] = this.id;
    data['name_products'] = this.name;
    data['image_png'] = this.imagePang;
    data['price_products'] = this.price;
    data['w_priceproduct'] = this.wholesale;
    data['h_priceproduct'] = this.halfWholesalePrice;
    data['qty_product'] = this.quantity;
    data['fcat_product'] = this.subCategory;
    data['number_products'] = this.number;
    data['products_home'] = this.homeCategory;
    data['userId'] = this.userId;
    data['image_jpg'] = this.imageJpj;
    data['miniMumQuantity'] = this.miniMumQuantity;
    data['imageName3'] = this.imageName3;
  return data;
  }

}