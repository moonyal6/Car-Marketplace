import 'package:flutter/material.dart';

export 'scrollable_components/brand_card.dart';
export 'scrollable_components/car_card.dart';
export 'scrollable_components/car_large_card.dart';
export 'scrollable_components/car_type_chip.dart';

class ScrollableRow extends StatelessWidget {
  const ScrollableRow({required this.children, this.initialSpacing = 28});

  final List<Widget> children;
  final double initialSpacing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: initialSpacing),
            Row(children: children,)
          ],
        ),
      ),
    );
  }
}