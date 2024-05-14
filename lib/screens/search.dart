import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              //  controller: searchController,
              decoration: InputDecoration(
                hintText: 'Enter search text',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Search'),
          ),
        ],
      ),
    );
  }
}
