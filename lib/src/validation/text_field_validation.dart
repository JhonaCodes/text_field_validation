import 'package:text_field_validation/src/entity/text_validate_response.dart';
import 'package:text_field_validation/src/regular/regular_expression.dart';

typedef _ValidationFunction = bool Function(String);

class TextFieldValidation {
  /// Validate mail
  static String? email(String? email, {TextValidateResponse? textResponse}) {
    return _validateInput(
        email, RegularExpression.validateEmail, textResponse, 'Email');
  }

  /// Validate password
  static String? password(String? password,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        password, RegularExpression.validatePassword, textResponse, 'Password');
  }

  /// Validate password on strict mode
  static String? strictPassword(String password,
      {TextValidateResponse? textResponse}) {
    return _validateInput(password, RegularExpression.validateStrictPassword,
        textResponse, 'Password');
  }

  /// Validate name
  static String? name(String name, {TextValidateResponse? textResponse}) {
    return _validateInput(
        name, RegularExpression.validateName, textResponse, 'Name');
  }

  /// Validate WithoutNumbers
  static String? withoutNumbers(String text,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        text, RegularExpression.validateWithoutNumbers, textResponse, 'Text');
  }

  /// Validate phone
  static String? phone(String phone, {TextValidateResponse? textResponse}) {
    return _validateInput(
        phone, RegularExpression.validatePhone, textResponse, 'Phone');
  }

  /// Validate address
  static String? address(String address, {TextValidateResponse? textResponse}) {
    return _validateInput(
        address, RegularExpression.validateAddress, textResponse, 'Address');
  }

  static String? city(String? city, {TextValidateResponse? textResponse}) {
    return _validateInput(
        city, RegularExpression.validateCity, textResponse, 'City');
  }

  static String? state(String? state, {TextValidateResponse? textResponse}) {
    return _validateInput(
        state, RegularExpression.validateState, textResponse, 'State');
  }

  static String? zip(String? zip, {TextValidateResponse? textResponse}) {
    return _validateInput(
        zip, RegularExpression.validateZip, textResponse, 'Zip');
  }

  static String? country(String? country,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        country, RegularExpression.validateCountry, textResponse, 'Country');
  }

  static String? cardNumber(String? cardNumber,
      {TextValidateResponse? textResponse}) {
    return _validateInput(cardNumber, RegularExpression.validateCardNumber,
        textResponse, 'Card number');
  }

  static String? cardHolder(String? cardHolder,
      {TextValidateResponse? textResponse}) {
    return _validateInput(cardHolder, RegularExpression.validateCardHolder,
        textResponse, 'Card holder');
  }

  static String? cardDate(String? cardDate,
      {TextValidateResponse? textResponse}) {
    return _validateInput(cardDate, RegularExpression.validateCardDate,
        textResponse, 'Card date');
  }

  static String? cardCvv(String? cardCvv,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        cardCvv, RegularExpression.validateCardCvv, textResponse, 'Card cvv');
  }

  static String? cardZip(String? cardZip,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        cardZip, RegularExpression.validateCardZip, textResponse, 'Card zip');
  }

  static String? cardType(String? cardType,
      {TextValidateResponse? textResponse}) {
    return _validateInput(cardType, RegularExpression.validateCardType,
        textResponse, 'Card type');
  }

  static String? cardName(String? cardName,
      {TextValidateResponse? textResponse}) {
    return _validateInput(cardName, RegularExpression.validateCardName,
        textResponse, 'Card name');
  }

  static String? cardAddress(String? cardAddress,
      {TextValidateResponse? textResponse}) {
    return _validateInput(cardAddress, RegularExpression.validateCardAddress,
        textResponse, 'Card address');
  }

  static String? cardCity(String? cardCity,
      {TextValidateResponse? textResponse}) {
    return _validateInput(cardCity, RegularExpression.validateCardCity,
        textResponse, 'Card city');
  }

  /// Validate card state
  static String? cardState(String cardState,
      {TextValidateResponse? textResponse}) {
    return _validateInput(cardState, RegularExpression.validateCardState,
        textResponse, 'Card state');
  }

  /// Validate card country
  static String? cardCountry(String cardCountry,
      {TextValidateResponse? textResponse}) {
    return _validateInput(cardCountry, RegularExpression.validateCardCountry,
        textResponse, 'Card country');
  }

  /// Validate date born (format MM.DD.YYYY)
  static String? bornMMDDYYYY2(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornMMDDYYYY2,
        textResponse, 'Date born');
  }

  /// Validate date born (format YYYY.MM.DD)
  static String? bornYYYYMMMDD3(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornYYYYMMDD3,
        textResponse, 'Date born');
  }

  /// Validate date born (format YYYY MM DD)
  static String? bornYYYYMMMDD4(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornYYYYMMDD4,
        textResponse, 'Date born');
  }

  /// Validate Bitcoin address.
  static String? bitcoinAddress(String bitcoinAddress,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        bitcoinAddress,
        RegularExpression.validateBitcoinAddress,
        textResponse,
        'Bitcoin address');
  }

  /// Validate Ethereum address.
  static String? ethereumAddress(String ethereumAddress,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        ethereumAddress,
        RegularExpression.validateEthereumAddress,
        textResponse,
        'Ethereum address');
  }

  /// Validate Ripple address.
  static String? rippleAddress(String rippleAddress,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        rippleAddress,
        RegularExpression.validateRippleAddress,
        textResponse,
        'Ripple address');
  }

  /// Validate Litecoin address.
  static String? litecoinAddress(String litecoinAddress,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        litecoinAddress,
        RegularExpression.validateLiteCoinAddress,
        textResponse,
        'Litecoin address');
  }

  /// Validate Algorand address.
  static String? algorandAddress(String algorandAddress,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        algorandAddress,
        RegularExpression.validateAlgoRandAddress,
        textResponse,
        'Algorand address');
  }

  /// Validate Tether address.
  static String? tetherAddress(String tetherAddress,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        tetherAddress,
        RegularExpression.validateTetherAddress,
        textResponse,
        'Tether address');
  }

  /// Validate Monero address.
  static String? moneroAddress(String moneroAddress,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        moneroAddress,
        RegularExpression.validateMoneroAddress,
        textResponse,
        'Monero address');
  }

  /// Validate IBAN.
  static String? iban(String iban, {TextValidateResponse? textResponse}) {
    return _validateInput(
        iban, RegularExpression.validateIBAN, textResponse, 'IBAN');
  }

  /// Validate ISRC.
  static String? isrc(String isrc, {TextValidateResponse? textResponse}) {
    return _validateInput(
        isrc, RegularExpression.validateISRC, textResponse, 'ISRC');
  }

  /// Validate ISWC.
  static String? iswc(String iswc, {TextValidateResponse? textResponse}) {
    return _validateInput(
        iswc, RegularExpression.validateISWC, textResponse, 'ISWC');
  }

  /// Validate YouTube.
  static String? youTube(String youTube, {TextValidateResponse? textResponse}) {
    return _validateInput(youTube, RegularExpression.validateYouTube,
        textResponse, 'YouTube link');
  }

  /// Validate QR.
  static String? qr(String qr, {TextValidateResponse? textResponse}) {
    return _validateInput(
        qr, RegularExpression.validateQR, textResponse, 'QR code link');
  }

  /// Validate Google Play.
  static String? googlePlay(String googlePlay,
      {TextValidateResponse? textResponse}) {
    return _validateInput(googlePlay, RegularExpression.validateGooglePlay,
        textResponse, 'Google Play link');
  }

  /// Validate Google Drive.
  static String? googleDrive(String googleDrive,
      {TextValidateResponse? textResponse}) {
    return _validateInput(googleDrive, RegularExpression.validateGoogleDrive,
        textResponse, 'Google Drive link');
  }

  /// Validate Google Maps.
  static String? googleMaps(String googleMaps,
      {TextValidateResponse? textResponse}) {
    return _validateInput(googleMaps, RegularExpression.validateGoogleMaps,
        textResponse, 'Google Maps link');
  }

  /// Validate Google Calendar.
  static String? googleCalendar(String googleCalendar,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        googleCalendar,
        RegularExpression.validateGoogleCalendar,
        textResponse,
        'Google Calendar link');
  }

  /// Validate Google Mail.
  static String? googleMail(String googleMail,
      {TextValidateResponse? textResponse}) {
    return _validateInput(googleMail, RegularExpression.validateGoogleMail,
        textResponse, 'Google Mail link');
  }

  /// Validate Google Account.
  static String? googleAccount(String googleAccount,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        googleAccount,
        RegularExpression.validateGoogleAccount,
        textResponse,
        'Google Account link');
  }

  /// Validate Google Hangouts.
  static String? googleHangouts(String googleHangouts,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        googleHangouts,
        RegularExpression.validateGoogleHangouts,
        textResponse,
        'Google Hangouts link');
  }

  /// Validate Google Classroom.
  static String? googleClassroom(String googleClassroom,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        googleClassroom,
        RegularExpression.validateGoogleClassroom,
        textResponse,
        'Google Classroom link');
  }

  /// Validate Google Docs.
  static String? googleDocs(String googleDocs,
      {TextValidateResponse? textResponse}) {
    return _validateInput(googleDocs, RegularExpression.validateGoogleDocs,
        textResponse, 'Google Docs link');
  }

  /// Validate Google Forms URL.
  static String? googleForms(String googleForms,
      {TextValidateResponse? textResponse}) {
    return _validateInput(googleForms, RegularExpression.validateGoogleForms,
        textResponse, 'Google Forms URL');
  }

  /// Validate Google Sheets URL.
  static String? googleSheets(String googleSheets,
      {TextValidateResponse? textResponse}) {
    return _validateInput(googleSheets, RegularExpression.validateGoogleSheets,
        textResponse, 'Google Sheets URL');
  }

  /// Validate Google Slides URL.
  static String? googleSlides(String googleSlides,
      {TextValidateResponse? textResponse}) {
    return _validateInput(googleSlides, RegularExpression.validateGoogleSlides,
        textResponse, 'Google Slides URL');
  }

  /// Validate Google Drawings URL.
  static String? googleDrawings(String googleDrawings,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        googleDrawings,
        RegularExpression.validateGoogleDrawings,
        textResponse,
        'Google Drawings URL');
  }

  /// Validate Google Sites URL.
  static String? googleSites(String googleSites,
      {TextValidateResponse? textResponse}) {
    return _validateInput(googleSites, RegularExpression.validateGoogleSites,
        textResponse, 'Google Sites URL');
  }

  /// Validate Google Keep URL.
  static String? validateGoogleKeep(String googleKeep,
      {TextValidateResponse? textResponse}) {
    return _validateInput(googleKeep, RegularExpression.validateGoogleKeep,
        textResponse, 'Google Keep URL');
  }

  /// Validate LinkedIn URL.
  static String? linkedin(String linkedin,
      {TextValidateResponse? textResponse}) {
    return _validateInput(linkedin, RegularExpression.validateLinkedin,
        textResponse, 'LinkedIn URL');
  }

  /// Validate Facebook URL.
  static String? facebook(String facebook,
      {TextValidateResponse? textResponse}) {
    return _validateInput(facebook, RegularExpression.validateFacebook,
        textResponse, 'Facebook URL');
  }

  /// Validate Twitter URL.
  static String? twitter(String twitter, {TextValidateResponse? textResponse}) {
    return _validateInput(twitter, RegularExpression.validateTwitter,
        textResponse, 'Twitter URL');
  }

  /// Validate Instagram URL.
  static String? instagram(String instagram,
      {TextValidateResponse? textResponse}) {
    return _validateInput(instagram, RegularExpression.validateInstagram,
        textResponse, 'Instagram URL');
  }

  /// Validate Pinterest URL.
  static String? pinterest(String pinterest,
      {TextValidateResponse? textResponse}) {
    return _validateInput(pinterest, RegularExpression.validatePinterest,
        textResponse, 'Pinterest URL');
  }

  /// Validate Tumblr URL.
  static String? tumblr(String tumblr, {TextValidateResponse? textResponse}) {
    return _validateInput(
        tumblr, RegularExpression.validateTumblr, textResponse, 'Tumblr URL');
  }

  /// Validate Snapchat URL.
  static String? snapchat(String snapchat,
      {TextValidateResponse? textResponse}) {
    return _validateInput(snapchat, RegularExpression.validateSnapchat,
        textResponse, 'Snapchat URL');
  }

  /// Validate Reddit URL.
  static String? reddit(String reddit, {TextValidateResponse? textResponse}) {
    return _validateInput(
        reddit, RegularExpression.validateReddit, textResponse, 'Reddit URL');
  }

  /// Validate GitHub URL.
  static String? gitHub(String gitHub, {TextValidateResponse? textResponse}) {
    return _validateInput(
        gitHub, RegularExpression.validateGitHub, textResponse, 'GitHub URL');
  }

  /// Validate GitLab URL.
  static String? gitLab(String gitLab, {TextValidateResponse? textResponse}) {
    return _validateInput(
        gitLab, RegularExpression.validateGitLab, textResponse, 'GitLab URL');
  }

  /// Validate Captcha.
  static String? captcha(String captcha, {TextValidateResponse? textResponse}) {
    return _validateInput(
        captcha, RegularExpression.validateCaptcha, textResponse, 'Captcha');
  }

  /// Validate weights.
  static String? weights(String weights, {TextValidateResponse? textResponse}) {
    return _validateInput(
        weights, RegularExpression.validateWeights, textResponse, 'Weights');
  }

  /// Validate height.
  static String? height(String height, {TextValidateResponse? textResponse}) {
    return _validateInput(
        height, RegularExpression.validateHeight, textResponse, 'Height');
  }

  /// Validate age.
  static String? age(String age, {TextValidateResponse? textResponse}) {
    return _validateInput(
        age, RegularExpression.validateAge, textResponse, 'Age');
  }

  /// Validate date.
  static String? date(String date, {TextValidateResponse? textResponse}) {
    return _validateInput(
        date, RegularExpression.validateDate, textResponse, 'Date');
  }

  /// Validate number.
  static String? number(String number, {TextValidateResponse? textResponse}) {
    return _validateInput(
        number, RegularExpression.validateNumber, textResponse, 'Number');
  }

  /// Validate alphanumeric.
  static String? alphanumeric(String alphanumeric,
      {TextValidateResponse? textResponse}) {
    return _validateInput(alphanumeric, RegularExpression.validateAlphanumeric,
        textResponse, 'Alphanumeric');
  }

  /// Validate alphanumeric with spaces.
  static String? alphanumericWithSpaces(String alphanumericWithSpaces,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        alphanumericWithSpaces,
        RegularExpression.validateAlphanumericWithSpaces,
        textResponse,
        'Alphanumeric with spaces');
  }

  /// Validate alphanumeric with spaces and punctuation.
  static String? alphanumericWithSpacesAndPunctuation(
      String alphanumericWithSpacesAndPunctuation,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        alphanumericWithSpacesAndPunctuation,
        RegularExpression.validateAlphanumericWithSpacesAndPunctuation,
        textResponse,
        'Alphanumeric with spaces and punctuation');
  }

  /// Validate Velocity.
  static String? velocity(String velocity,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        velocity, RegularExpression.validateVelocity, textResponse, 'Velocity');
  }

  /// Validate IMEI.
  static String? validateIMEI(String imei,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        imei, RegularExpression.validateIMEI, textResponse, 'IMEI');
  }

  /// Validate MAC address.
  static String? mac(String macAddress, {TextValidateResponse? textResponse}) {
    return _validateInput(macAddress, RegularExpression.validateMACAddress,
        textResponse, 'MAC address');
  }

  /// Validate SSID.
  static String? ssid(String ssid, {TextValidateResponse? textResponse}) {
    return _validateInput(
        ssid, RegularExpression.validateSSID, textResponse, 'SSID');
  }

  /// Validate IP address.
  static String? ip(String ipAddress, {TextValidateResponse? textResponse}) {
    return _validateInput(ipAddress, RegularExpression.validateIPAddress,
        textResponse, 'IP address');
  }

  /// Validate port.
  static String? port(String port, {TextValidateResponse? textResponse}) {
    return _validateInput(
        port, RegularExpression.validatePort, textResponse, 'Port');
  }

  /// Validate port range.
  static String? portRange(String portRange,
      {TextValidateResponse? textResponse}) {
    return _validateInput(portRange, RegularExpression.validatePortRange,
        textResponse, 'Port range');
  }

  /// Validate year.
  static String? year(String year, {TextValidateResponse? textResponse}) {
    return _validateInput(
        year, RegularExpression.validateYear, textResponse, 'Year');
  }

  /// Validate phone number + indicative.
  static String? phoneNumberAndIndicative(String phoneNumber,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        phoneNumber,
        RegularExpression.validatePhoneNumberAndIndicative,
        textResponse,
        'Phone number');
  }

  /// Validate date born (format YYYY/MM/DD).
  static String? dateBornYYYYMMDD(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornYYYYMMDD,
        textResponse, 'Date born (YYYY/MM/DD)');
  }

  /// Validate date born (format MM/DD/YYYY).
  static String? validateDateBornMMDDYY(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornMMDDYY,
        textResponse, 'Date born (MM/DD/YYYY)');
  }

  /// Validate date born (format DD/MM/YYYY).
  static String? dateBornDDMMYYYY(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornDDMMYYYY,
        textResponse, 'Date born (DD/MM/YYYY)');
  }

  /// Validate date born (format YYYY-MM-DD).
  static String? dateBornYYYYMMDD2(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornYYYYMMDD2,
        textResponse, 'Date born (YYYY-MM-DD)');
  }

  /// Validate date born (format DD-MM-YYYY).
  static String? dateBornDDMMYYYY2(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornDDMMYYYY2,
        textResponse, 'Date born (DD-MM-YYYY)');
  }

  /// Validate date born (format MM-DD-YYYY).
  static String? dateBornMMDDYYYY(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornMMDDYYYY,
        textResponse, 'Date born (MM-DD-YYYY)');
  }

  /// Validate date born (format YYYY.MM.DD).
  static String? dateBornYYYYMMDD3(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornYYYYMMDD3,
        textResponse, 'Date born (YYYY.MM.DD)');
  }

  /// Validate date born (format DD.MM.YYYY).
  static String? dateBornDDMMYYYY3(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornDDMMYYYY3,
        textResponse, 'Date born (DD.MM.YYYY)');
  }

  /// Validate date born (format MM.DD.YYYY).
  static String? dateBornMMDDYYYY2(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornMMDDYYYY2,
        textResponse, 'Date born (MM.DD.YYYY)');
  }

  /// Validate date born (format YYYY MM DD).
  static String? dateBornYYYYMMDD4(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornYYYYMMDD4,
        textResponse, 'Date born (YYYY MM DD)');
  }

  /// Validate date born (format DD MM YYYY).
  static String? dateBornDDMMYYYY4(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornDDMMYYYY4,
        textResponse, 'Date born (DD MM YYYY)');
  }

  /// Validate date born (format MM DD YYYY).
  static String? dateBornMMDDYYYY3(String dateBorn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(dateBorn, RegularExpression.validateDateBornMMDDYYYY3,
        textResponse, 'Date born (MM DD YYYY)');
  }

  /// Validate social security number.
  static String? socialSecurityNumber(String? socialSecurityNumber,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        socialSecurityNumber,
        RegularExpression.validateSocialSecurityNumber,
        textResponse,
        'Social security number');
  }

  /// Validate URL.
  static String? url(String? url, {TextValidateResponse? textResponse}) {
    return _validateInput(
        url, RegularExpression.validateUrl, textResponse, 'URL');
  }

  /// Validate hexadecimal color.
  static String? hexadecimalColor(String hexadecimalColor,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        hexadecimalColor,
        RegularExpression.validateHexadecimalColor,
        textResponse,
        'Hexadecimal color');
  }

  /// Validate IPv4.
  static String? iPv4(String ipv4, {TextValidateResponse? textResponse}) {
    return _validateInput(
        ipv4, RegularExpression.validateIPv4, textResponse, 'IPv4 address');
  }

  /// Validate IPv6.
  static String? iPv6(String ipv6, {TextValidateResponse? textResponse}) {
    return _validateInput(
        ipv6, RegularExpression.validateIPv6, textResponse, 'IPv6 address');
  }

  /// Validate ISBN.
  static String? validateISBN(String isbn,
      {TextValidateResponse? textResponse}) {
    return _validateInput(
        isbn, RegularExpression.validateISBN, textResponse, 'ISBN');
  }

  /// Validate ISIN.
  static String? iSin(String isin, {TextValidateResponse? textResponse}) {
    return _validateInput(
        isin, RegularExpression.validateISIN, textResponse, 'ISIN');
  }

  /// Validate BIC.
  static String? bic(String bic, {TextValidateResponse? textResponse}) {
    return _validateInput(
        bic, RegularExpression.validateBIC, textResponse, 'BIC');
  }

  /// Validate DNS.
  static String? dns(String dns, {TextValidateResponse? textResponse}) {
    return _validateInput(
        dns, RegularExpression.validateDNS, textResponse, 'DNS');
  }

  /// Validate MD5.
  static String? md5(String md5, {TextValidateResponse? textResponse}) {
    return _validateInput(
        md5, RegularExpression.validateMD5, textResponse, 'MD5');
  }

  /// Validate SHA1.
  static String? sha1(String sha1, {TextValidateResponse? textResponse}) {
    return _validateInput(
        sha1, RegularExpression.validateSHA1, textResponse, 'SHA1');
  }

  static String? _validateInput(
      String? input,
      _ValidationFunction validationFunction,
      TextValidateResponse? textResponse,
      String typeValidation) {
    if (input == null || input.isEmpty) {
      return textResponse?.empty ?? '$typeValidation is required';
    }
    if (validationFunction(input)) {
      return textResponse?.invalid ??
          'Please enter a valid ${typeValidation.toLowerCase()}';
    }
    return null;
  }
}
