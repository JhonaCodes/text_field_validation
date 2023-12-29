import 'package:test/test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main(){
  group("CARD_VALIDATION_TEST", () {

    test("cardNumber_empty_validation_test", () {
      expect(TextFieldValidation.cardNumber(""), 'Card number is required');
    });

    test("cardNumber_invalid_test", () {
      expect(TextFieldValidation.cardNumber("1234-5678-9012-3456"), 'Please enter a valid card number');
    });

    test("cardNumber_valid_test", () {
      expect(TextFieldValidation.cardNumber("1234567890123456"), null);
    });

    test("cardHolder_empty_validation_test", () {
      expect(TextFieldValidation.cardHolder(""), 'Card holder is required');
    });

    test("cardHolder_invalid_test", () {
      expect(TextFieldValidation.cardHolder("123"), 'Please enter a valid card holder');
    });

    test("cardHolder_valid_test", () {
      expect(TextFieldValidation.cardHolder("John Doe"), null);
    });

    test("cardDate_empty_validation_test", () {
      expect(TextFieldValidation.cardDate(""), 'Card date is required');
    });

    test("cardDate_invalid_test", () {
      expect(TextFieldValidation.cardDate("02-23"), 'Please enter a valid card date');
    });

    test("cardDate_valid_test", () {
      expect(TextFieldValidation.cardDate("12/25"), null);
    });

    test("cardCvv_empty_validation_test", () {
      expect(TextFieldValidation.cardCvv(""), 'Card cvv is required');
    });

    test("cardCvv_invalid_test", () {
      expect(TextFieldValidation.cardCvv("1234a"), 'Please enter a valid card cvv');
    });

    test("cardCvv_valid_test", () {
      expect(TextFieldValidation.cardCvv("123"), null);
    });

    test("cardZip_empty_validation_test", () {
      expect(TextFieldValidation.cardZip(""), 'Card zip is required');
    });

    test("cardZip_invalid_test", () {
      expect(TextFieldValidation.cardZip("123"), 'Please enter a valid card zip');
    });

    test("cardZip_valid_test", () {
      expect(TextFieldValidation.cardZip("12345"), null);
    });

    test("cardType_empty_validation_test", () {
      expect(TextFieldValidation.cardType(""), 'Card type is required');
    });

    test("cardType_invalid_test", () {
      expect(TextFieldValidation.cardType("123"), 'Please enter a valid card type');
    });

    test("cardType_valid_test", () {
      expect(TextFieldValidation.cardType("Visa"), null);
    });

    test("cardName_empty_validation_test", () {
      expect(TextFieldValidation.cardName(""), 'Card name is required');
    });

    test("cardName_invalid_test", () {
      expect(TextFieldValidation.cardName("123"), 'Please enter a valid card name');
    });

    test("cardName_valid_test", () {
      expect(TextFieldValidation.cardName("John Doe"), null);
    });

    test("cardAddress_empty_validation_test", () {
      expect(TextFieldValidation.cardAddress(""), 'Card address is required');
    });

    test("cardAddress_invalid_test", () {
      expect(TextFieldValidation.cardAddress("%%!\$#"), 'Please enter a valid card address');
    });

    test("cardAddress_valid_test", () {
      expect(TextFieldValidation.cardAddress("123 Main St"), null);
    });

    test("cardCity_empty_validation_test", () {
      expect(TextFieldValidation.cardCity(""), 'Card city is required');
    });

    test("cardCity_invalid_test", () {
      expect(TextFieldValidation.cardCity("123"), 'Please enter a valid card city');
    });

    test("cardCity_valid_test", () {
      expect(TextFieldValidation.cardCity("New York"), null);
    });

    test("cardState_empty_validation_test", () {
      expect(TextFieldValidation.cardState(""), 'Card state is required');
    });

    test("cardState_invalid_test", () {
      expect(TextFieldValidation.cardState("12"), 'Please enter a valid card state');
    });

    test("cardState_valid_test", () {
      expect(TextFieldValidation.cardState("CA"), null);
    });

    test("cardCountry_empty_validation_test", () {
      expect(TextFieldValidation.cardCountry(""), 'Card country is required');
    });

    test("cardCountry_invalid_test", () {
      expect(TextFieldValidation.cardCountry("12"), 'Please enter a valid card country');
    });

    test("cardCountry_valid_test", () {
      expect(TextFieldValidation.cardCountry("USA"), null);
    });

  });
}