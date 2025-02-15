import 'package:flutter/cupertino.dart';
import 'package:my_work/core/assets/assets.dart';
import 'package:my_work/core/components/spaces.dart';
import 'package:my_work/core/constants/color.dart';
import 'package:my_work/data/models/nama.dart';

class ContactCard extends StatelessWidget {
  final TamuModel item;
  const ContactCard({
    super.key,
    required this.item,
  });

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
        crossAxisAlignment: CrossAxisAlignment.center,
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
                    item.id.toString(),
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
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 25,
                  width: 25,
                  child: item.tipeKontak == "wa"
                      ? Assets.icons.iconWaPng.image(fit: BoxFit.contain)
                      : Assets.icons.iconCheck.image(fit: BoxFit.contain),
                ),
              ),
              const SpaceWidth(10),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 25,
                  width: 25,
                  child: Assets.icons.iconAlternateTrash.image(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
