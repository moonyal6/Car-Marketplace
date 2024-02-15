import 'package:flutter/material.dart';
import 'package:car_marketplace/components/pages/app_listing_page.dart';
import '../components/pages/listing_page_components/header/header_components/search_bar.dart';

import '../app_icons.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return AppListingPage(
      header: PageHeader(
        backgroundColor: Colors.blueGrey[900],
        iconsColor: Colors.white,
        child: PageSearchBar(),
      ),
      body: [
        SizedBox(height: 18),
        ScrollableRow(children: [
          CarTypeChip(label: "All", icon: Icons.commute_rounded),
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
        ]),
        PageSection(
          title: "Available cars",
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              children: List.generate(20, (index) => CarLargeCard()),
            ),
          ),
        )
      ],
    );
  }
}
