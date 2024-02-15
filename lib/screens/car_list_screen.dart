import 'package:car_marketplace/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:car_marketplace/components/pages/app_listing_page.dart';
import 'package:car_marketplace/app_icons.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppListingPage(
      header: PageHeader(
        child: Text('Available Cars',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
        action: IconButton(
          icon: Icon(Icons.search),
          iconSize: 32,
          onPressed: () => Navigator.push(context, 
            MaterialPageRoute(builder: (context) => SearchScreen())
          ),
        ),
      ),
      body: [
        const ScrollableRow(
          initialSpacing: 23,
          children: [
            CarTypeChip(
                label: "Filter", icon: Icons.tune),
            CarTypeChip(
                label: "Recommended", icon: Icons.sort_rounded)
            // CarTypeChip(
            //   label: "Sedan",
            //   icon: CarIcons.sedan,
            // ),
            // CarTypeChip(
            //   label: "Convertible",
            //   icon: CarIcons.convertible,
            // ),
            // CarTypeChip(
            //   label: "Coupe",
            //   icon: CarIcons.coupe,
            // ),
            // CarTypeChip(
            //   label: "SUV",
            //   icon: CarIcons.suv,
            // ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            crossAxisCount: 2,
            addRepaintBoundaries: true,
            addAutomaticKeepAlives: true,
            padding: const EdgeInsets.symmetric(horizontal: 28),
            children: List.generate(20, (index) => CarCard()),
          ),
        ),
      ],
    );
  }
}
