import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/widgets/button.dart';

class HospitalBasicInfoForm extends StatefulWidget {
  const HospitalBasicInfoForm({Key? key}) : super(key: key);

  @override
  State<HospitalBasicInfoForm> createState() => _HospitalBasicInfoFormState();
}

class _HospitalBasicInfoFormState extends State<HospitalBasicInfoForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController websiteController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    addressController.dispose();
    phoneController.dispose();
    emailController.dispose();
    websiteController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Key descriptionKey = GlobalKey();
  final Key nameKey = GlobalKey();
  final Key addressKey = GlobalKey();
  final Key phoneKey = GlobalKey();
  final Key emailKey = GlobalKey();
  final Key websiteKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Medical Facility Name",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          TextFormField(
            key: nameKey,
            controller: nameController,
            decoration: customTextFieldDecoration.copyWith(
              hintText: "Name",
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Please Input a valid name for you medical facility";
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
                hintText: "Describe your medical facility"),
            validator: (value) {
              if (value!.isEmpty) {
                return "Your description should not be empty";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: kDefaultPadding),
          const Text("Address"),
          TextFormField(
            key: addressKey,
            controller: addressController,
            decoration: customTextFieldDecoration.copyWith(
                hintText: "Specific Address"),
            validator: (value) {
              if (value!.isEmpty) {
                return "Your address should not be empty";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Phone"),
                    TextFormField(
                      key: phoneKey,
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration:
                          customTextFieldDecoration.copyWith(hintText: "phone"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Your phone contact should not be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("email"),
                    TextFormField(
                      key: emailKey,
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: customTextFieldDecoration.copyWith(
                          hintText: "Contact email"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Your e-mail contact should not be empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: kDefaultPadding),
          const Text("Website"),
          TextFormField(
            key: websiteKey,
            controller: websiteController,
            keyboardType: TextInputType.text,
            decoration: customTextFieldDecoration.copyWith(hintText: "phone"),
            validator: (value) {
              return null;
            },
          ),
          const SizedBox(height: kDefaultPadding2x),
          CustomButton(
              text: "Save Facility",
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  ///TODO: add methods to save the facility
                }
              }),
        ],
      ),
    );
  }
}
