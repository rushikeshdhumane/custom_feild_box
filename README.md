# custom_feild_box

A customizable input field widget for Flutter, created with flexibility and reusability in mind.

## Features

- Text input with optional dropdown support
- Easily stylable
- Supports validation and error messages
- Reusable across forms

## Usage

```dart
import 'package:custom_feild_box/custom_feild_box.dart';

CustomFieldBox(
  labelText: 'Your Name',
  controller: TextEditingController(),
  isDropdown: false,
)
