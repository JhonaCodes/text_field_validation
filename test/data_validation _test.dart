import 'package:test/test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main() {
  group("DATA_VALIDATION_TEST", () {
    test("date_valid_test", () {
      expect(TextFieldValidation.date("2023-15-01"), null);
      expect(
          TextFieldValidation.date("2023/12/29"), 'Please enter a valid date');
      expect(TextFieldValidation.date("23-12-29"), 'Please enter a valid date');
      expect(TextFieldValidation.date("2023-12-29T10:30:00"),
          'Please enter a valid date');
    });

    test("age_empty_validation_test", () {
      expect(TextFieldValidation.age(""), 'Age is required');
    });

    test("without_numbers_empty_validation_test", () {
      expect(TextFieldValidation.withoutNumbers(""), 'Text is required');
    });

    test("age_valid_test", () {
      expect(TextFieldValidation.age("25"), null);
    });

    test("number_empty_validation_test", () {
      expect(TextFieldValidation.number(""), 'Number is required');
    });

    test("number_valid_test", () {
      expect(TextFieldValidation.number("123"), null);
    });

    test("alphanumeric_empty_validation_test", () {
      expect(TextFieldValidation.alphanumeric(""), 'Alphanumeric is required');
    });

    test("alphanumeric_valid_test", () {
      expect(TextFieldValidation.alphanumeric("abc123"), null);
    });

    test("alphanumeric_with_spaces_empty_validation_test", () {
      expect(TextFieldValidation.alphanumericWithSpaces(""),
          'Alphanumeric with spaces is required');
    });

    test("alphanumeric_with_spaces_valid_test", () {
      expect(TextFieldValidation.alphanumericWithSpaces("abc 123"), null);
    });

    test("alphanumeric_with_spaces_and_punctuation_empty_validation_test", () {
      expect(TextFieldValidation.alphanumericWithSpacesAndPunctuation(""),
          'Alphanumeric with spaces and punctuation is required');
    });

    test("alphanumeric_with_spaces_and_punctuation_valid_test", () {
      expect(
          TextFieldValidation.alphanumericWithSpacesAndPunctuation(
              "Hello World,123."),
          null);
      expect(
          TextFieldValidation.alphanumericWithSpacesAndPunctuation(
              "123,222.222"),
          null);
    });

    test("velocity_empty_validation_test", () {
      expect(TextFieldValidation.velocity(""), 'Velocity is required');
    });

    test("velocity_valid_test", () {
      expect(TextFieldValidation.velocity("55"), null);
    });
  });
}
