import 'package:test/test.dart';
import 'package:text_field_validation/src/entity/text_validate_response.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main(){
  group("ADDRESS_VALIDATION_TEST", () {

    test('Social Security Number Validation', () {
      expect(TextFieldValidation.socialSecurityNumber('123-45-6789A'), null);
      expect(TextFieldValidation.socialSecurityNumber('123-45-67890'), 'Please enter a valid social security number');
      expect(TextFieldValidation.socialSecurityNumber(''), 'Social security number is required');
    });

    test("phone_empty_validation_test", () {
      expect(TextFieldValidation.phone("", textResponse: const TextValidateResponse(empty: 'Custom Phone Required', invalid: 'Custom Phone Invalid')), 'Custom Phone Required');
    });

    test("phone_length_validation_test", () {
      expect(TextFieldValidation.phone("123456789", textResponse: const TextValidateResponse(empty: 'Custom Phone Required', invalid: 'Custom Phone Invalid')), 'Custom Phone Invalid');
    });

    test("phone_valid_test", () {
      expect(TextFieldValidation.phone("1234567890", textResponse: const TextValidateResponse(empty: 'Custom Phone Required', invalid: 'Custom Phone Invalid')), null);
    });

    test("address_empty_validation_test", () {
      expect(TextFieldValidation.address("", textResponse: const TextValidateResponse(empty: 'Custom Address Required', invalid: 'Custom Address Invalid')), 'Custom Address Required');
    });

    test("address_invalid_test", () {
      expect(TextFieldValidation.address("%%!\$#", textResponse: const TextValidateResponse(empty: 'Custom Address Required', invalid: 'Custom Address Invalid')), 'Custom Address Invalid');
    });

    test("address_valid_test", () {
      expect(TextFieldValidation.address("123 Main St", textResponse: const TextValidateResponse(empty: 'Custom Address Required', invalid: 'Custom Address Invalid')), null);
    });

    test("city_empty_validation_test", () {
      expect(TextFieldValidation.city("", textResponse: const TextValidateResponse(empty: 'Custom City Required', invalid: 'Custom City Invalid')), 'Custom City Required');
    });

    test("city_invalid_test", () {
      expect(TextFieldValidation.city("123", textResponse: const TextValidateResponse(empty: 'Custom City Required', invalid: 'Custom City Invalid')), 'Custom City Invalid');
    });

    test("city_valid_test", () {
      expect(TextFieldValidation.city("New York", textResponse: const TextValidateResponse(empty: 'Custom City Required', invalid: 'Custom City Invalid')), null);
    });

    test("state_empty_validation_test", () {
      expect(TextFieldValidation.state("", textResponse: const TextValidateResponse(empty: 'Custom State Required', invalid: 'Custom State Invalid')), 'Custom State Required');
    });

    test("state_invalid_test", () {
      expect(TextFieldValidation.state("12", textResponse: const TextValidateResponse(empty: 'Custom State Required', invalid: 'Custom State Invalid')), 'Custom State Invalid');
    });

    test("state_valid_test", () {
      expect(TextFieldValidation.state("CA", textResponse: const TextValidateResponse(empty: 'Custom State Required', invalid: 'Custom State Invalid')), null);
    });

    test("zip_empty_validation_test", () {
      expect(TextFieldValidation.zip("", textResponse: const TextValidateResponse(empty: 'Custom Zip Required', invalid: 'Custom Zip Invalid')), 'Custom Zip Required');
    });

    test("zip_invalid_test", () {
      expect(TextFieldValidation.zip("123", textResponse: const TextValidateResponse(empty: 'Custom Zip Required', invalid: 'Custom Zip Invalid')), 'Custom Zip Invalid');
    });

    test("zip_valid_test", () {
      expect(TextFieldValidation.zip("12345", textResponse: const TextValidateResponse(empty: 'Custom Zip Required', invalid: 'Custom Zip Invalid')), null);
    });

    test("country_empty_validation_test", () {
      expect(TextFieldValidation.country("", textResponse: const TextValidateResponse(empty: 'Custom Country Required', invalid: 'Custom Country Invalid')), 'Custom Country Required');
    });

    test("country_invalid_test", () {
      expect(TextFieldValidation.country("12", textResponse: const TextValidateResponse(empty: 'Custom Country Required', invalid: 'Custom Country Invalid')), 'Custom Country Invalid');
    });

    test("country_valid_test", () {
      expect(TextFieldValidation.country("USA", textResponse: const TextValidateResponse(empty: 'Custom Country Required', invalid: 'Custom Country Invalid')), null);
    });

  });
}