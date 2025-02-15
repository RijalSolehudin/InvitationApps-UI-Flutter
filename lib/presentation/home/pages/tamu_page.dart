import 'package:flutter/material.dart';
import 'package:my_work/core/assets/assets.dart';
import 'package:my_work/core/components/spaces.dart';
import 'package:my_work/core/constants/color.dart';
import 'package:my_work/data/models/nama.dart';
import 'package:my_work/presentation/home/widget/TamuToggle.dart';
import 'package:my_work/presentation/home/widget/contact_card.dart';
import 'package:my_work/presentation/home/widget/search_input.dart';

class TamuPage extends StatelessWidget {
  const TamuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
        alignment: const Alignment(0.9, 0.9),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.9,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
                offset: Offset(0, 2),
                blurRadius: 3,
                color: Color.fromARGB(145, 0, 0, 0))
          ], color: appColors.primary, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                splashColor: appColors.secondary,
                child: Row(
                  children: [
                    Assets.icons.iconAddressBook.image(),
                    const SpaceWidth(10),
                    const Text(
                      "Tambah dari Kontak",
                      style: TextStyle(color: appColors.white),
                    ),
                  ],
                ),
              ),
              const Text(
                "|",
                style: TextStyle(fontSize: 25, color: appColors.white),
              ),
              InkWell(
                onTap: () {},
                splashColor: appColors.secondary,
                child: Row(
                  children: [
                    const Text(
                      "Tambah Manual",
                      style: TextStyle(color: appColors.white),
                    ),
                    const SpaceWidth(10),
                    Assets.icons.iconAddressCard.image(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          children: [
            const ToggleTamu(),
            const SpaceHeight(20),
            const SearchInput(),
            Expanded(
                child: ListView.builder(
                    itemCount: tamu.length,
                    itemBuilder: (context, index) =>
                        ContactCard(item: tamu[index])))
          ],
        ),
      ),
    );
  }
}
