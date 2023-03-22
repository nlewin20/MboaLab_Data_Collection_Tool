import 'package:data_collection_tool/core/constants.dart';
import 'package:data_collection_tool/screens/homescreen/components/med_facilities.dart';
import 'package:data_collection_tool/screens/homescreen/components/med_services.dart';
import 'package:flutter/material.dart';

import 'components/hospital_basic_info_form.dart';

class HomeScreen extends StatelessWidget {
  static const String id = "homescreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double columnGrid = screenSize.width / 14;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: columnGrid),
        child: Column(
          children: [
            const SizedBox(height: kDefaultPadding2x),
            const Header(),
            const SizedBox(height: kDefaultPadding2x),
            Row(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hospital Name",
                            style: Theme.of(context).textTheme.displayLarge),
                        const SizedBox(height: kDefaultPadding),
                        const HospitalBasicInfoForm(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: kDefaultPadding2x),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: const [
                        MedFacilities(),
                        MedServices(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Welcome Name",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const Spacer(),
        CircleAvatar(
          radius: 32,
          backgroundColor: Theme.of(context).cardColor,
        )
      ],
    );
  }
}

// Expanded(
// flex: 1,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisSize: MainAxisSize.min,
// children: const [
// MedFacilities(),
// SizedBox(height: kDefaultPadding),
// MedServices(),
// ],
// ),
// ),
