import 'package:flutter/material.dart';
import '../../widgets/colors.dart';

export 'listing_page_components/header/page_header.dart';
export 'listing_page_components/sections/page_section.dart';

class AppListingPage extends StatelessWidget {
  const AppListingPage({this.header, required this.body});

  final Widget? header;
  final List<Widget> body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            header ?? SizedBox(),
            Flexible(
              child: ListView(
                children: body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}