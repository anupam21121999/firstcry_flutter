
import 'package:assignment_flutter/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../const/list.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(16.0),

                //header
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/fc.png"),
                              )
                            ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey, size: 28),
                        10.widthBox,
                        Icon(Icons.favorite_outline, color: Colors.grey, size: 28),
                        10.widthBox,
                        Icon(Icons.shopping_cart_outlined, color: Colors.grey, size: 28,),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.all(16),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    mainAxisExtent: 200,
                  ),
                  itemBuilder: (context,index) {
                    return Column(
                      children: [
                        Image.asset(gridItems[index], height: 120, width: 200, fit: BoxFit.cover,),
                        10.heightBox,
                        textItems[index].text.align(TextAlign.center).make(),
                      ],
                    ).box.white.rounded.clip(Clip.antiAlias).roundedSM.make();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      //footer
      // bottomNavigationBar: Screens(),
    );
  }
}



