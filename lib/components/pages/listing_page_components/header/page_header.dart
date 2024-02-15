import 'package:car_marketplace/components/pages/app_listing_page.dart';
import 'package:flutter/material.dart';

export 'header_components/page_back_button.dart';
export 'header_components/search_bar.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    this.child,
    this.action,
    this.backgroundColor,
    this.iconsColor,
  });

  final Widget? child;
  final Widget? action;
  final Color? backgroundColor;
  final Color? iconsColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(28, 28, 28, 18),
      color: backgroundColor ?? Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PageBackButton(iconColor: iconsColor),
          Flexible(
            child: Align(
              alignment: Alignment.center,
              child: child,
            ),
          ),
          action ?? SizedBox(),
        ],
      ),
    );
  }
}