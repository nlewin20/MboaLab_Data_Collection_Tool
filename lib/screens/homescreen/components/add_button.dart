import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          side: BorderSide(color: Theme.of(context).primaryColor, width: 2),
          backgroundColor: Colors.transparent,
          surfaceTintColor: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kDefaultPadding),
          ),
          elevation: 0),
      onPressed: () {
        // Todo: implement on pressed
      },
      child: Center(
        child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding2x),
            child: SvgPicture.asset("assets/svg/rounded_add_icon.svg")),
      ),
    );
  }
}
