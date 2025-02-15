import 'package:flutter/material.dart';
import 'package:my_work/core/assets/assets.dart';

class ImageCard extends StatelessWidget {
  final String title;

  const ImageCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 120,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              child:
                  Assets.images.gambar1.image(height: 100, fit: BoxFit.cover)),
          const Center(
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(140, 76, 175, 79),
              radius: 15,
              child: Icon(Icons.edit, color: Colors.white, size: 12),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 170,
              padding: const EdgeInsets.symmetric(vertical: 1),
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
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
