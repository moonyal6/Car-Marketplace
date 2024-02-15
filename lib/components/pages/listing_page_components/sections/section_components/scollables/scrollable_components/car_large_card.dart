import 'package:flutter/material.dart';
import 'package:car_marketplace/widgets/car_page.dart';

class CarLargeCard extends StatelessWidget {
  const CarLargeCard({
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
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => CarPage())),
      child: Card(
        elevation: 0,
        child: Container(
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 15/5,
            child: Row(
              children: [
                Expanded(
                    flex: 11,
                    child: Container(
                      margin: EdgeInsets.all(14),
                      decoration: imagePath != null
                          ? BoxDecoration(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(10)),
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
                              Radius.circular(10)),
                          image: DecorationImage(
                            image: AssetImage('assets/img/png/placeholder_car.png'),
                            fit: BoxFit.scaleDown,
                          )
                      ),
                    )
                ),
                Expanded(
                    flex: 13,
                    child: Container(
                      padding: const EdgeInsets.only(
                          right: 8, bottom:0 ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 10,
                              child: Align(
                                child: Text(name ??'Car Model Name',
                                  maxLines: 1,
                                  style: const TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                alignment: Alignment.bottomLeft,
                              )
                          ),
                          SizedBox(height: 4),
                          Expanded(
                            flex: 8,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(price ??'\$ XXX,XXX',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                      fontSize: 17
                                    ),
                                  ),
                                  Text(year ??'YYYY',
                                    style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black26
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
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