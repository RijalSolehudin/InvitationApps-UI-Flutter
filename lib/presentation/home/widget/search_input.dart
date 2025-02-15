import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  final searchController = TextEditingController();
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        controller: searchController,
        decoration: InputDecoration(
            hintText: "Cari Tamu",
            hintStyle: const TextStyle(fontSize: 14, color: appColors.grey),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: appColors.grey),
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
