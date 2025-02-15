import 'package:flutter/material.dart';
import 'package:my_work/core/constants/color.dart';
import 'package:my_work/data/models/nama.dart';
import 'package:my_work/presentation/home/widget/rsvp_card.dart';

class RsvpPage extends StatelessWidget {
  const RsvpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          12,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: appColors.secondary,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("4"), Text("Hadir")],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: appColors.yellow,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("4"), Text("Masih Ragu")],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: appColors.red,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("4"), Text("Tidak Hadir")],
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                itemCount: tamu.length,
                itemBuilder: (context, index) => RsvpCard(item: tamu[index]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
