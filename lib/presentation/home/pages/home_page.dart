import 'package:flutter/material.dart';
import 'package:my_work/core/components/components.dart';
import 'package:my_work/core/constants/color.dart';
import 'package:my_work/data/models/nama.dart';
import 'package:my_work/presentation/home/widget/search_input.dart';
import 'package:my_work/presentation/home/widget/tamu_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: const BoxDecoration(color: appColors.primary),
          ),
          Align(
            alignment: const Alignment(0, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.94,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 3,
                              color: appColors.grey,
                              offset: Offset(0, 3))
                        ],
                        color: appColors.white,
                        border: Border.all(color: appColors.primary, width: 2),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: appColors.primary),
                              child: const Center(
                                child: Text(
                                  "A",
                                  style: TextStyle(color: appColors.white),
                                ),
                              ),
                            ),
                            const SpaceWidth(10),
                            const Text("alfifirdaus0607")
                          ],
                        ),
                        const SpaceHeight(5),
                        const Divider(
                          color: appColors.primary,
                        ),
                        const SpaceHeight(5),
                        const Text(
                          "Nama Event",
                          style: TextStyle(
                              color: Color.fromARGB(255, 150, 150, 150),
                              fontSize: 16),
                        ),
                        const Text(
                          "Ina Amalia & Alfi Firdaus",
                          style:
                              TextStyle(color: appColors.black, fontSize: 16),
                        ),
                        const Text(
                          "Waktu Event",
                          style: TextStyle(
                              color: Color.fromARGB(255, 150, 150, 150),
                              fontSize: 16),
                        ),
                        const Text(
                          "26 Juni 2023",
                          style:
                              TextStyle(color: appColors.black, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text("Export To Excel")),
                            const Text("Total Kamu Check In : 4"),
                          ],
                        ),
                        const SearchInput(),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: tamu.isEmpty
                                ? const Center(
                                    child: Text("Tidak Ada Tamu"),
                                  )
                                : ListView.builder(
                                    padding: const EdgeInsets.only(bottom: 30),
                                    itemCount: tamu.length,
                                    itemBuilder: (context, index) =>
                                        TamuCard(item: tamu[index]),
                                  ))
                      ],
                    ),
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
