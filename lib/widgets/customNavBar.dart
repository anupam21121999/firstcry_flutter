import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../views/home_screen.dart';
import '../views/product_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {

  TabController? tabController;
  int _selectedIndex = 0;

  onItemClicked(int index){
    setState(() {
      _selectedIndex = index;
      tabController!.index = _selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          HomeScreen(),
          // ProductScreen(),
          ProductScreen(),
        ],
      ),
      bottomNavigationBar:CustomNavigationBar(
        iconList: [
          Icons.home,
          Icons.settings
        ],
        onChange: (index){
          setState(() {
            _selectedIndex = index;
            tabController!.index = _selectedIndex;

          });
        },
      ) ,
    );
  }
}

class CustomNavigationBar extends StatefulWidget {
 final int defaultSelectedIndex;

 final Function(int) onChange;
 final List<IconData> iconList;

 CustomNavigationBar({this.defaultSelectedIndex=0,required this.iconList,required this.onChange});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {

  int selectedIndex=0;
  List<IconData> _iconList =[];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for(int i=0;i<_iconList.length;i++){

      _navBarItemList.add(buildNavBarItem(_iconList[i],i));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(IconData icon,int index){
    return GestureDetector(
      onTap: (){
        widget.onChange(index);
        setState(() {
          selectedIndex = index;
          log(selectedIndex.toString());
        });
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: index==selectedIndex?BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.brown,
                offset: Offset(4,4),
                spreadRadius: 1,
                blurRadius: 2
              )
            ]
          )
              :BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.brown.shade50,
                    offset: Offset(4,4),
                    spreadRadius: 1,
                    blurRadius: 2
                )
              ]
          ),
          child: Icon(
            icon,
            color: index==selectedIndex?Colors.red:Colors.blue,
          ),
        ),
      ),
    );
  }

}

