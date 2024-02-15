import 'package:car_marketplace/widgets/car_page.dart';
import 'package:car_marketplace/widgets/single_car.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    this.imagePath,
    this.name,
    this.price,
    this.year
  });

  final String? imagePath;
  final String? name;
  final String? price;
  final String? year;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: GestureDetector(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => CarPage())),
        child: Card(
          elevation: 0,
          child: Container(
            width: 155,
            height: 175,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: imagePath != null && false
                        ? BoxDecoration(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage(imagePath!),
                          fit: BoxFit.cover,
                        )
                    )
                        : const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                          end: Alignment.bottomRight,
                          colors: [Colors.white,
                            Color(0xffeeeeee)],
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('assets/img/placeholder_car.png'),
                          fit: BoxFit.scaleDown,
                        )
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name ?? 'Car Name',
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(price ?? '\$ XXX,XXX',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(year ?? 'YYYY',
                                style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black26
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
