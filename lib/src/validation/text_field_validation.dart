import 'package:text_field_validation/src/entity/text_validate_response.dart';
import 'package:text_field_validation/src/regular/regular_expression.dart';

class TextFieldValidation {

  /// Validate mail
  static String? email(String email, {TextValidateResponse? textResponse}) {
    if (email.isEmpty) return  textResponse?.empty ?? 'Email is required';
    if (RegularExpression.validateEmail(email)) return  textResponse?.invalid ??'Please enter a valid email';
    return null;
  }

  /// Validate password
  static String? password(String password, {TextValidateResponse? textResponse}) {
    if (password.isEmpty) return  textResponse?.empty ?? 'Password is required';
    if (RegularExpression.validatePassword(password)) return  textResponse?.invalid ?? 'Password must be at least 6 characters';
    return null;
  }

  /// Validate password on strct mode
  static String? strictPassword(String password, {TextValidateResponse? textResponse}) {
    if (password.isEmpty) return textResponse?.empty ?? 'Password is required';
    if (RegularExpression.validateStrictPassword(password)) return textResponse?.invalid ?? 'Please enter a valid password';
    return null;
  }

  /// Validate name
  static String? name(String name, {TextValidateResponse? textResponse}) {
    if (name.isEmpty) return  textResponse?.empty ?? 'Name is required';
    if (RegularExpression.validateName(name)) return  textResponse?.invalid ?? 'Please enter a valid name';
    return null;
  }

  /// Validate phone
  static String? phone(String phone, {TextValidateResponse? textResponse}) {
    if (phone.isEmpty) return  textResponse?.empty ?? 'Phone is required';
    if (RegularExpression.validatePhone(phone)) return  textResponse?.invalid ?? 'Phone must be at least 10 characters';
    return null;
  }

  /// Validate address
  static String? address(String address, {TextValidateResponse? textResponse}) {
    if (address.isEmpty) return  textResponse?.empty ?? 'Address is required';
    if (RegularExpression.validateAddress(address)) return  textResponse?.invalid ?? 'Please enter a valid address';
    return null;
  }

  /// Validate city
  static String? city(String city, {TextValidateResponse? textResponse}) {
    if (city.isEmpty) return  textResponse?.empty ?? 'City is required';
    if (RegularExpression.validateCity(city)) return  textResponse?.invalid ?? 'Please enter a valid city';
    return null;
  }

  /// Validate state
  static String? state(String state, {TextValidateResponse? textResponse}) {
    if (state.isEmpty) return  textResponse?.empty ?? 'State is required';
    if (RegularExpression.validateState(state)) return  textResponse?.invalid ?? 'Please enter a valid state';
    return null;
  }

  /// Validate zip
  static String? zip(String zip, {TextValidateResponse? textResponse}) {
    if (zip.isEmpty) return  textResponse?.empty ?? 'Zip is required';
    if (RegularExpression.validateZip(zip)) return  textResponse?.invalid ?? 'Please enter a valid zip';
    return null;
  }



  /// Validate country
  static String? country(String country, {TextValidateResponse? textResponse}) {
    if (country.isEmpty) return  textResponse?.empty ?? 'Country is required';
    if (RegularExpression.validateCountry(country)) return  textResponse?.invalid ?? 'Please enter a valid country';
    return null;
  }

  /// Validate card number
  static String? cardNumber(String cardNumber, {TextValidateResponse? textResponse}) {
    if (cardNumber.isEmpty) return  textResponse?.empty ?? 'Card number is required';
    if (RegularExpression.validateCardNumber(cardNumber)) return  textResponse?.invalid ?? 'Please enter a valid card number';
    return null;
  }

  /// Validate card holder
  static String? cardHolder(String cardHolder, {TextValidateResponse? textResponse}) {
    if (cardHolder.isEmpty) return  textResponse?.empty ?? 'Card holder is required';
    if (RegularExpression.validateCardHolder(cardHolder)) return  textResponse?.invalid ?? 'Please enter a valid card holder';
    return null;
  }

  /// Validate card date
  static String? cardDate(String cardDate, {TextValidateResponse? textResponse}) {
    if (cardDate.isEmpty) return  textResponse?.empty ?? 'Card date is required';
    if (RegularExpression.validateCardDate(cardDate)) return  textResponse?.invalid ?? 'Please enter a valid card date';
    return null;
  }

