import 'package:test/test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main() {
  group("MEASUREMENTS_VALIDATION_TEST", () {
    test("weights_empty_validation_test", () {
      expect(TextFieldValidation.weights(""), 'Weights is required');
    });

    test("weights_valid_test", () {
      expect(TextFieldValidation.weights("150"), null);
    });

    test("height_empty_validation_test", () {
      expect(TextFieldValidation.height(""), 'Height is required');
    });

    test("height_valid_test", () {
      expect(TextFieldValidation.height("180"), null);
    });
  });
}
