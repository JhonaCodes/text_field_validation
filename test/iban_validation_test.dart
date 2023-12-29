import 'package:test/test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main(){
  group("IBAN_VALIDATION_TEST", () {

    /// Testing IBAN validation using [TextFieldValidation.IBAN].
    test("iban_empty_validation_test", () {
      expect(TextFieldValidation.IBAN(""), 'IBAN is required');
    });

    test("iban_invalid_test", () {
      expect(TextFieldValidation.IBAN("invalidIBAN"), 'Please enter a valid IBAN');
    });

    test("iban_valid_test", () {
      expect(TextFieldValidation.IBAN("AL472121100900000002356987411"), null);
    });
  });
}