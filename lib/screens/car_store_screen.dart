import 'package:flutter/material.dart';
import 'package:car_marketplace/components/pages/app_listing_page.dart';
import 'package:car_marketplace/app_icons.dart';
import 'car_list_screen.dart';

class CarStoreScreen extends StatefulWidget {
  const CarStoreScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CarStoreScreen> createState() => _CarStoreScreenState();
}

class _CarStoreScreenState extends State<CarStoreScreen> {
  @override
  Widget build(BuildContext context) {
    CarCard BentleyCard = CarCard(
      imagePath: 'assets/img/jpg/bentley.jpg',
      name: "Bentley Flying Spur",
      price: "\$ 220,000",
      year: "2020",
    );

    CarCard MercedesGle = CarCard(
      imagePath: 'assets/img/jpg/gle.jpg',
      name: "Mercedes-Benz GLE 63s Coupe",
      price: "\$ 163,055",
      year: "2022",
    );

    CarCard FerrariCard = CarCard(
      imagePath: 'assets/img/jpg/ferrari.jpg',
      name: "Ferrari 458 Italia",
      price: "\$ 175,000",
      year: "2011",
    );

    CarCard TeslaCard = CarCard(
      imagePath: 'assets/img/jpg/tesla.jpg',
      name: "Tesla Model X",
      price: "\$ 101,380",
      year: "2022",
    );


    return AppListingPage(
      header: const PageHeader(
        child: PageSearchBar(),
      ),
      body: [
        const ScrollableRow(
          initialSpacing: 23,
          children: [
            CarTypeChip(
              label: "Sedan",
              icon: CarIcons.sedan,
            ),
            CarTypeChip(
              label: "Convertible",
              icon: CarIcons.convertible,
            ),
            CarTypeChip(
              label: "Coupe",
              icon: CarIcons.coupe,
            ),
            CarTypeChip(
              label: "SUV",
              icon: CarIcons.suv,
            ),
            CarTypeChip(
              label: "Crossover",
              icon: CarIcons.crossover,
            ),
            CarTypeChip(
              label: "Hatchback",
              icon: CarIcons.hatchback,
            ),
            CarTypeChip(
              label: "Sport",
              icon: CarIcons.sport,
            ),
            CarTypeChip(
              label: "Minivan",
              icon: CarIcons.minivan,
            ),
          ],
        ),
        SizedBox(height: 12),
        Column(
          children: [
            PageSection(
              title: "Top Brands",
              child: ScrollableRow(
                initialSpacing: 26,
                children: List.generate(5, (index) => BrandCard()),
              ),
            ),
            PageSection(
              title: "Car recommendation",
              sectionPage: CarListScreen(),
              child: ScrollableRow(
                initialSpacing: 24,
                children: [
                  BentleyCard,
                  MercedesGle,
                  FerrariCard,
                  CarCard(),
                  CarCard(),
                ],
              ),
            ),
            // PageSection(
            //     title: 'Available cars',
            //     child:Container(
            //       width: double.infinity,
            //       child: GridView.count(
            //         physics: NeverScrollableScrollPhysics(),
            //         scrollDirection: Axis.vertical,
            //         shrinkWrap: true,
            //         crossAxisCount: 2,
            //         addRepaintBoundaries: true,
            //         addAutomaticKeepAlives: true,
            //         padding: const EdgeInsets.symmetric(horizontal: 28),
            //         children: List.generate(10, (index) => CarCard())
            //       ),
            //     ),
            // ),
            PageSection(
              title: 'Available cars',
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                    children: //List.generate(10, (index) => CarLargeCard())
                    [
                      CarLargeCard(
                        imagePath: TeslaCard.imagePath,
                        name: TeslaCard.name,
                        year: TeslaCard.year,
                        price: TeslaCard.price,
                      ),
                      CarLargeCard(),
                      CarLargeCard(),
                      CarLargeCard(),
                      CarLargeCard(),
                      CarLargeCard(),
                      CarLargeCard(),
                    ]
                ),
              ),
            ),



          ],
        ),
      ],
    );
  }
}









