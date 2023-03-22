import 'package:data_collection_tool/core/constants.dart';
import 'package:flutter/material.dart';

import 'add_button.dart';
import 'facilities_card.dart';

class MedFacilities extends StatelessWidget {
  const MedFacilities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Todo: replace with List View Builder
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Facilities",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: kDefaultPadding),
        const FacilityCard(),
        const SizedBox(height: kDefaultPadding),
        const AddButton(),
        const SizedBox(height: kDefaultPadding),
      ],
    );
  }
}
