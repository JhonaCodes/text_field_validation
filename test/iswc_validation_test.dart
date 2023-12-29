import 'package:test/test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main(){
  group("ISWC_VALIDATION_TEST", () {
    /// Testing ISWC validation using [TextFieldValidation.ISWC].
    test("iswc_empty_validation_test", () {
      expect(TextFieldValidation.ISWC(""), 'ISWC is required');
    });

    test("iswc_invalid_test", () {
      expect(TextFieldValidation.ISWC("invalidISWC"), 'Please enter a valid ISWC');
    });

    test("iswc_valid_test", () {
      expect(TextFieldValidation.ISWC("T-123.456.789-0"), null);
    });
  });
}