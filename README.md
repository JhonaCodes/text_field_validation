# TextFieldValidation Package

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
  text_field_validation: ^0.2.2
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

## Contributions
Contributions are welcome! If you find a bug or want to add new features, please open an issue or submit a pull request.

## License
This package is licensed under the MIT License - see the LICENSE file for details.


