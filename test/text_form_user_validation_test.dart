import 'package:test/test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main() {
  group("TEXT_FORM_USER_VALIDATION_TEST", () {
    /// Test: Email validation for TextFormField [TextFieldValidation.email]
    test("email_empty_validation_test", () {
      /// Verifies that the function returns the correct message when the email is empty.
      expect(TextFieldValidation.email(""), 'Email is required');
    });

    test("email_bad_validation_test", () {
      /// Verifies that the function returns the correct message when the email is not valid.
      expect(TextFieldValidation.email("jhonacode@code.d"),
          'Please enter a valid email');
    });

    test("email_correct_validation_test", () {
      /// Verifies that the function does not return any error message when the email is valid.
      expect(TextFieldValidation.email("jhonacode@code.dev"), null);
    });

    test("password_empty_validation_test", () {
      /// Verifies that the function returns the correct message when the password is empty.
      expect(TextFieldValidation.password(""), 'Password is required');
    });

    test("password_length_validation_test", () {
      /// Verifies that the function returns the correct message when the password does not meet the minimum length requirement.
      expect(TextFieldValidation.password("abcde"),
          'Please enter a valid password');
    });

    test("password_valid_test", () {
      /// Verifies that the function does not return any error message when the password is valid.
      expect(TextFieldValidation.password("1ww_- @qe2"), null);
    });

    test("strict_password_empty_validation_test", () {
      /// Verifies that the function returns the correct message when the strict password is empty.
      expect(TextFieldValidation.strictPassword(""), 'Password is required');
    });

    test("strict_password_invalid_test", () {
      /// Verifies that the function returns the correct message when the strict password is not valid.
      expect(TextFieldValidation.strictPassword("weakpassword"),
          'Please enter a valid password');
    });

    test("strict_password_valid_test", () {
      /// Verifies that the function does not return any error message when the strict password is valid.
      expect(TextFieldValidation.strictPassword("StrongPassword1\$"), null);
    });

    test('Year Validation', () {
      expect(TextFieldValidation.year('2023'), null);
      expect(TextFieldValidation.year('abcd'), 'Please enter a valid year');
      expect(TextFieldValidation.year(''), 'Year is required');
    });

    test('Phone Number and Indicative Validation', () {
      expect(TextFieldValidation.phoneNumberAndIndicative('+1234567890'), null);
      expect(TextFieldValidation.phoneNumberAndIndicative('12345'),
          'Please enter a valid phone number');
      expect(TextFieldValidation.phoneNumberAndIndicative(''),
          'Phone number is required');
    });

    test('Date Born (YYYY/MM/DD) Validation', () {
      expect(TextFieldValidation.dateBornYYYYMMDD('1990/12/31'), null);
      expect(TextFieldValidation.dateBornYYYYMMDD('1990-12-31'),
          'Please enter a valid date born (yyyy/mm/dd)');
      expect(TextFieldValidation.dateBornYYYYMMDD(''),
          'Date born (YYYY/MM/DD) is required');
    });

    test('Date Born (MM/DD/YYYY) Validation', () {
      expect(TextFieldValidation.validateDateBornMMDDYY('12/31/1990'), null);
      expect(TextFieldValidation.validateDateBornMMDDYY('12-31-1990'),
          'Please enter a valid date born (mm/dd/yyyy)');
      expect(TextFieldValidation.validateDateBornMMDDYY(''),
          'Date born (MM/DD/YYYY) is required');
    });

    test('Date Born (DD/MM/YYYY) Validation', () {
      expect(TextFieldValidation.dateBornDDMMYYYY('31/12/1990'), null);
      expect(TextFieldValidation.dateBornDDMMYYYY('31-12-1990'),
          'Please enter a valid date born (dd/mm/yyyy)');
      expect(TextFieldValidation.dateBornDDMMYYYY(''),
          'Date born (DD/MM/YYYY) is required');
    });

    test('Date Born (YYYY-MM-DD) Validation', () {
      expect(TextFieldValidation.dateBornYYYYMMDD2('1990-12-31'), null);
      expect(TextFieldValidation.dateBornYYYYMMDD2('1990/12/31'),
          'Please enter a valid date born (yyyy-mm-dd)');
      expect(TextFieldValidation.dateBornYYYYMMDD2(''),
          'Date born (YYYY-MM-DD) is required');
    });

    test('Date Born (DD-MM-YYYY) Validation', () {
      expect(TextFieldValidation.dateBornDDMMYYYY2('31-12-1990'), null);
      expect(TextFieldValidation.dateBornDDMMYYYY2('31/12/1990'),
          'Please enter a valid date born (dd-mm-yyyy)');
      expect(TextFieldValidation.dateBornDDMMYYYY2(''),
          'Date born (DD-MM-YYYY) is required');
    });

    test('Date Born (MM-DD-YYYY) Validation', () {
      expect(TextFieldValidation.dateBornMMDDYYYY('12-31-1990'), null);
      expect(TextFieldValidation.dateBornMMDDYYYY('12/31/1990'),
          'Please enter a valid date born (mm-dd-yyyy)');
      expect(TextFieldValidation.dateBornMMDDYYYY(''),
          'Date born (MM-DD-YYYY) is required');
    });

    test('Date Born (YYYY.MM.DD) Validation', () {
      expect(TextFieldValidation.dateBornYYYYMMDD3('1990.12.31'), null);
      expect(TextFieldValidation.dateBornYYYYMMDD3('1990/12/31'),
          'Please enter a valid date born (yyyy.mm.dd)');
      expect(TextFieldValidation.dateBornYYYYMMDD3(''),
          'Date born (YYYY.MM.DD) is required');
    });

    test('Date Born (DD.MM.YYYY) Validation', () {
      expect(TextFieldValidation.dateBornDDMMYYYY3('31.12.1990'), null);
      expect(TextFieldValidation.dateBornDDMMYYYY3('31/12/1990'),
          'Please enter a valid date born (dd.mm.yyyy)');
      expect(TextFieldValidation.dateBornDDMMYYYY3(''),
          'Date born (DD.MM.YYYY) is required');
    });

    test('Date Born (MM.DD.YYYY) Validation', () {
      expect(TextFieldValidation.dateBornMMDDYYYY2('12.31.1990'), null);
      expect(TextFieldValidation.dateBornMMDDYYYY2('12/31/1990'),
          'Please enter a valid date born (mm.dd.yyyy)');
      expect(TextFieldValidation.dateBornMMDDYYYY2(''),
          'Date born (MM.DD.YYYY) is required');
    });

    test('Date Born (YYYY MM DD) Validation', () {
      expect(TextFieldValidation.dateBornYYYYMMDD4('1990 12 31'), null);
      expect(TextFieldValidation.dateBornYYYYMMDD4('1990/12/31'),
          'Please enter a valid date born (yyyy mm dd)');
      expect(TextFieldValidation.dateBornYYYYMMDD4(''),
          'Date born (YYYY MM DD) is required');
    });

    test('Date Born (DD MM YYYY) Validation', () {
      expect(TextFieldValidation.dateBornDDMMYYYY4('31 12 1990'), null);
      expect(TextFieldValidation.dateBornDDMMYYYY4('31/12/1990'),
          'Please enter a valid date born (dd mm yyyy)');
      expect(TextFieldValidation.dateBornDDMMYYYY4(''),
          'Date born (DD MM YYYY) is required');
    });

    test('Date Born (MM DD YYYY) Validation', () {
      expect(TextFieldValidation.dateBornMMDDYYYY3('12 31 1990'), null);
      expect(TextFieldValidation.dateBornMMDDYYYY3('12/31/1990'),
          'Please enter a valid date born (mm dd yyyy)');
      expect(TextFieldValidation.dateBornMMDDYYYY3(''),
          'Date born (MM DD YYYY) is required');
    });
  });

  group('TEXT_FORM_NAME_VALIDATION_TEST', () {
    test("valid_name_standard", () {
      expect(TextFieldValidation.name("John Doe O'connor"), null);
    });

    test("valid_name_accented", () {
      expect(TextFieldValidation.name("Ana María Pérez"), null);
    });

    test("valid_name_special_chars", () {
      expect(TextFieldValidation.name("José Miguel O'Neill"), null);
    });

    test("valid_name_hyphenated", () {
      expect(TextFieldValidation.name("Jean-Luc Picard"), null);
    });

    test("valid_name_hyphen_accented", () {
      expect(TextFieldValidation.name("María-José López"), null);
    });

    test("valid_name_apostrophe", () {
      expect(TextFieldValidation.name("D'Artagnan"), null);
    });

    test("valid_name_single_apostrophe", () {
      expect(TextFieldValidation.name("O'Neill"), null);
    });

    test("valid_name_complex_apostrophe", () {
      expect(TextFieldValidation.name("Sean O'Conor"), null);
    });

    test("invalid_name_with_numbers", () {
      expect(TextFieldValidation.name("John123"), isNot(null));
    });

    test("invalid_name_with_symbols", () {
      expect(TextFieldValidation.name("!@#\$%^&*()"), isNot(null));
    });

    test("invalid_name_combined_numbers", () {
      expect(TextFieldValidation.name("Ana María Pérez123"), isNot(null));
    });

    test("invalid_name_empty", () {
      expect(TextFieldValidation.name(""), isNot(null));
    });

    test("valid_name_double_hyphen", () {
      expect(TextFieldValidation.name("Anne-Marie"), null);
    });

    test("valid_name_diacritic", () {
      expect(TextFieldValidation.name("Charlotte Brontë"), null);
    });

    test("valid_name_diacritic_accent", () {
      expect(TextFieldValidation.name("René Descartes"), null);
    });

    test("valid_name_multiple_diacritics", () {
      expect(TextFieldValidation.name("François-Marie Arouet"), null);
    });

    test("valid_name_multiple_accented", () {
      expect(TextFieldValidation.name("Gabriel García Márquez"), null);
    });

    test("valid_name_diacritic_only", () {
      expect(TextFieldValidation.name("Hélène"), null);
    });

    test("valid_name_diacritic_caron", () {
      expect(TextFieldValidation.name("Jiří"), null);
    });
  });

}
