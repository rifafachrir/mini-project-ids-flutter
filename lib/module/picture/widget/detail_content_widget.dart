import 'package:flutter/material.dart';

class DetailContentWidget extends StatelessWidget {
  final String imageUrl;
  final String author;

  const DetailContentWidget({required this.imageUrl, required this.author});



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
          height: 500,
        ),
        Align(
          alignment:Alignment.centerRight,
          child: Padding (
            padding: const EdgeInsets.all(8.0),
            child:
            Expanded(
              child: Text(
              "Taken By : ${author}",
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic
              ),
            ),)

          )
        )
      ],
    );
  }
}
