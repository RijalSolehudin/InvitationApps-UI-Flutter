import 'package:flutter/material.dart';

class ToggleTamu extends StatefulWidget {
  const ToggleTamu({super.key});

  @override
  State<ToggleTamu> createState() => _ToggleTamuState();
}

class _ToggleTamuState extends State<ToggleTamu> {
  bool isPriaSelected = true; // Default: Tamu Pria aktif

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          // Tombol Tamu Pria
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isPriaSelected = true;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: isPriaSelected ? Colors.green : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6)),
                ),
                child: Center(
                  child: Text(
                    "Tamu Mempelai Pria  |  3",
                    style: TextStyle(
                      fontSize: 12,
                      color: isPriaSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Tombol Tamu Wanita
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isPriaSelected = false;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: !isPriaSelected ? Colors.green : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6)),
                ),
                child: Center(
                  child: Text(
                    "Tamu Mempelai Wanita  |  10",
                    style: TextStyle(
                      fontSize: 12,
                      color: !isPriaSelected ? Colors.white : Colors.black,
                    ),
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
