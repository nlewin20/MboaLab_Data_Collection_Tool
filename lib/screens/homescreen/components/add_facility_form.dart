import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/widgets/button.dart';

class AddFacilitiesForm extends StatefulWidget {
  const AddFacilitiesForm({Key? key}) : super(key: key);

  @override
  State<AddFacilitiesForm> createState() => _AddFacilitiesFormState();
}

class _AddFacilitiesFormState extends State<AddFacilitiesForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController capacityController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    capacityController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Key descriptionKey = GlobalKey();
  final Key nameKey = GlobalKey();
  final Key capacityKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Facility Name",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextFormField(
                key: nameKey,
                controller: nameController,
                decoration: customTextFieldDecoration.copyWith(
                  hintText: "e.g Dialyses Centre",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Your facility name cannot be empty facility";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: kDefaultPadding),
              const Text("Description"),
              TextFormField(
                key: descriptionKey,
                controller: descriptionController,
                maxLines: 5,
                decoration: customTextFieldDecoration.copyWith(
                    hintText: "Describe your facility"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Your description should not be empty";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: kDefaultPadding),
              const Text("Capacity"),
              TextFormField(
                key: capacityKey,
                controller: capacityController,
                keyboardType: TextInputType.number,
                decoration:
                    customTextFieldDecoration.copyWith(hintText: "e.g 15"),
                validator: (value) {
                  return null;

                  // if (value!.isEmpty) {
                  //   return "Your address should not be empty";
                  // } else {
                  //   return null;
                  // }
                },
              ),
              const SizedBox(height: kDefaultPadding),
              Row(
                children: [
                  CustomButton(
                      isSecondary: true,
                      text: "Cancel",
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  const SizedBox(width: kDefaultPadding),
                  CustomButton(
                      text: "Save Facility",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          ///TODO: add methods to save the facility
                        }
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
