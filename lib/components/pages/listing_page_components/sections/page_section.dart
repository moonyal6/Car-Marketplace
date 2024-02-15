import 'package:car_marketplace/components/pages/listing_page_components/sections/section_components/page_section_header.dart';
import 'package:flutter/material.dart';

export 'section_components/page_section_header.dart';
export 'section_components/scollables/scrollable_row.dart';

class PageSection extends StatelessWidget {
  const PageSection({
    required this.title,
    required this.child,
    this.sectionPage,
    // this.initialSpacing
  });

  final String title;
  final Widget? sectionPage;
  // final double? initialSpacing;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PageSectionHeader(
          title: title,
          sectionPage: sectionPage,
        ),
        child,
        // ScrollableRow(
        //   initialSpacing: initialSpacing ?? 28,
        //   children: content,
        // ),
        const SizedBox(height: 12)
      ],
    );
  }
}