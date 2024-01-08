import 'package:bhasusa_task/utils/constants/const.dart';
import 'package:bhasusa_task/utils/constants/products.dart';
import 'package:bhasusa_task/utils/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 120,
                      // color: Colors.red,
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.blue,
                          ),
                          Text("Gachibowli")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.search, size: 25),
                          Icon(Icons.shopping_bag_outlined),
                          Icon(Icons.favorite_outline_rounded),
                        ],
                      ),
                    ),
                  ],
                ),
                mHBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    landingContainer(
                        image: 'assets/images/couplebike.png',
                        text: "Buy a vehicle",
                        height: 110,
                        width: 180,
                        isCenter: false),
                    landingContainer(
                        image: 'assets/images/autorickshaw.png',
                        text: "Book a ride",
                        height: 110,
                        width: 180,
                        isCenter: false),
                  ],
                ),
                sHBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    landingContainer(
                        image: 'assets/images/charging.png',
                        text: "Charging stations",
                        height: 110,
                        width: 180,
                        isCenter: false),
                    landingContainer(
                        image: 'assets/images/drone.png',
                        text: "Products",
                        height: 110,
                        width: 180,
                        isCenter: false),
                  ],
                ),
                lHBox,
                Align(
                    alignment: Alignment.topLeft, child: headingtxt("offers")),
                SizedBox(
                  height: 100,
                
                  child: ListView.separated(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return landingContainer(
                        image: 'assets/images/carphoto.jpg',
                        text: 'UPTO 30% OFF on products',
                        isCenter: true,
                        height: 110,
                        width: 310,
                      );
                    },
                    separatorBuilder: (context, index) => sWBox,
                  ),
                ),
                mHBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    headingtxt('Bikes'),
                    primarytxt("View all", 16),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        landingContainer(
                          image: 'assets/images/bike.png',
                          text: '',
                          isCenter: false,
                          height: 150,
                          width: 160,
                        ),
                        Row(
                          children: [
                            primarytxt('₹9800', 15),
                            sWBox,
                            primarytxt('10000', 13)
                          ],
                        ),
                        primarytxt('Electric Bike One', 16),
                      ],
                    ),
                    Column(
                      children: [
                        landingContainer(
                          image: 'assets/images/bike.png',
                          text: '',
                          isCenter: false,
                          height: 150,
                          width: 160,
                        ),
                        primarytxt('Electric Bike One', 16),
                        Row(
                          children: [
                            primarytxt('₹9800', 15),
                            sWBox,
                            primarytxt('10000', 13)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                lHBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    headingtxt('Products'),
                    primarytxt("View all", 16),
                  ],
                ),
                SizedBox(
                  height: 450,
                
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                   
                    itemBuilder: (context, index) {
                      return landingContainer(
                        image: productItem[index].image,
                        text: productItem[index].text,
                        isCenter: true,
                        height: productItem[index].height,
                        width: productItem[index].width,
                      );
                    },
                    separatorBuilder: (context, index) => sHBox,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: headingtxt("E-Vechicle"),
                ),
                SizedBox(
                    height: 650,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        childAspectRatio: 6 / 7,
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return landingContainer(
                          image: evItems[index].image,
                          text: evItems[index].text,
                          isCenter: true,
                          height: evItems[index].height,
                          width: evItems[index].width,
                        );
                      },
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
