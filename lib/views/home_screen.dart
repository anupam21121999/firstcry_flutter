import 'package:assignment_flutter/const/list.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
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
                          CircleAvatar(backgroundImage: AssetImage('assets/images/logo1.png')),
                          10.widthBox,
                          Text("Shop for", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),),
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
                
                
                //banner 1
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(child: Image.asset("assets/images/banner.png")),
                  ),
                ),
                
                
                //swiper 1
                VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 250,
                    enlargeCenterPage: true,
                    itemCount: swiperIcon.length, itemBuilder: (context, index){
                  return Image.asset(swiperIcon[index], fit: BoxFit.fill).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                }),

                15.heightBox,

                //swiper 2
                VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 100,
                    enlargeCenterPage: true,
                    itemCount: freeIcon.length, itemBuilder: (context, index){
                  return Image.asset(freeIcon[index], fit: BoxFit.fill).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                }),

                10.heightBox,
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Shop by Category", style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),),
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
      ),
    );
  }
}
