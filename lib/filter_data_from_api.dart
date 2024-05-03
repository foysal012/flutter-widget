import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FilterDataFromApi extends StatefulWidget {
  const FilterDataFromApi({Key? key}) : super(key: key);

  @override
  State<FilterDataFromApi> createState() => _FilterDataFromApiState();
}

class _FilterDataFromApiState extends State<FilterDataFromApi> {

  List<Products> productList = [];
  // List<Products> myList(List<Products> list){
  //   for(var element in list){
  //     if(element.rating! > 4.5){
  //       productList.add(element);
  //     }
  //   }
  //   return productList;
  // }

  void filterData() {
    print("cse");
   var response =  ApiServices().getProductList();
    print("cse1");
   print("response:"+ response.toString());
     // for(var data in response as List<ProductListClass>){
     //      if(data.products != null){
     //        productList.addAll(data.products as Iterable<Products>);
     //      }
     // }
    for(var data in response as List<ProductListClass>){
      productList.add(response["products"]);

    }
    //productList.add(response[ïndex][""])
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filterData();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Data Filtering From API"),
        centerTitle: true,
      ),
      body: ListView.builder(
                  shrinkWrap: true,
          reverse: false,
          scrollDirection: Axis.vertical,
          itemCount: response["products"].length,
        itemCount: 10,
          itemBuilder: (context, index){
        return Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey,
          // child: ListTile(
          //   title: Text(productList[index].title.toString(),
          //   style: TextStyle(
          //     color: Colors.black,
          //     fontSize: 20,
          //     fontWeight: FontWeight.w800,
          //   ),
          //   ),
          //   subtitle: Text(productList[index].title.toString(),
          //     style: TextStyle(
          //       color: Colors.black,
          //       fontSize: 15,
          //       fontWeight: FontWeight.w500,
          //     ),
          //   ),
          ),
        );
            },
              ),
    );
  }
}

///api hitting class
class ApiServices{

  Future<dynamic> getProductList() async{


      Uri  url = Uri.parse("https://dummyjson.com/products");
      var response = await http.get(url);

      print(response.statusCode);
      //print(response.body);
      if(response.statusCode == 200){
        print("foysal");
        return jsonDecode(response.body);
      }
      print("joarder");
  }

  // Future<dynamic> getProductList() async{
  //
  //
  //   Uri  url = Uri.parse("https://dummyjson.com/products");
  //   var response = await http.get(url);
  //
  //   print(response.statusCode);
  //   print(response.body);
  //   try{
  //     if(response.statusCode == 200){
  //
  //       return jsonDecode(response.body);
  //
  //     } else {
  //       return null ;
  //     }    } catch (e){
  //     print(e);
  //   }
  //   return null;
  // }

}

///model class for api fetching data
class ProductListClass {
  List<Products>? products;
  int? total;
  int? skip;
  int? limit;

  ProductListClass({this.products, this.total, this.skip, this.limit});

  ProductListClass.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['skip'] = this.skip;
    data['limit'] = this.limit;
    return data;
  }
}

class Products {
  int? id;
  String? title;
  String? description;
  int? price;
  dynamic? discountPercentage;
  dynamic? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<String>? images;

  Products(
      {this.id,
        this.title,
        this.description,
        this.price,
        this.discountPercentage,
        this.rating,
        this.stock,
        this.brand,
        this.category,
        this.thumbnail,
        this.images});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    rating = json['rating'];
    stock = json['stock'];
    brand = json['brand'];
    category = json['category'];
    thumbnail = json['thumbnail'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['discountPercentage'] = this.discountPercentage;
    data['rating'] = this.rating;
    data['stock'] = this.stock;
    data['brand'] = this.brand;
    data['category'] = this.category;
    data['thumbnail'] = this.thumbnail;
    data['images'] = this.images;
    return data;
  }
}