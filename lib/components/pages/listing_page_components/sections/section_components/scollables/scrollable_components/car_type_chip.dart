import 'package:flutter/material.dart';

import 'package:car_marketplace/widgets/colors.dart';

class CarTypeChip extends StatelessWidget {
  const CarTypeChip({required this.label, required this.icon, this.onSelected});

  final String label;
  final IconData icon;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: FilterChip(
        backgroundColor: AppColor.backgroundColor,
        side: const BorderSide(color: Colors.black12),
        label: Text(label),
        avatar: Icon(icon,
          color: Colors.black,
        ),
        onSelected: onSelected,
      ),
    );
  }
}