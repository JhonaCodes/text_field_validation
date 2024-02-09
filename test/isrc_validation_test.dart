import 'package:test/test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main() {
  group("ISRC_VALIDATION_TEST", () {
    /// Testing ISRC validation using [TextFieldValidation.ISRC].
    test("isrc_empty_validation_test", () {
      expect(TextFieldValidation.isrc(""), 'ISRC is required');
    });

    test("isrc_invalid_test", () {
      expect(
          TextFieldValidation.isrc("invalidISRC"), 'Please enter a valid isrc');
    });

    test("isrc_valid_test", () {
      expect(TextFieldValidation.isrc("AA6Q72000047"), null);
    });
  });
}