  /// Validate card cvv
  static String? cardCvv(String cardCvv, {TextValidateResponse? textResponse}) {
    if (cardCvv.isEmpty) return  textResponse?.empty ?? 'Card cvv is required';
    if (RegularExpression.validateCardCvv(cardCvv)) return  textResponse?.invalid ?? 'Please enter a valid card cvv';
    return null;
  }

  /// Validate card zip
  static String? cardZip(String cardZip, {TextValidateResponse? textResponse}) {
    if (cardZip.isEmpty) return  textResponse?.empty ?? 'Card zip is required';
    if (RegularExpression.validateCardZip(cardZip)) return  textResponse?.invalid ?? 'Please enter a valid card zip';
    return null;
  }

  /// Validate card type
  static String? cardType(String cardType, {TextValidateResponse? textResponse}) {
    if (cardType.isEmpty) return  textResponse?.empty ?? 'Card type is required';
    if (RegularExpression.validateCardType(cardType)) return  textResponse?.invalid ?? 'Please enter a valid card type';
    return null;
  }

  /// Validate card name
  static String? cardName(String cardName, {TextValidateResponse? textResponse}) {
    if (cardName.isEmpty) return  textResponse?.empty ?? 'Card name is required';
    if (RegularExpression.validateCardName(cardName)) return  textResponse?.invalid ?? 'Please enter a valid card name';
    return null;
  }

  /// Validate card address
  static String? cardAddress(String cardAddress, {TextValidateResponse? textResponse}) {
    if (cardAddress.isEmpty) return  textResponse?.empty ?? 'Card address is required';
    if (RegularExpression.validateCardAddress(cardAddress)) return  textResponse?.invalid ?? 'Please enter a valid card address';
    return null;
  }

  /// Validate card city
  static String? cardCity(String cardCity, {TextValidateResponse? textResponse}) {
    if (cardCity.isEmpty) return  textResponse?.empty ?? 'Card city is required';
    if (RegularExpression.validateCardCity(cardCity)) return  textResponse?.invalid ?? 'Please enter a valid card city';
    return null;
  }

  /// Validate card state
  static String? cardState(String cardState, {TextValidateResponse? textResponse}) {
    if (cardState.isEmpty) return  textResponse?.empty ?? 'Card state is required';
    if (RegularExpression.validateCardState(cardState)) return  textResponse?.invalid ?? 'Please enter a valid card state';
    return null;
  }

  /// Validate card country
  static String? cardCountry(String cardCountry, {TextValidateResponse? textResponse}) {
    if (cardCountry.isEmpty) return  textResponse?.empty ?? 'Card country is required';
    if (RegularExpression.validateCardCountry(cardCountry)) return  textResponse?.invalid ?? 'Please enter a valid card country';
    return null;
  }


