import 'package:test/test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main(){
  group("ISRC_VALIDATION_TEST", () {
    /// Testing ISRC validation using [TextFieldValidation.ISRC].
    test("isrc_empty_validation_test", () {
      expect(TextFieldValidation.ISRC(""), 'ISRC is required');
    });

    test("isrc_invalid_test", () {
      expect(TextFieldValidation.ISRC("invalidISRC"), 'Please enter a valid ISRC');
    });

    test("isrc_valid_test", () {
      expect(TextFieldValidation.ISRC("AA6Q72000047"), null);
    });
  });
}