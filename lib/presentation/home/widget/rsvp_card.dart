import 'package:flutter/cupertino.dart';
import 'package:my_work/core/components/spaces.dart';
import 'package:my_work/core/constants/color.dart';
import 'package:my_work/data/models/nama.dart';

class RsvpCard extends StatelessWidget {
  final TamuModel item;
  final Icon? data;
  const RsvpCard({super.key, required this.item, this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: appColors.stroke,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: appColors.primary),
                child: Center(
                  child: Text(
                    item.nama[0],
                    style: const TextStyle(color: appColors.white),
                  ),
                ),
              ),
              const SpaceWidth(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.nama,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    item.waktu,
                    style: const TextStyle(color: appColors.grey),
                  )
                ],
              ),
            ],
          ),
          Container(
            height: 21,
            width: 66,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: item.absen == "hadir"
                    ? appColors.secondary
                    : (item.absen == "masih ragu")
                        ? appColors.yellow
                        : appColors.red),
            child: Center(
              child: Text(
                item.absen,
                style: const TextStyle(fontSize: 11),
              ),
            ),
          )
        ],
      ),
    );
  }
}
