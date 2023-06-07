import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';



class Category {
  int id;
  String name;
  Category({
    required this.id,
    required this.name
  });

  factory Category.fromJson(Map<String,dynamic> json){
    print(json);
    return Category(id: json['id'], name: json['name']);
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}
class _CategoriesState extends State<Categories>{
  String responseData = '';

  late Future<List<Category>> futureCategories;
  //
  // final _formKey = GlobalKey<FormState>();
  //

  //
  // @override
  // void initState(){
  //   print('inti test');
  //   super.initState();
  //   futureCategories = fetchCategories();
  // }


  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final dio = Dio(BaseOptions(
    contentType: 'application/json',
    ));
    try {
      final response2 = await dio.get('http://localhost/flutter-api/public/api/categories');

      // List<dynamic> categories = jsonDecode(response2.data);
      List categories = jsonDecode(response2.data);
      // Access the values in the parsed JSON
      for (var category in categories) {
        print(category['id']);
        print(category['name']);
      }
      print(categories);

      //List<Category> categoryList = categories.map((category) => Category.fromJson(category)).toList();

      setState(() {
        //responseData = response2.toString();
        // futureCategories = Future.value(categoryList);
        print(response2);
      });

      //return categoryList;

    } catch (error) {
      print('Error: $error');
      throw error; // Propagate the error by rethrowing it
    }
  }




  //
  // Future<List<Category>> fetchCategories() async {
  //   print('response');
  //   // http.Response response = await http.get(
  //   //     Uri.parse('http://localhost/flutter-api/public/api/categories')
  //   // );
  //   print('response offf');
  //   // List categories = jsonDecode(response.body);
  //
  //   // return categories.map((category)=>Category.fromJson(category)).toList();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories :',style: TextStyle(color: Colors.amber[100]),),
      ),
      body: FutureBuilder<List<Category>>(
        // future: futureCategories,
        builder: (context,snapshot){
          if (snapshot.hasData){
            return ListView.builder(
              // itemCount: snapshot.data!.length,
              itemBuilder: (context,index){
              //   Category category = snapshot.data![index];
                return ListTile(
                  title: Text('Hello',style: TextStyle(color: Colors.amber[100]),),
                  trailing: IconButton(
                    onPressed: (){
                      showModalBottomSheet(
                          context: context,
                          builder: (context){
                            return Padding(
                                padding: EdgeInsets.all(10),
                              child: Form(
                                // key: _formKey,
                                child : Column(
                                children: <Widget>[
                                  TextFormField(
                                    initialValue: 'Data',
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Category Name',

                                    ),
                                  ),
                                  ElevatedButton(
                                      child: Text('Close'),
                                      onPressed: ()=>Navigator.pop(context),
                                  )
                                ],
                              ),
                            ),
                            );
                          }
                      );
                    },
                    icon: Icon(Icons.edit),
                  ),
                );
              },
            );
          }else if (snapshot.hasError){
            return Text('Something went wrong',style: TextStyle(color: Colors.red[400]),);
          }

          return CircularProgressIndicator();
        },
      ),
    );
  }
}