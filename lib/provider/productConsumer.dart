import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerceapp/provider/getProductProvider.dart';
import 'package:ecommerceapp/provider/singleProductConsumer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class productConsumer extends StatefulWidget {
  final String catId;
  const productConsumer({Key? key, required this.catId}) : super(key: key);

  @override
  State<productConsumer> createState() => _productConsumerState();
}

class _productConsumerState extends State<productConsumer> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<ProductProvider>(context, listen: false)
        .fetchProductswithId(widget.catId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.lightGreenAccent,
        title: Text(
          "Categories",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 2,
                child: Consumer<ProductProvider>(
                  builder: (context, productProvider, child) {
                    if (!productProvider.isloading) {
                      return GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 0.8),
                        itemCount: productProvider.product.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          singleProductConsumer(
                                              spid: productProvider
                                                  .product[index].id
                                                  .toString())));
                            },
                            child: Card(
                              elevation: 10,
                              surfaceTintColor: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, top: 10),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "${productProvider.product[index].images?[0].src}",
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Text(
                                      "${productProvider.product[index].name}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Text(
                                      "\$${productProvider.product[index].price}",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      return Text("Loading...");
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
