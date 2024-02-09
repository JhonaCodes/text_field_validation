/// The [RegularExpression] class container a static methods for validate data by regular expression.
///
///Each method return a [bool] value, if the value is true, the data is valid, else the data is invalid.
class RegularExpression {
  /// Validate email
  static bool validateEmail(String email) =>
      regExp(r'^[\w-\.]+@([\w-]+\.)+[a-zA-Z]{2,}$', email);

  /// Validate password
  static bool validatePassword(String password) => regExp(
      r'^(?=.*[A-Za-z\d\s!@#$%^&*()-=_+{}[\]|;:",.<>?/\\])[A-Za-z\d\s!@#$%^&*()-=_+{}[\]|;:",.<>?/\\]{6,}$',
      password);

  /// Validate Without numbers
  static bool validateWithoutNumbers(String text) => regExp(r'^[^0-9]+$', text);

  /// Validate strict password
  static bool validateStrictPassword(String password) => regExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
      password);

  /// Validate name
  static bool validateName(String name) => regExp(r'^[a-zA-Z ]+$', name);

  /// Validate phone
  static bool validatePhone(String phone) => regExp(r'^[0-9]{10}$', phone);

  /// Validate address
  static bool validateAddress(String address) =>
      regExp(r'^[a-zA-Z0-9 ]+$', address);

  /// Validate city
  static bool validateCity(String city) => regExp(r'^[a-zA-Z ]+$', city);

  /// Validate state
  static bool validateState(String state) => regExp(r'^[a-zA-Z ]+$', state);

  /// Validate zip
  static bool validateZip(String zip) => regExp(r'^[0-9]{5}$', zip);

  /// Validate country
  static bool validateCountry(String country) =>
      regExp(r'^[a-zA-Z ]+$', country);

  /// Validate card number
  static bool validateCardNumber(String cardNumber) =>
      regExp(r'^[0-9]{16}$', cardNumber);

  /// Validate card holder
  static bool validateCardHolder(String cardHolder) =>
      regExp(r'^[a-zA-Z ]+$', cardHolder);

  /// Validate card date
  static bool validateCardDate(String cardDate) =>
      regExp(r'^[0-9]{2}\/[0-9]{2}$', cardDate);

  /// Validate card cvv
  static bool validateCardCvv(String cardCvv) => regExp(r'^[0-9]{3}$', cardCvv);

  /// Validate card zip
  static bool validateCardZip(String cardZip) => regExp(r'^[0-9]{5}$', cardZip);

  /// Validate card type
  static bool validateCardType(String cardType) =>
      regExp(r'^[a-zA-Z ]+$', cardType);

  /// Validate card name
  static bool validateCardName(String cardName) =>
      regExp(r'^[a-zA-Z ]+$', cardName);

  /// Validate card address
  static bool validateCardAddress(String cardAddress) =>
      regExp(r'^[a-zA-Z0-9 ]+$', cardAddress);

  /// Validate card city
  static bool validateCardCity(String cardCity) =>
      regExp(r'^[a-zA-Z ]+$', cardCity);

  /// Validate card state
  static bool validateCardState(String cardState) =>
      regExp(r'^[a-zA-Z ]+$', cardState);

  /// Validate card country
  static bool validateCardCountry(String cardCountry) =>
      regExp(r'^[a-zA-Z ]+$', cardCountry);

  /// validate year
  static bool validateYear(String year) => regExp(r'^[0-9]{4}$', year);

  /// Validate phone number + indicative
  static bool validatePhoneNumberAndIndicative(String phoneNumber) =>
      regExp(r'^\+[1-9]{1}[0-9]{3,14}$', phoneNumber);

  /// Validate date born (format YYYY/MM/DD)
  static bool validateDateBornYYYYMMDD(String dateBorn) =>
      regExp(r'^[0-9]{4}\/[0-9]{2}\/[0-9]{2}$', dateBorn);

  /// Validate date born (format MM/DD/YYYY)
  static bool validateDateBornMMDDYY(String dateBorn) =>
      regExp(r'^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$', dateBorn);

  /// Validate date born (format DD/MM/YYYY)
  static bool validateDateBornDDMMYYYY(String dateBorn) =>
      regExp(r'^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$', dateBorn);

  /// Validate date born (format YYYY-MM-DD)
  static bool validateDateBornYYYYMMDD2(String dateBorn) =>
      regExp(r'^[0-9]{4}\-[0-9]{2}\-[0-9]{2}$', dateBorn);

  /// Validate date born (format DD-MM-YYYY)
  static bool validateDateBornDDMMYYYY2(String dateBorn) =>
      regExp(r'^[0-9]{2}\-[0-9]{2}\-[0-9]{4}$', dateBorn);

  /// Validate date born (format MM-DD-YYYY)
  static bool validateDateBornMMDDYYYY(String dateBorn) =>
      regExp(r'^[0-9]{2}\-[0-9]{2}\-[0-9]{4}$', dateBorn);

  /// Validate date born (format YYYY.MM.DD)
  static bool validateDateBornYYYYMMDD3(String dateBorn) =>
      regExp(r'^[0-9]{4}\.[0-9]{2}\.[0-9]{2}$', dateBorn);

  /// Validate date born (format DD.MM.YYYY)
  static bool validateDateBornDDMMYYYY3(String dateBorn) =>
      regExp(r'^[0-9]{2}\.[0-9]{2}\.[0-9]{4}$', dateBorn);

  /// Validate date born (format MM.DD.YYYY)
  static bool validateDateBornMMDDYYYY2(String dateBorn) =>
      regExp(r'^[0-9]{2}\.[0-9]{2}\.[0-9]{4}$', dateBorn);

  /// Validate date born (format YYYY MM DD)
  static bool validateDateBornYYYYMMDD4(String dateBorn) =>
      regExp(r'^[0-9]{4}\ [0-9]{2}\ [0-9]{2}$', dateBorn);

  /// Validate date born (format DD MM YYYY)
  static bool validateDateBornDDMMYYYY4(String dateBorn) =>
      regExp(r'^[0-9]{2}\ [0-9]{2}\ [0-9]{4}$', dateBorn);

  /// Validate date born (format MM DD YYYY)
  static bool validateDateBornMMDDYYYY3(String dateBorn) =>
      regExp(r'^[0-9]{2}\ [0-9]{2}\ [0-9]{4}$', dateBorn);

  /// Number of social security
  static bool validateSocialSecurityNumber(String socialSecurityNumber) =>
      regExp(r'^[0-9]{3}\-[0-9]{2}\-[0-9]{4}$', socialSecurityNumber);

  /// Validate url
  static bool validateUrl(String url) =>
      regExp(r'^(https?|ftp):\/\/[^\s\/$.?#].[^\s]*$', url);

  /// Validate hexadecimal color
  static bool validateHexadecimalColor(String hexadecimalColor) =>
      regExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$', hexadecimalColor);

  /// Validate IPv4
  static bool validateIPv4(String ipv4) =>
      regExp(r'^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.|$)){4}', ipv4);

  /// Validate IPv6
  static bool validateIPv6(String ipv6) => regExp(
      r'^([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}$|^([0-9a-fA-F]{1,4}:){1,7}:$|^([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}$|^([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}$|^([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}$|^([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}$|^([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}$|^[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})$|^:((:[0-9a-fA-F]{1,4}){1,7}|:)$',
      ipv6);

  /// Validate ISBN
  static bool validateISBN(String isbn) => regExp(
      r'^(?:ISBN(?:-10)?:? )?(?=[0-9]{13}$|(?=(?:[0-9]+[- ]){4})'
      r'[- 0-9]{17}$|97[89][0-9]{10}$|(?=(?:[0-9]+[- ]){3})[- 0-9]{13}$)'
      r'(?:97[89][- ]?)?[0-9]{1,5}[- ]?[0-9]+[- ]?[0-9]+[- ]?[0-9]$',
      isbn);

  /// Validate ISIN
  static bool validateISIN(String isin) =>
      regExp(r'^[A-Z]{2}[0-9A-Z]{9}[0-9]$', isin);

  /// Validate BIC
  static bool validateBIC(String bic) =>
      regExp(r'^[A-Z]{6}[A-Z0-9]{2}([A-Z0-9]{3})?$', bic);

  /// Validate DNS.
  static bool validateDNS(String dns) =>
      regExp(r'^([a-z0-9]+(-[a-z0-9]+)*\.)+[a-z]{2,}$', dns);

  /// Validate MD5.
  static bool validateMD5(String md5) => regExp(r'^[a-f0-9]{32}$', md5);

  /// Validate SHA1.
  static bool validateSHA1(String sha1) => regExp(r'^[a-f0-9]{40}$', sha1);

  /// Validate Captcha.
  static bool validateCaptcha(String captcha) =>
      regExp(r'^[a-zA-Z0-9]{6}$', captcha);

  /// Validate weights.
  static bool validateWeights(String weights) =>
      regExp(r'^[0-9]+([,.][0-9]+)?$', weights);

  /// Validate height.
  static bool validateHeight(String height) =>
      regExp(r'^[0-9]+([,.][0-9]+)?$', height);

  /// Validate age.
  static bool validateAge(String age) => regExp(r'^[0-9]+([,.][0-9]+)?$', age);

  /// Validate date.
  static bool validateDate(String date) => regExp(r'^\d{4}-\d{2}-\d{2}$', date);

  /// Validate number.
  static bool validateNumber(String number) =>
      regExp(r'^[0-9]+([,.][0-9]+)?$', number);

  /// Validate alphanumeric.
  static bool validateAlphanumeric(String alphanumeric) =>
      regExp(r'^[a-zA-Z0-9]+$', alphanumeric);

  /// Validate alphanumeric with spaces.
  static bool validateAlphanumericWithSpaces(String alphanumericWithSpaces) =>
      regExp(r'^[a-zA-Z0-9 ]+$', alphanumericWithSpaces);

  /// Validate alphanumeric with spaces and punctuation.
  static bool validateAlphanumericWithSpacesAndPunctuation(
          String alphanumericWithSpacesAndPunctuation) =>
      regExp(r'^[a-zA-Z0-9 ,.]+$', alphanumericWithSpacesAndPunctuation);

  /// Validate Velocity.
  static bool validateVelocity(String velocity) =>
      regExp(r'^[0-9]+([,.][0-9]+)?$', velocity);

  /// Validate IMEI.
  static bool validateIMEI(String imei) => regExp(r'^[0-9]{15}$', imei);

  /// Validate MAC address.
  static bool validateMACAddress(String macAddress) =>
      regExp(r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$', macAddress);

  /// Validate SSID.
  static bool validateSSID(String ssid) => regExp(r'^[a-zA-Z0-9-_]+$', ssid);

  /// Validate IP address.
  static bool validateIPAddress(String ipAddress) => regExp(
      r'^((25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2})\.){3}(25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{1,2})$',
      ipAddress);

  /// Validate port.
  static bool validatePort(String port) => regExp(
      r'^(?:[1-9]\d{0,4}|[1-5]\d{4}|6(?:[0-4]\d{3}|5(?:[0-4]\d{2}|5(?:[0-2]\d{1}|3[0-5]))))$',
      port);

  /// Validate port range.
  static bool validatePortRange(String portRange) =>
      regExp(r'^[0-9]{1,5}(-[0-9]{1,5})?$', portRange);

  /// Validate Bitcoin address.
  static bool validateBitcoinAddress(String bitcoinAddress) =>
      regExp(r'^[13][a-km-zA-HJ-NP-Z1-9]{25,34}$', bitcoinAddress);

  /// Validate Ethereum address.
  static bool validateEthereumAddress(String ethereumAddress) =>
      regExp(r'^0x[a-fA-F0-9]{40}$', ethereumAddress);

  /// Validate Ripple address.
  static bool validateRippleAddress(String rippleAddress) =>
      regExp(r'^r[0-9a-zA-Z]{33}$', rippleAddress);

  /// Validate Litecoin address.
  static bool validateLiteCoinAddress(String litecoinAddress) =>
      regExp(r'^[LM3][a-km-zA-HJ-NP-Z1-9]{26,33}$', litecoinAddress);

  /// Validate Algorand address.
  static bool validateAlgoRandAddress(String algorandAddress) =>
      regExp(r'^[A-Z2-7]{58}$', algorandAddress);

  /// Validate Tether address.
  static bool validateTetherAddress(String tetherAddress) =>
      regExp(r'^[13][a-km-zA-HJ-NP-Z1-9]{25,34}$', tetherAddress);

  /// Validate Monero address.
  static bool validateMoneroAddress(String moneroAddress) =>
      regExp(r'^4[0-9AB][1-9A-HJ-NP-Za-km-z]{93}$', moneroAddress);

  /// Validate IBAN.
  static bool validateIBAN(String iban) =>
      regExp(r'^[A-Z]{2}[0-9]{2}[a-zA-Z0-9]{1,30}$', iban);

  /// Validate ISRC.
  static bool validateISRC(String iSrc) =>
      regExp(r'^[A-Z]{2}-?[A-Z0-9]{3}-?[0-9]{2}-?[0-9]{5}$', iSrc);

  /// Validate ISWC.
  static bool validateISWC(String iSwc) =>
      regExp(r'^T-[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]$', iSwc);

  /// Validate YouTube.
  static bool validateYouTube(String youTube) => regExp(
      r'^https:\/\/(www\.)?youtube\.com\/watch\?v=[a-zA-Z0-9_-]+$', youTube);

  /// Validate QR.
  static bool validateQR(String qr) =>
      regExp(r'^https:\/\/(www\.)?qr\.code\.com\/[a-zA-Z0-9_-]+$', qr);

  /// Validate Google Play.
  static bool validateGooglePlay(String googlePlay) => regExp(
      r'^https:\/\/play\.google\.com\/store\/apps\/details\?id=[a-zA-Z0-9._%+-]+(&[a-zA-Z0-9._%+-]+=[a-zA-Z0-9._%+-]+)*$',
      googlePlay);

  /// Validate Google Drive.
  static bool validateGoogleDrive(String googleDrive) => regExp(
      r'^https:\/\/(www\.)?drive\.google\.com\/file\/d\/[a-zA-Z0-9_-]+$',
      googleDrive);

  /// Validate Google Maps.
  static bool validateGoogleMaps(String googleMaps) => regExp(
      r'^https:\/\/(www\.)?google\.com\/maps\/place\/[a-zA-Z0-9_-]+$',
      googleMaps);

  /// Validate Google Calendar.
  static bool validateGoogleCalendar(String googleCalendar) => regExp(
      r'^https:\/\/(www\.)?calendar\.google\.com\/event\?action=TEMPLATE&text=[a-zA-Z0-9_-]+$',
      googleCalendar);

  /// Validate Google Mail.
  static bool validateGoogleMail(String googleMail) => regExp(
      r'^https:\/\/(www\.)?mail\.google\.com\/mail\/u\/[0-9]+\/#inbox\/[a-zA-Z0-9_-]+$',
      googleMail);

  /// Validate Google Account.
  static bool validateGoogleAccount(String googleAccount) => regExp(
      r'^https:\/\/(www\.)?accounts\.google\.com\/[a-zA-Z0-9_-]+$',
      googleAccount);

  /// Validate Google Hangouts.
  static bool validateGoogleHangouts(String googleHangouts) => regExp(
      r'^https:\/\/(www\.)?hangouts\.google\.com\/[a-zA-Z0-9_-]+$',
      googleHangouts);

  /// Validate Google Classroom.
  static bool validateGoogleClassroom(String googleClassroom) => regExp(
      r'^https:\/\/(www\.)?classroom\.google\.com\/[a-zA-Z0-9_-]+$',
      googleClassroom);

  /// Validate Google Docs.
  static bool validateGoogleDocs(String googleDocs) => regExp(
      r'^https:\/\/(www\.)?docs\.google\.com\/document\/d\/[a-zA-Z0-9_-]+$',
      googleDocs);

  /// Validate Google Forms.
  static bool validateGoogleForms(String googleForms) => regExp(
      r'^https:\/\/(www\.)?docs\.google\.com\/forms\/d\/[a-zA-Z0-9_-]+$',
      googleForms);

  /// Validate Google Sheets.
  static bool validateGoogleSheets(String googleSheets) => regExp(
      r'^https:\/\/(www\.)?docs\.google\.com\/spreadsheets\/d\/[a-zA-Z0-9_-]+$',
      googleSheets);

  /// Validate Google Slides.
  static bool validateGoogleSlides(String googleSlides) => regExp(
      r'^https:\/\/(www\.)?docs\.google\.com\/presentation\/d\/[a-zA-Z0-9_-]+$',
      googleSlides);

  /// Validate Google Drawings.
  static bool validateGoogleDrawings(String googleDrawings) => regExp(
      r'^https:\/\/(www\.)?docs\.google\.com\/drawings\/d\/[a-zA-Z0-9_-]+$',
      googleDrawings);

  /// Validate Google Sites.
  static bool validateGoogleSites(String googleSites) => regExp(
      r'^https:\/\/(www\.)?sites\.google\.com\/[a-zA-Z0-9_-]+$', googleSites);

  /// Validate Google Keep.
  static bool validateGoogleKeep(String googleKeep) => regExp(
      r'^https:\/\/(www\.)?keep\.google\.com\/[a-zA-Z0-9_-]+$', googleKeep);

  /// Validate linkedin.
  static bool validateLinkedin(String linkedin) => regExp(
      r'^https:\/\/(www\.)?linkedin\.com\/in\/[a-zA-Z0-9_-]+$', linkedin);

  /// Validate Facebook.
  static bool validateFacebook(String facebook) =>
      regExp(r'^https:\/\/(www\.)?facebook\.com\/[a-zA-Z0-9_-]+$', facebook);

  /// Validate Twitter.
  static bool validateTwitter(String twitter) =>
      regExp(r'^https:\/\/(www\.)?twitter\.com\/[a-zA-Z0-9_-]+$', twitter);

  /// Validate Instagram.
  static bool validateInstagram(String instagram) =>
      regExp(r'^https:\/\/(www\.)?instagram\.com\/[a-zA-Z0-9_-]+$', instagram);

  /// Validate Pinterest.
  static bool validatePinterest(String pinterest) =>
      regExp(r'^https:\/\/(www\.)?pinterest\.com\/[a-zA-Z0-9_-]+$', pinterest);

  /// Validate Tumblr.
  static bool validateTumblr(String tumblr) => regExp(
      r'^https:\/\/(www\.)?tumblr\.com\/(?:blog\/[a-zA-Z0-9_-]+|(?:[a-zA-Z0-9_-]+\.tumblr\.com))$',
      tumblr);

  /// Validate Snapchat.
  static bool validateSnapchat(String snapchat) => regExp(
      r'^https:\/\/(www\.)?snapchat\.com\/add\/[a-zA-Z0-9_-]+$', snapchat);

  /// Validate Reddit.
  static bool validateReddit(String reddit) => regExp(
      r'^https:\/\/(www\.)?reddit\.com\/user\/[a-zA-Z0-9_-]+\/?$', reddit);

  /// Validate GitHub.
  static bool validateGitHub(String gitHub) => regExp(
      r'^https:\/\/(www\.)?github\.com\/user\/[a-zA-Z0-9_-]+\/?$', gitHub);

  /// Validate GitLab.
  static bool validateGitLab(String gitLab) => regExp(
      r'^https:\/\/(www\.)?gitlab\.com\/user\/[a-zA-Z0-9_-]+\/?$', gitLab);

  /// regExp
  static bool regExp(String regExp, dynamic value) {
    final RegExp _regExp = RegExp(regExp);
    return !_regExp.hasMatch(value);
  }
}
