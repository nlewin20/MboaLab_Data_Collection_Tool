import 'package:data_collection_tool/screens/homescreen/components/add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants.dart';

class MedServices extends StatelessWidget {
  const MedServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Services",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: kDefaultPadding),
        const ServicesCard(),
        const SizedBox(height: kDefaultPadding),
        const AddButton(),
        const SizedBox(height: kDefaultPadding),
      ],
    );
  }
}

class ServicesCard extends StatelessWidget {
  const ServicesCard({Key? key}) : super(key: key);

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
          //const SizedBox(height: kDefaultPadding / 2),
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
