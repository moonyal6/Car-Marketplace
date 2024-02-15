import 'package:flutter/material.dart';
import 'package:car_marketplace/widgets/colors.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({this.icon, this.name});

  final IconData? icon;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Card(
        elevation: 0,
        color: AppColor.backgroundColor,
        shape: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.all(Radius.circular(18))
        ),
        child: SizedBox(height: 115, width: 110,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon ??Icons.preview_rounded,
                  size: 60),
              Text(name ??'Brand',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}