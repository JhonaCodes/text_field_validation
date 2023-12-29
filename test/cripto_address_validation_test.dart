import 'package:test/test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main(){
  group("CRYPTO_ADDRESS_VALIDATION_TEST", () {
    /// Testing Bitcoin address validation using [TextFieldValidation.bitcoinAddress].
    test("bitcoin_address_empty_validation_test", () {
      expect(TextFieldValidation.bitcoinAddress(""), 'Bitcoin address is required');
    });

    test("bitcoin_address_invalid_test", () {
      expect(TextFieldValidation.bitcoinAddress("invalidBitcoinAddress"), 'Please enter a valid Bitcoin address');
    });

    test("bitcoin_address_valid_test", () {
      expect(TextFieldValidation.bitcoinAddress("3QCBtBm8oWAr7chAAprraV7rzp84cadvhF"), null);
    });

    /// Testing Ethereum address validation using [TextFieldValidation.ethereumAddress].
    test("ethereum_address_empty_validation_test", () {
      expect(TextFieldValidation.ethereumAddress(""), 'Ethereum address is required');
    });

    test("ethereum_address_invalid_test", () {
      expect(TextFieldValidation.ethereumAddress("invalidEthereumAddress"), 'Please enter a valid Ethereum address');
    });

    test("ethereum_address_valid_test", () {
      expect(TextFieldValidation.ethereumAddress("0xd87A780947eE3c0659877dBA7B01B10295D726a4"), null);
    });

    /// Testing Ripple address validation using [TextFieldValidation.rippleAddress].
    test("ripple_address_empty_validation_test", () {
      expect(TextFieldValidation.rippleAddress(""), 'Ripple address is required');
    });

    test("ripple_address_invalid_test", () {
      expect(TextFieldValidation.rippleAddress("invalidRippleAddress"), 'Please enter a valid Ripple address');
    });

    /// Testing Litecoin address validation using [TextFieldValidation.litecoinAddress].
    test("litecoin_address_empty_validation_test", () {
      expect(TextFieldValidation.litecoinAddress(""), 'Litecoin address is required');
    });

    test("litecoin_address_invalid_test", () {
      expect(TextFieldValidation.litecoinAddress("invalidLitecoinAddress"), 'Please enter a valid Litecoin address');
    });


    /// Testing Algorand address validation using [TextFieldValidation.algorandAddress].
    test("algorand_address_empty_validation_test", () {
      expect(TextFieldValidation.algorandAddress(""), 'Algorand address is required');
    });

    test("algorand_address_invalid_test", () {
      expect(TextFieldValidation.algorandAddress("invalidAlgorandAddress"), 'Please enter a valid Algorand address');
    });


    /// Testing Tether address validation using [TextFieldValidation.tetherAddress].
    test("tether_address_empty_validation_test", () {
      expect(TextFieldValidation.tetherAddress(""), 'Tether address is required');
    });

    test("tether_address_invalid_test", () {
      expect(TextFieldValidation.tetherAddress("invalidTetherAddress"), 'Please enter a valid Tether address');
    });


    /// Testing Monero address validation using [TextFieldValidation.moneroAddress].
    test("monero_address_empty_validation_test", () {
      expect(TextFieldValidation.moneroAddress(""), 'Monero address is required');
    });

    test("monero_address_invalid_test", () {
      expect(TextFieldValidation.moneroAddress("invalidMoneroAddress"), 'Please enter a valid Monero address');
    });

  });
}