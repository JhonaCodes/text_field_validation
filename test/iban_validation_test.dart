import 'package:test/test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main() {
  group("IBAN_VALIDATION_TEST", () {
    /// Testing IBAN validation using [TextFieldValidation.IBAN].
    test("iban_empty_validation_test", () {
      expect(TextFieldValidation.iban(""), 'IBAN is required');
    });

    test("iban_invalid_test", () {
      expect(
          TextFieldValidation.iban("invalidIBAN"), 'Please enter a valid iban');
    });

    test("iban_valid_test", () {
      expect(TextFieldValidation.iban("AL472121100900000002356987411"), null);
    });
  });
}
