import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerceapp/provider/getCategoryProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class categoriesConsumer extends StatelessWidget {
  const categoriesConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(
      builder: (context, categoryProvider, child) {
        if (!categoryProvider.isloading) {
          return Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryProvider.categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Card(
                        child: Container(
                          color: Colors.grey,
                          width: 100,
                          height: 300,
                          child: Column(
                            children: [
                              categoryProvider.categories[index].image != null
                                  ? CachedNetworkImage(
                                      imageUrl:
                                          '${categoryProvider.categories[index].image!.src}',
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                      width: 50,
                                      height: 50,
                                    )
                                  : CachedNetworkImage(
                                      imageUrl:
                                          '${categoryProvider.categories[index].image}',
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                      width: 50,
                                      height: 50,
                                    ),
                              Container(
                                width: 100,
                                height: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 5, top: 10, right: 5),
                                      child: Text(
                                        "${categoryProvider.categories[index].name}",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          );
        } else {
          return Container(
            child: Text('hello'),
          );
        }
      },
    );
  }
}
