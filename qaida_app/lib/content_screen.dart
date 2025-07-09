import 'package:flutter/material.dart';
import 'package:qaida_app/utils.dart';

class ContentScreen extends StatelessWidget {
  final List<int> content_list; 

  const ContentScreen({super.key, required this.content_list,});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
      ),
      body: ListView.builder(
        itemCount: content_list.length,
        itemBuilder: (context, index) {
          final imgPath = "assets/content/${content_list[index]}.png";

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
            child: InteractiveViewer(
              panEnabled: true,
              minScale: 1,
              maxScale: 5,
              child: Image.asset(
                imgPath,
                width: screenWidth,
                fit: BoxFit.contain,
              ),
            ),
          );
        },
      ),
    );
  }
}
