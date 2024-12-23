import 'package:flutter_test/flutter_test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main() {
  group("IDENTIFICATOR_VALIDATION_TEST", () {
    test('IMEI Validation', () {
      expect(TextFieldValidation.validateIMEI('123456789012345'), null);
      expect(TextFieldValidation.validateIMEI('12345678901234'),
          'Please enter a valid imei');
      expect(TextFieldValidation.validateIMEI(''), 'IMEI is required');
    });

    test('MAC Address Validation', () {
      expect(TextFieldValidation.mac('00:1A:2B:3C:4D:5E'), null);
      expect(TextFieldValidation.mac('00:1A:2B:3C:4D'),
          'Please enter a valid mac address');
      expect(TextFieldValidation.mac(''), 'MAC address is required');
    });

    test('SSID Validation', () {
      expect(TextFieldValidation.ssid('MyNetwork123'), null);
      expect(TextFieldValidation.ssid('MyNetwork@123'),
          'Please enter a valid ssid');
      expect(TextFieldValidation.ssid(''), 'SSID is required');
    });

    test('IP Address Validation', () {
      expect(TextFieldValidation.ip('192.168.0.1'), null);
      expect(TextFieldValidation.ip('300.500.700.900'),
          'Please enter a valid ip address');
      expect(TextFieldValidation.ip(''), 'IP address is required');
    });

    test('Port Validation', () {
      expect(TextFieldValidation.port('8080'), null);
      expect(TextFieldValidation.port('999990'), 'Please enter a valid port');
      expect(TextFieldValidation.port(''), 'Port is required');
    });

    test('Port Range Validation', () {
      expect(TextFieldValidation.portRange('8080-8090'), null);
      expect(TextFieldValidation.portRange('8080-'),
          'Please enter a valid port range');
      expect(TextFieldValidation.portRange(''), 'Port range is required');
    });
  });
}
