import 'package:car_marketplace/widgets/colors.dart';
import 'package:flutter/material.dart';

import '../components/pages/listing_page_components/header/header_components/page_back_button.dart';
import '../components/pages/listing_page_components/sections/section_components/scollables/scrollable_components/car_card.dart';

const Map carData = {
  "img":"assets/img/jpg/ferrari.jpg",
  "year":"2021",
  "name": "Ferrari",
  "mileage": "200k Km",
  "color": "Yellow",
  "price": "\$ 150,120",
  "location": "Tashkent"
};

/*
  Car Details:
    - Year
    - Body type
    - Fuel
    - Engine
 */

class CarPage extends StatelessWidget {
  const CarPage({Key? key,
    // required this.image,
    // required this.year,
    // required this.name,
    // required this.mileage,
    // required this.color,
    // required this.price,
    // required this.location
  }) : super(key: key);

  // final String image;
  // final String year;
  // final String name;
  // final String mileage;
  // final String color;
  // final String price;
  // final String location;

  @override
  Widget build(BuildContext context) {
    CarCard MercedesGle = CarCard(
      imagePath: 'assets/img/jpg/gle.jpg',
      name: "Mercedes-Benz GLE 63s Coupe",
      price: "\$ 163,055",
      year: "2022",
    );

    CarCard BentleyCard = CarCard(
      imagePath: 'assets/img/jpg/bentley.jpg',
      name: "Bentley Flying Spur",
      price: "\$ 220,000",
      year: "2020",
    );

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              physics: PageScrollPhysics(),
              children: [
                ClipRRect(
                  child: Image.asset(BentleyCard.imagePath!),
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(35)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24),
                      Text(BentleyCard.name!,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 46),
                      Column(
                        children: [
                          CarDetailTile(
                            icon: Icons.calendar_month,
                            label: "Year",
                            data: BentleyCard.year,
                          ),
                          CarDetailTile(
                            icon: Icons.speed,
                            label: "Mileage",
                            data: "65,000 km",
                          ),
                          CarDetailTile(
                            icon: Icons.local_gas_station_rounded,
                            label: "Fule",
                            data: 'Gasoline',
                          ),
                          CarDetailTile(),
                          CarDetailTile(),
                        ]
                          ,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 120,
                color: AppColor.backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      Divider(thickness: 2),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Price',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54
                                ),
                              ),
                              Text(BentleyCard.price!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28
                                ),
                              )
                            ],
                          ),
                          ElevatedButton(
                            onPressed: (){},
                            child: Container(
                              width: 120,
                              height: 50,
                              child: Center(child: Text("Buy")),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 6,
              left: 6,
              child: Align(
                alignment: Alignment.topLeft,
                child: PageBackButton(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CarDetailTile extends StatelessWidget {
  const CarDetailTile({this.icon, this.label, this.data});

  final IconData? icon;
  final String? label;
  final String? data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon ?? Icons.info,
                color: Colors.black45,
              ),
              const SizedBox(width: 24),
              Text(label ?? 'Lable',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black45
                ),
              )
            ],
          ),
          Text(data ?? 'Data',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
          )
        ],
      ),
    );
  }
}
