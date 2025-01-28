import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var height = mediaQuery.height;
    var width = mediaQuery.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query Example'),
      ),
      body: Column(
        children: [
          Container(
            color: (height > 402)
                ? Colors.deepOrange
                : Colors.amber, // ternary operator (condition ? true : false)
            height: height * 0.5,
            width: width,
            child: Center(
              child: Text(
                'Height: ${height}\nWidth: ${width}',
                style: TextStyle(
                  color: (height > 402) ? Colors.white : Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: (height > 402)
                  ? Colors.amber
                  : Colors
                      .deepOrange, // ternary operator (condition ? true : false)
              //height: height * 0.5,
              width: width,
              child: Center(
                child: Text(
                  'Height: ${height}\nWidth: ${width}',
                  style: TextStyle(
                    color: (height > 402) ? Colors.black : Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
