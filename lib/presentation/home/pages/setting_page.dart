import 'package:flutter/material.dart';
import 'package:my_work/core/constants/color.dart';
import 'package:my_work/presentation/home/widget/image_card.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nama Event",
                        style: TextStyle(color: appColors.grey, fontSize: 16),
                      ),
                      Text(
                        "Ina Amalia & Alfi Firdaus",
                        style: TextStyle(color: appColors.black, fontSize: 16),
                      )
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {},
                    color: appColors.grey,
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pesan undangan",
                      style: TextStyle(color: appColors.grey, fontSize: 16),
                    ),
                    Text(
                      "*Kepada Yth : ...",
                      style: TextStyle(color: appColors.black, fontSize: 16),
                    )
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                  color: appColors.grey,
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageCard(title: "Layar Background"),
                ImageCard(title: "Layar Sapa")
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Akses Layar Sapa",
                        style: TextStyle(color: appColors.grey, fontSize: 16),
                      ),
                      Text(
                        "Tap Untuk Menyalin Link Sayar Sapa",
                        style: TextStyle(color: appColors.black, fontSize: 16),
                      )
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.copy),
                    onPressed: () {},
                    color: appColors.grey,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Logout",
                        style: TextStyle(color: appColors.grey, fontSize: 16),
                      ),
                      Text(
                        "Keluar Dari Akun Ini",
                        style: TextStyle(color: appColors.black, fontSize: 16),
                      )
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.logout),
                    onPressed: () {},
                    color: appColors.grey,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
