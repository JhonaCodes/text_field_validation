import 'package:test/test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main() {
  group("INTERNET_VALIDATION_TEST", () {
    test('Hexadecimal Color Validation', () {
      expect(TextFieldValidation.hexadecimalColor('#ffffff'), null);
      expect(TextFieldValidation.hexadecimalColor('#gggggg'),
          'Please enter a valid hexadecimal color');
      expect(TextFieldValidation.hexadecimalColor(''),
          'Hexadecimal color is required');
    });

    test('IPv4 Validation', () {
      expect(TextFieldValidation.IPv4('192.168.0.1'), null);
      expect(TextFieldValidation.IPv4('300.500.700.900'),
          'Please enter a valid ipv4 address');
      expect(TextFieldValidation.IPv4(''), 'IPv4 address is required');
    });

    test('IPv6 Validation', () {
      expect(
          TextFieldValidation.IPv6('2001:0db8:85a3:0000:0000:8a2e:0370:7334'),
          null);
      expect(TextFieldValidation.IPv6('2001:0db8:85a3:0000:0000:8a2e:0370:'),
          'Please enter a valid ipv6 address');
      expect(TextFieldValidation.IPv6(''), 'IPv6 address is required');
    });

    test('ISBN Validation', () {
      expect(TextFieldValidation.validateISBN('978-3-16-148410-0'), null);
      expect(TextFieldValidation.validateISBN('12345'),
          'Please enter a valid isbn');
      expect(TextFieldValidation.validateISBN(''), 'ISBN is required');
    });

    test('ISIN Validation', () {
      expect(TextFieldValidation.iSin('US0378331005'), null);
      expect(TextFieldValidation.iSin('12345'), 'Please enter a valid isin');
      expect(TextFieldValidation.iSin(''), 'ISIN is required');
    });

    test('BIC Validation', () {
      expect(TextFieldValidation.bic('GENODEM1GLS'), null);
      expect(TextFieldValidation.bic('12345'), 'Please enter a valid bic');
      expect(TextFieldValidation.bic(''), 'BIC is required');
    });

    test('DNS Validation', () {
      expect(TextFieldValidation.dns('example.com'), null);
      expect(
          TextFieldValidation.dns('example..com'), 'Please enter a valid dns');
      expect(TextFieldValidation.dns(''), 'DNS is required');
    });

    test('MD5 Validation', () {
      expect(TextFieldValidation.md5('d41d8cd98f00b204e9800998ecf8427e'), null);
      expect(TextFieldValidation.md5('invalidmd5'), 'Please enter a valid md5');
      expect(TextFieldValidation.md5(''), 'MD5 is required');
    });

    test('SHA1 Validation', () {
      expect(
          TextFieldValidation.sha1('2ef7bde608ce5404e97d5f042f95f89f1c232871'),
          null);
      expect(
          TextFieldValidation.sha1('invalidsha1'), 'Please enter a valid sha1');
      expect(TextFieldValidation.sha1(''), 'SHA1 is required');
    });
  });
}
