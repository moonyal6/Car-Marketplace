import 'package:flutter/material.dart';

import '../../../../../screens/search_screen.dart';


class PageSearchBar extends StatelessWidget {
  const PageSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: const Icon(Icons.search,
            color: Colors.black54,
            size: 28,
          ),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => SearchScreen())),
        ),
        filled: true,
        fillColor: Color(0xffF8FAFC),
        hintText: 'Search Cars...',
        hintStyle: const TextStyle(color: Color(0xFFB2BDCC)),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}