  /// Validate date born (format MM.DD.YYYY)
  static String? bornMMDDYYYY2(String dateBorn, {TextValidateResponse? textResponse}){
    if(dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if(RegularExpression.validateDateBornMMDDYYYY2(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born';
    return null;
  }

  /// Validate date born (format YYYY.MM.DD)
  static String? bornYYYYMMMDD3(String dateBorn, {TextValidateResponse? textResponse}){
    if(dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if(RegularExpression.validateDateBornYYYYMMDD3(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born';
    return null;
  }

  /// Validate date born (format YYYY MM DD)
  static String? bornYYYYMMMDD4(String dateBorn, {TextValidateResponse? textResponse}){
    if(dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if(RegularExpression.validateDateBornYYYYMMDD4(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born';
    return null;
  }



  /// Validate Bitcoin address.
  static String? bitcoinAddress(String bitcoinAddress, {TextValidateResponse? textResponse}) {
    if (bitcoinAddress.isEmpty) return textResponse?.empty ?? 'Bitcoin address is required';
    if (RegularExpression.validateBitcoinAddress(bitcoinAddress)) return textResponse?.invalid ?? 'Please enter a valid Bitcoin address';
    return null;
  }

  /// Validate Ethereum address.
  static String? ethereumAddress(String ethereumAddress, {TextValidateResponse? textResponse}) {
    if (ethereumAddress.isEmpty) return textResponse?.empty ?? 'Ethereum address is required';
    if (RegularExpression.validateEthereumAddress(ethereumAddress)) return textResponse?.invalid ?? 'Please enter a valid Ethereum address';
    return null;
  }

  /// Validate Ripple address.
  static String? rippleAddress(String rippleAddress, {TextValidateResponse? textResponse}) {
    if (rippleAddress.isEmpty) return textResponse?.empty ?? 'Ripple address is required';
    if (RegularExpression.validateRippleAddress(rippleAddress)) return textResponse?.invalid ?? 'Please enter a valid Ripple address';
    return null;
  }

  /// Validate Litecoin address.
  static String? litecoinAddress(String litecoinAddress, {TextValidateResponse? textResponse}) {
    if (litecoinAddress.isEmpty) return textResponse?.empty ?? 'Litecoin address is required';
    if (RegularExpression.validateLitecoinAddress(litecoinAddress)) return textResponse?.invalid ?? 'Please enter a valid Litecoin address';
    return null;
  }

  /// Validate Algorand address.
  static String? algorandAddress(String algorandAddress, {TextValidateResponse? textResponse}) {
    if (algorandAddress.isEmpty) return textResponse?.empty ?? 'Algorand address is required';
    if (RegularExpression.validateAlgorandAddress(algorandAddress)) return textResponse?.invalid ?? 'Please enter a valid Algorand address';
    return null;
  }

  /// Validate Tether address.
  static String? tetherAddress(String tetherAddress, {TextValidateResponse? textResponse}) {
    if (tetherAddress.isEmpty) return textResponse?.empty ?? 'Tether address is required';
    if (RegularExpression.validateTetherAddress(tetherAddress)) return textResponse?.invalid ?? 'Please enter a valid Tether address';
    return null;
  }

  /// Validate Monero address.
  static String? moneroAddress(String moneroAddress, {TextValidateResponse? textResponse}) {
    if (moneroAddress.isEmpty) return textResponse?.empty ?? 'Monero address is required';
    if (RegularExpression.validateMoneroAddress(moneroAddress)) return textResponse?.invalid ?? 'Please enter a valid Monero address';
    return null;
  }



  /// Validate IBAN.
  static String? IBAN(String iban, {TextValidateResponse? textResponse}) {
    if (iban.isEmpty) return textResponse?.empty ?? 'IBAN is required';
    if (RegularExpression.validateIBAN(iban)) return textResponse?.invalid ?? 'Please enter a valid IBAN';
    return null;
  }

  /// Validate ISRC.
  static String? ISRC(String isrc, {TextValidateResponse? textResponse}) {
    if (isrc.isEmpty) return textResponse?.empty ?? 'ISRC is required';
    if (RegularExpression.validateISRC(isrc)) return textResponse?.invalid ?? 'Please enter a valid ISRC';
    return null;
  }

  /// Validate ISWC.
  static String? ISWC(String iswc, {TextValidateResponse? textResponse}) {
    if (iswc.isEmpty) return textResponse?.empty ?? 'ISWC is required';
    if (RegularExpression.validateISWC(iswc)) return textResponse?.invalid ?? 'Please enter a valid ISWC';
    return null;
  }

  /// Validate YouTube.
  static String? youTube(String youTube, {TextValidateResponse? textResponse}) {
    if (youTube.isEmpty) return textResponse?.empty ?? 'YouTube link is required';
    if (RegularExpression.validateYouTube(youTube)) return textResponse?.invalid ?? 'Please enter a valid YouTube link';
    return null;
  }

  /// Validate QR.
  static String? qr(String qr, {TextValidateResponse? textResponse}) {
    if (qr.isEmpty) return textResponse?.empty ?? 'QR code link is required';
    if (RegularExpression.validateQR(qr)) return textResponse?.invalid ?? 'Please enter a valid QR code link';
    return null;
  }

  /// Validate Google Play.
  static String? googlePlay(String googlePlay, {TextValidateResponse? textResponse}) {
    if (googlePlay.isEmpty) return textResponse?.empty ?? 'Google Play link is required';
    if (RegularExpression.validateGooglePlay(googlePlay)) return textResponse?.invalid ?? 'Please enter a valid Google Play link';
    return null;
  }

  /// Validate Google Drive.
  static String? googleDrive(String googleDrive, {TextValidateResponse? textResponse}) {
    if (googleDrive.isEmpty) return textResponse?.empty ?? 'Google Drive link is required';
    if (RegularExpression.validateGoogleDrive(googleDrive)) return textResponse?.invalid ?? 'Please enter a valid Google Drive link';
    return null;
  }

  /// Validate Google Maps.
  static String? googleMaps(String googleMaps, {TextValidateResponse? textResponse}) {
    if (googleMaps.isEmpty) return textResponse?.empty ?? 'Google Maps link is required';
    if (RegularExpression.validateGoogleMaps(googleMaps)) return textResponse?.invalid ?? 'Please enter a valid Google Maps link';
    return null;
  }

  /// Validate Google Calendar.
  static String? googleCalendar(String googleCalendar, {TextValidateResponse? textResponse}) {
    if (googleCalendar.isEmpty) return textResponse?.empty ?? 'Google Calendar link is required';
    if (RegularExpression.validateGoogleCalendar(googleCalendar)) return textResponse?.invalid ?? 'Please enter a valid Google Calendar link';
    return null;
  }

  /// Validate Google Mail.
  static String? googleMail(String googleMail, {TextValidateResponse? textResponse}) {
    if (googleMail.isEmpty) return textResponse?.empty ?? 'Google Mail link is required';
    if (RegularExpression.validateGoogleMail(googleMail)) return textResponse?.invalid ?? 'Please enter a valid Google Mail link';
    return null;
  }

  /// Validate Google Account.
  static String? googleAccount(String googleAccount, {TextValidateResponse? textResponse}) {
    if (googleAccount.isEmpty) return textResponse?.empty ?? 'Google Account link is required';
    if (RegularExpression.validateGoogleAccount(googleAccount)) return textResponse?.invalid ?? 'Please enter a valid Google Account link';
    return null;
  }

  /// Validate Google Hangouts.
  static String? googleHangouts(String googleHangouts, {TextValidateResponse? textResponse}) {
    if (googleHangouts.isEmpty) return textResponse?.empty ?? 'Google Hangouts link is required';
    if (RegularExpression.validateGoogleHangouts(googleHangouts)) return textResponse?.invalid ?? 'Please enter a valid Google Hangouts link';
    return null;
  }

  /// Validate Google Classroom.
  static String? googleClassroom(String googleClassroom, {TextValidateResponse? textResponse}) {
    if (googleClassroom.isEmpty) return textResponse?.empty ?? 'Google Classroom link is required';
    if (RegularExpression.validateGoogleClassroom(googleClassroom)) return textResponse?.invalid ?? 'Please enter a valid Google Classroom link';
    return null;
  }

  /// Validate Google Docs.
  static String? googleDocs(String googleDocs, {TextValidateResponse? textResponse}) {
    if (googleDocs.isEmpty) return textResponse?.empty ?? 'Google Docs link is required';
    if (RegularExpression.validateGoogleDocs(googleDocs)) return textResponse?.invalid ?? 'Please enter a valid Google Docs link';
    return null;
  }


  /// Validate Google Forms URL.
  static String? googleForms(String googleForms, {TextValidateResponse? textResponse}) {
    if (googleForms.isEmpty) return textResponse?.empty ?? 'Google Forms URL is required';
    if (RegularExpression.validateGoogleForms(googleForms)) return textResponse?.invalid ?? 'Please enter a valid Google Forms URL';
    return null;
  }

  /// Validate Google Sheets URL.
  static String? googleSheets(String googleSheets, {TextValidateResponse? textResponse}) {
    if (googleSheets.isEmpty) return textResponse?.empty ?? 'Google Sheets URL is required';
    if (RegularExpression.validateGoogleSheets(googleSheets)) return textResponse?.invalid ?? 'Please enter a valid Google Sheets URL';
    return null;
  }

  /// Validate Google Slides URL.
  static String? googleSlides(String googleSlides, {TextValidateResponse? textResponse}) {
    if (googleSlides.isEmpty) return textResponse?.empty ?? 'Google Slides URL is required';
    if (RegularExpression.validateGoogleSlides(googleSlides)) return textResponse?.invalid ?? 'Please enter a valid Google Slides URL';
    return null;
  }

  /// Validate Google Drawings URL.
  static String? googleDrawings(String googleDrawings, {TextValidateResponse? textResponse}) {
    if (googleDrawings.isEmpty) return textResponse?.empty ?? 'Google Drawings URL is required';
    if (RegularExpression.validateGoogleDrawings(googleDrawings)) return textResponse?.invalid ?? 'Please enter a valid Google Drawings URL';
    return null;
  }

  /// Validate Google Sites URL.
  static String? googleSites(String googleSites, {TextValidateResponse? textResponse}) {
    if (googleSites.isEmpty) return textResponse?.empty ?? 'Google Sites URL is required';
    if (RegularExpression.validateGoogleSites(googleSites)) return textResponse?.invalid ?? 'Please enter a valid Google Sites URL';
    return null;
  }

  /// Validate Google Keep URL.
  static String? validateGoogleKeep(String googleKeep, {TextValidateResponse? textResponse}) {
    if (googleKeep.isEmpty) return textResponse?.empty ?? 'Google Keep URL is required';
    if (RegularExpression.validateGoogleKeep(googleKeep)) return textResponse?.invalid ?? 'Please enter a valid Google Keep URL';
    return null;
  }

  /// Validate LinkedIn URL.
  static String? linkedin(String linkedin, {TextValidateResponse? textResponse}) {
    if (linkedin.isEmpty) return textResponse?.empty ?? 'LinkedIn URL is required';
    if (RegularExpression.validateLinkedin(linkedin)) return textResponse?.invalid ?? 'Please enter a valid LinkedIn URL';
    return null;
  }

  /// Validate Facebook URL.
  static String? facebook(String facebook, {TextValidateResponse? textResponse}) {
    if (facebook.isEmpty) return textResponse?.empty ?? 'Facebook URL is required';
    if (RegularExpression.validateFacebook(facebook)) return textResponse?.invalid ?? 'Please enter a valid Facebook URL';
    return null;
  }

  /// Validate Twitter URL.
  static String? twitter(String twitter, {TextValidateResponse? textResponse}) {
    if (twitter.isEmpty) return textResponse?.empty ?? 'Twitter URL is required';
    if (RegularExpression.validateTwitter(twitter)) return textResponse?.invalid ?? 'Please enter a valid Twitter URL';
    return null;
  }

  /// Validate Instagram URL.
  static String? instagram(String instagram, {TextValidateResponse? textResponse}) {
    if (instagram.isEmpty) return textResponse?.empty ?? 'Instagram URL is required';
    if (RegularExpression.validateInstagram(instagram)) return textResponse?.invalid ?? 'Please enter a valid Instagram URL';
    return null;
  }

  /// Validate Pinterest URL.
  static String? pinterest(String pinterest, {TextValidateResponse? textResponse}) {
    if (pinterest.isEmpty) return textResponse?.empty ?? 'Pinterest URL is required';
    if (RegularExpression.validatePinterest(pinterest)) return textResponse?.invalid ?? 'Please enter a valid Pinterest URL';
    return null;
  }

  /// Validate Tumblr URL.
  static String? tumblr(String tumblr, {TextValidateResponse? textResponse}) {
    if (tumblr.isEmpty) return textResponse?.empty ?? 'Tumblr URL is required';
    if (RegularExpression.validateTumblr(tumblr)) return textResponse?.invalid ?? 'Please enter a valid Tumblr URL';
    return null;
  }

  /// Validate Snapchat URL.
  static String? snapchat(String snapchat, {TextValidateResponse? textResponse}) {
    if (snapchat.isEmpty) return textResponse?.empty ?? 'Snapchat URL is required';
    if (RegularExpression.validateSnapchat(snapchat)) return textResponse?.invalid ?? 'Please enter a valid Snapchat URL';
    return null;
  }

  /// Validate Reddit URL.
  static String? reddit(String reddit, {TextValidateResponse? textResponse}) {
    if (reddit.isEmpty) return textResponse?.empty ?? 'Reddit URL is required';
    if (RegularExpression.validateReddit(reddit)) return textResponse?.invalid ?? 'Please enter a valid Reddit URL';
    return null;
  }

  /// Validate GitHub URL.
  static String? gitHub(String gitHub, {TextValidateResponse? textResponse}) {
    if (gitHub.isEmpty) return textResponse?.empty ?? 'GitHub URL is required';
    if (RegularExpression.validateGitHub(gitHub)) return textResponse?.invalid ?? 'Please enter a valid GitHub URL';
    return null;
  }

  /// Validate GitLab URL.
  static String? gitLab(String gitLab, {TextValidateResponse? textResponse}) {
    if (gitLab.isEmpty) return textResponse?.empty ?? 'GitLab URL is required';
    if (RegularExpression.validateGitLab(gitLab)) return textResponse?.invalid ?? 'Please enter a valid GitLab URL';
    return null;
  }


  /// Validate Captcha.
  static String? captcha(String captcha, {TextValidateResponse? textResponse}) {
    if (captcha.isEmpty) return textResponse?.empty ?? 'Captcha is required';
    if (RegularExpression.validateCaptcha(captcha)) return textResponse?.invalid ?? 'Please enter a valid Captcha';
    return null;
  }

  /// Validate weights.
  static String? weights(String weights, {TextValidateResponse? textResponse}) {
    if (weights.isEmpty) return textResponse?.empty ?? 'Weights are required';
    if (RegularExpression.validateWeights(weights)) return textResponse?.invalid ?? 'Please enter valid weights';
    return null;
  }

  /// Validate height.
  static String? height(String height, {TextValidateResponse? textResponse}) {
    if (height.isEmpty) return textResponse?.empty ?? 'Height is required';
    if (RegularExpression.validateHeight(height)) return textResponse?.invalid ?? 'Please enter valid height';
    return null;
  }

  /// Validate age.
  static String? age(String age, {TextValidateResponse? textResponse}) {
    if (age.isEmpty) return textResponse?.empty ?? 'Age is required';
    if (RegularExpression.validateAge(age)) return textResponse?.invalid ?? 'Please enter valid age';
    return null;
  }

  /// Validate date.
  static String? date(String date, {TextValidateResponse? textResponse}) {
    if (date.isEmpty) return textResponse?.empty ?? 'Date is required';
    if (RegularExpression.validateDate(date)) return textResponse?.invalid ?? 'Please enter a valid date';
    return null;
  }

  /// Validate number.
  static String? number(String number, {TextValidateResponse? textResponse}) {
    if (number.isEmpty) return textResponse?.empty ?? 'Number is required';
    if (RegularExpression.validateNumber(number)) return textResponse?.invalid ?? 'Please enter valid number';
    return null;
  }

  /// Validate alphanumeric.
  static String? alphanumeric(String alphanumeric, {TextValidateResponse? textResponse}) {
    if (alphanumeric.isEmpty) return textResponse?.empty ?? 'Alphanumeric is required';
    if (RegularExpression.validateAlphanumeric(alphanumeric)) return textResponse?.invalid ?? 'Please enter valid alphanumeric';
    return null;
  }

  /// Validate alphanumeric with spaces.
  static String? alphanumericWithSpaces(String alphanumericWithSpaces, {TextValidateResponse? textResponse}) {
    if (alphanumericWithSpaces.isEmpty) return textResponse?.empty ?? 'Alphanumeric with spaces is required';
    if (RegularExpression.validateAlphanumericWithSpaces(alphanumericWithSpaces)) return textResponse?.invalid ?? 'Please enter valid alphanumeric with spaces';
    return null;
  }

  /// Validate alphanumeric with spaces and punctuation.
  static String? alphanumericWithSpacesAndPunctuation(String alphanumericWithSpacesAndPunctuation, {TextValidateResponse? textResponse}) {
    if (alphanumericWithSpacesAndPunctuation.isEmpty) return textResponse?.empty ?? 'Alphanumeric with spaces and punctuation is required';
    if (RegularExpression.validateAlphanumericWithSpacesAndPunctuation(alphanumericWithSpacesAndPunctuation)) return textResponse?.invalid ?? 'Please enter valid alphanumeric with spaces and punctuation';
    return null;
  }

  /// Validate Velocity.
  static String? velocity(String velocity, {TextValidateResponse? textResponse}) {
    if (velocity.isEmpty) return textResponse?.empty ?? 'Velocity is required';
    if (RegularExpression.validateVelocity(velocity)) return textResponse?.invalid ?? 'Please enter valid velocity';
    return null;
  }

  /// Validate IMEI.
  static String? validateIMEI(String imei, {TextValidateResponse? textResponse}) {
    if (imei.isEmpty) return textResponse?.empty ?? 'IMEI is required';
    if (RegularExpression.validateIMEI(imei)) return textResponse?.invalid ?? 'Please enter a valid IMEI';
    return null;
  }

  /// Validate MAC address.
  static String? MAC(String macAddress, {TextValidateResponse? textResponse}) {
    if (macAddress.isEmpty) return textResponse?.empty ?? 'MAC address is required';
    if (RegularExpression.validateMACAddress(macAddress)) return textResponse?.invalid ?? 'Please enter a valid MAC address';
    return null;
  }

  /// Validate SSID.
  static String? SSID(String ssid, {TextValidateResponse? textResponse}) {
    if (ssid.isEmpty) return textResponse?.empty ?? 'SSID is required';
    if (RegularExpression.validateSSID(ssid)) return textResponse?.invalid ?? 'Please enter a valid SSID';
    return null;
  }

  /// Validate IP address.
  static String? IP(String ipAddress, {TextValidateResponse? textResponse}) {
    if (ipAddress.isEmpty) return textResponse?.empty ?? 'IP address is required';
    if (RegularExpression.validateIPAddress(ipAddress)) return textResponse?.invalid ?? 'Please enter a valid IP address';
    return null;
  }

  /// Validate port.
  static String? port(String port, {TextValidateResponse? textResponse}) {
    if (port.isEmpty) return textResponse?.empty ?? 'Port is required';
    if (RegularExpression.validatePort(port)) return textResponse?.invalid ?? 'Please enter a valid port';
    return null;
  }

  /// Validate port range.
  static String? portRange(String portRange, {TextValidateResponse? textResponse}) {
    if (portRange.isEmpty) return textResponse?.empty ?? 'Port range is required';
    if (RegularExpression.validatePortRange(portRange)) return textResponse?.invalid ?? 'Please enter a valid port range';
    return null;
  }


  /// Validate year.
  static String? year(String year, {TextValidateResponse? textResponse}) {
    if (year.isEmpty) return textResponse?.empty ?? 'Year is required';
    if (RegularExpression.validateYear(year)) return textResponse?.invalid ?? 'Please enter a valid year';
    return null;
  }

  /// Validate phone number + indicative.
  static String? phoneNumberAndIndicative(String phoneNumber, {TextValidateResponse? textResponse}) {
    if (phoneNumber.isEmpty) return textResponse?.empty ?? 'Phone number is required';
    if (RegularExpression.validatePhoneNumberAndIndicative(phoneNumber)) return textResponse?.invalid ?? 'Please enter a valid phone number with indicative';
    return null;
  }

  /// Validate date born (format YYYY/MM/DD).
  static String? dateBornYYYYMMDD(String dateBorn, {TextValidateResponse? textResponse}) {
    if (dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if (RegularExpression.validateDateBornYYYYMMDD(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born (YYYY/MM/DD)';
    return null;
  }

  /// Validate date born (format MM/DD/YYYY).
  static String? validateDateBornMMDDYY(String dateBorn, {TextValidateResponse? textResponse}) {
    if (dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if (RegularExpression.validateDateBornMMDDYY(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born (MM/DD/YYYY)';
    return null;
  }

  /// Validate date born (format DD/MM/YYYY).
  static String? dateBornDDMMYYYY(String dateBorn, {TextValidateResponse? textResponse}) {
    if (dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if (RegularExpression.validateDateBornDDMMYYYY(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born (DD/MM/YYYY)';
    return null;
  }

  /// Validate date born (format YYYY-MM-DD).
  static String? dateBornYYYYMMDD2(String dateBorn, {TextValidateResponse? textResponse}) {
    if (dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if (RegularExpression.validateDateBornYYYYMMDD2(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born (YYYY-MM-DD)';
    return null;
  }

  /// Validate date born (format DD-MM-YYYY).
  static String? dateBornDDMMYYYY2(String dateBorn, {TextValidateResponse? textResponse}) {
    if (dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if (RegularExpression.validateDateBornDDMMYYYY2(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born (DD-MM-YYYY)';
    return null;
  }

  /// Validate date born (format MM-DD-YYYY).
  static String? dateBornMMDDYYYY(String dateBorn, {TextValidateResponse? textResponse}) {
    if (dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if (RegularExpression.validateDateBornMMDDYYYY(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born (MM-DD-YYYY)';
    return null;
  }

  /// Validate date born (format YYYY.MM.DD).
  static String? dateBornYYYYMMDD3(String dateBorn, {TextValidateResponse? textResponse}) {
    if (dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if (RegularExpression.validateDateBornYYYYMMDD3(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born (YYYY.MM.DD)';
    return null;
  }

  /// Validate date born (format DD.MM.YYYY).
  static String? dateBornDDMMYYYY3(String dateBorn, {TextValidateResponse? textResponse}) {
    if (dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if (RegularExpression.validateDateBornDDMMYYYY3(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born (DD.MM.YYYY)';
    return null;
  }

  /// Validate date born (format MM.DD.YYYY).
  static String? dateBornMMDDYYYY2(String dateBorn, {TextValidateResponse? textResponse}) {
    if (dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if (RegularExpression.validateDateBornMMDDYYYY2(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born (MM.DD.YYYY)';
    return null;
  }

  /// Validate date born (format YYYY MM DD).
  static String? dateBornYYYYMMDD4(String dateBorn, {TextValidateResponse? textResponse}) {
    if (dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if (RegularExpression.validateDateBornYYYYMMDD4(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born (YYYY MM DD)';
    return null;
  }

  /// Validate date born (format DD MM YYYY).
  static String? dateBornDDMMYYYY4(String dateBorn, {TextValidateResponse? textResponse}) {
    if (dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if (RegularExpression.validateDateBornDDMMYYYY4(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born (DD MM YYYY)';
    return null;
  }

  /// Validate date born (format MM DD YYYY).
  static String? dateBornMMDDYYYY3(String dateBorn, {TextValidateResponse? textResponse}) {
    if (dateBorn.isEmpty) return textResponse?.empty ?? 'Date born is required';
    if (RegularExpression.validateDateBornMMDDYYYY3(dateBorn)) return textResponse?.invalid ?? 'Please enter a valid date born (MM DD YYYY)';
    return null;
  }

  /// Validate social security number.
  static String? socialSecurityNumber(String socialSecurityNumber, {TextValidateResponse? textResponse}) {
    if (socialSecurityNumber.isEmpty) return textResponse?.empty ?? 'Social security number is required';
    if (RegularExpression.validateSocialSecurityNumber(socialSecurityNumber)) return textResponse?.invalid ?? 'Please enter a valid social security number';
    return null;
  }

  /// Validate URL.
  static String? url(String url, {TextValidateResponse? textResponse}) {
    if (url.isEmpty) return textResponse?.empty ?? 'URL is required';
    if (RegularExpression.validateUrl(url)) return textResponse?.invalid ?? 'Please enter a valid URL';
    return null;
  }

  /// Validate hexadecimal color.
  static String? hexadecimalColor(String hexadecimalColor, {TextValidateResponse? textResponse}) {
    if (hexadecimalColor.isEmpty) return textResponse?.empty ?? 'Hexadecimal color is required';
    if (RegularExpression.validateHexadecimalColor(hexadecimalColor)) return textResponse?.invalid ?? 'Please enter a valid hexadecimal color';
    return null;
  }

  /// Validate IPv4.
  static String? IPv4(String ipv4, {TextValidateResponse? textResponse}) {
    if (ipv4.isEmpty) return textResponse?.empty ?? 'IPv4 is required';
    if (RegularExpression.validateIPv4(ipv4)) return textResponse?.invalid ?? 'Please enter a valid IPv4 address';
    return null;
  }

  /// Validate IPv6.
  static String? IPv6(String ipv6, {TextValidateResponse? textResponse}) {
    if (ipv6.isEmpty) return textResponse?.empty ?? 'IPv6 is required';
    if (RegularExpression.validateIPv6(ipv6)) return textResponse?.invalid ?? 'Please enter a valid IPv6 address';
    return null;
  }

  /// Validate ISBN.
  static String? validateISBN(String isbn, {TextValidateResponse? textResponse}) {
    if (isbn.isEmpty) return textResponse?.empty ?? 'ISBN is required';
    if (RegularExpression.validateISBN(isbn)) return textResponse?.invalid ?? 'Please enter a valid ISBN';
    return null;
  }

  /// Validate ISIN.
  static String? ISIN(String isin, {TextValidateResponse? textResponse}) {
    if (isin.isEmpty) return textResponse?.empty ?? 'ISIN is required';
    if (RegularExpression.validateISIN(isin)) return textResponse?.invalid ?? 'Please enter a valid ISIN';
    return null;
  }

  /// Validate BIC.
  static String? BIC(String bic, {TextValidateResponse? textResponse}) {
    if (bic.isEmpty) return textResponse?.empty ?? 'BIC is required';
    if (RegularExpression.validateBIC(bic)) return textResponse?.invalid ?? 'Please enter a valid BIC';
    return null;
  }

  /// Validate DNS.
  static String? DNS(String dns, {TextValidateResponse? textResponse}) {
    if (dns.isEmpty) return textResponse?.empty ?? 'DNS is required';
    if (RegularExpression.validateDNS(dns)) return textResponse?.invalid ?? 'Please enter a valid DNS';
    return null;
  }

  /// Validate MD5.
  static String? MD5(String md5, {TextValidateResponse? textResponse}) {
    if (md5.isEmpty) return textResponse?.empty ?? 'MD5 is required';
    if (RegularExpression.validateMD5(md5)) return textResponse?.invalid ?? 'Please enter a valid MD5';
    return null;
  }

  /// Validate SHA1.
  static String? SHA1(String sha1, {TextValidateResponse? textResponse}) {
    if (sha1.isEmpty) return textResponse?.empty ?? 'SHA1 is required';
    if (RegularExpression.validateSHA1(sha1)) return textResponse?.invalid ?? 'Please enter a valid SHA1';
    return null;
  }
}