import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants.dart';

class FacilityCard extends StatelessWidget {
  const FacilityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      // height: 108,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultPadding),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                "Facility Name",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const Spacer(),
              IconButton(
                icon: SvgPicture.asset("assets/svg/edit_icon.svg"),
                onPressed: () {
                  ///Todo: implement Onpressed
                },
              ),
              IconButton(
                icon: SvgPicture.asset("assets/svg/trash_icon.svg"),
                color: Theme.of(context).colorScheme.secondary,
                onPressed: () {
                  ///Todo: implement Onpressed
                },
              )
            ],
          ),
          // const SizedBox(height: kDefaultPadding / 2),
          const Text(
            "Description",
            maxLines: 2,
          ),
          const Text("Capacity"),
        ],
      ),
    );
  }
}
