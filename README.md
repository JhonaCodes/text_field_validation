# TextFieldValidation Package

<img src="https://github.com/JhonaCodes/text_field_validation/assets/53523825/202e7189-d80d-4119-9aff-5520ce189940" width="300" height="150" />



[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![text_field_validation](https://img.shields.io/pub/v/text_field_validation.svg)](https://pub.dev/packages/text_field_validation)
[![Dart 3](https://img.shields.io/badge/Dart-3%2B-blue.svg)](https://dart.dev/)
[![Flutter 3.10](https://img.shields.io/badge/Flutter-3%2B-blue.svg)](https://flutter.dev/)

The `text_field_validation` package provides utilities for validating various types of data entered into a `TextField` within a Flutter application. It is designed to be used with the `Form` widget to ensure proper data validation.

## Features

- Validate Google Account, Hangouts, Classroom, Docs, Forms, Sheets, Slides, Drawings, Sites, Keep, LinkedIn, Facebook, Twitter, Instagram, Pinterest, Tumblr, Snapchat, Reddit, GitHub, GitLab, Captcha, Weights, Height, Age, Date, Text, Number, Alphanumeric, Velocity, IMEI, MAC Address, SSID, IP Address, Port, Port Range, Year, Phone Number, Date Born, Social Security Number, URL, Hexadecimal Color, IPv4, IPv6, ISBN, ISIN, BIC, DNS, MD5, SHA1, and more.
- Regular expressions for various contexts, allowing easy customization and updates for specific use cases.
- Customizable response messages for invalid input.
- Easy integration into your Flutter application.

## Getting Started

1. Add the `text_field_validation` package to your `pubspec.yaml` file:

```yaml
dependencies: 
  text_field_validation: ^1.1.4
```

1. Run flutter packages get to install the package.
2. Import the package in your Dart code: ```import 'package:text_field_validation/text_field_validation.dart';```
3. Use the provided validation methods within your form validation logic:


## Usage
```dart
/// Basic usage.
TextFormField(
  validator: (value) => TextFieldValidation.googleAccount(value!),
)

```

```dart
/// Or use your custom TextFormField widget.
class AuthTextField extends StatelessWidget {

final TextEditingController? controller;
final Function(String?) onValidate;
const AuthTextField({super.key,  this.controller, required this.onValidate});

@override
Widget build(BuildContext context) {
  return TextFormField(
    controller: controller, 
    validator: (value) => onValidate(value),
  );}
}


/// Then use it in your form.
Form(
key: _formKey,
  child: Column(
    children: [
      AuthTextField(
        controller: _emailController,
        onValidate: (value) => TextFieldValidation.email(value!),
      ),
      AuthTextField(
        controller: _passwordController,
        onValidate: (value) => TextFieldValidation.password(value!),
      ),
    ],
  ),
)
```

## Screens:

<img width="413" alt="simple_empty_text_form_field" src="https://github.com/JhonaCodes/text_field_validation/assets/53523825/b0c8df3d-1d54-4ea9-afde-5ed331b30693">

<img width="410" alt="wrong_data" src="https://github.com/JhonaCodes/text_field_validation/assets/53523825/a3e335c7-915f-4e3f-9986-deab9523b90a">


## Contributions
Contributions are welcome! If you find a bug or want to add new features, please open an issue or submit a pull request.

## License
This package is licensed under the MIT License - see the LICENSE file for details.


# Test Results Index

- [Test Results - Tests_in_address_validation_test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20Tests_in_address_validation_test_dart.html)
- [Test Results - tests_in_card_validation_test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20tests_in_card_validation_test_dart.html)
- [Test Results - tests_in_crypto_address_validation_test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20tests_in_cripto_address_validation_test_dart.html)
- [Test Results - tests_in_data_validation__test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20tests_in_data_validation__test_dart.html)
- [Test Results - tests_in_iban_validation_test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20tests_in_iban_validation_test_dart.html)
- [Test Results - tests_in_identificator_validation_test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20tests_in_identificator_validation_test_dart.html)
- [Test Results - tests_in_internet_validation_test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20tests_in_internet_validation_test_dart.html)
- [Test Results - tests_in_isrc_validation_test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20tests_in_isrc_validation_test_dart.html)
- [Test Results - tests_in_iswc_validation_test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20tests_in_iswc_validation_test_dart.html)
- [Test Results - tests_in_measurement_validation_test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20tests_in_measurement_validation_test_dart.html)
- [Test Results - tests_in_repo_url_validation_test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20tests_in_repo_url_validation_test_dart.html)
- [Test Results - tests_in_social_media_url_validation_test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20tests_in_social_media_url_validation_test_dart.html)
- [Test Results - tests_in_text_form_user_validation_test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20tests_in_text_form_user_validation_test_dart.html)
- [Test Results - tests_in_url_validation_test_dart.html](https://htmlpreview.github.io/?https://github.com/JhonaCodes/text_field_validation/blob/main/Test%20Results%20-%20tests_in_url_validation_test_dart.html)


