import 'package:flutter/material.dart';

class PageSectionHeader extends StatelessWidget {
  const PageSectionHeader({required this.title, this.sectionPage});

  final String title;
  final Widget? sectionPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28,0,28,10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),
          ),
          sectionPage == null
              ? SizedBox(height: 48)
              : TextButton(
            style: const ButtonStyle(
                alignment: Alignment.bottomCenter,
                padding: MaterialStatePropertyAll(EdgeInsets.zero)),
            child: const Text('View all',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black45
              ),
            ),
            onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context) => sectionPage!));}
          ),
        ],
      ),
    );
  }
}