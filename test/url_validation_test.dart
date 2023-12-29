import 'package:test/test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main(){
  group("URL_VALIDATION_TEST", () {

    test('URL Validation', () {
      expect(TextFieldValidation.url('http://www.example.com'), null);
      expect(TextFieldValidation.url('example.com'), 'Please enter a valid URL');
      expect(TextFieldValidation.url(''), 'URL is required');
    });

    /// Testing YouTube link validation using [TextFieldValidation.youTube].
    test("youtube_empty_validation_test", () {
      expect(TextFieldValidation.youTube(""), 'YouTube link is required');
    });

    test("youtube_invalid_test", () {
      expect(TextFieldValidation.youTube("invalidYouTubeLink"), 'Please enter a valid YouTube link');
    });

    test("youtube_valid_test", () {
      expect(TextFieldValidation.youTube("https://www.youtube.com/watch?v=Xy_TFJvY87M"), null);
    });

    /// Testing QR code link validation using [TextFieldValidation.qr].
    test("qr_empty_validation_test", () {
      expect(TextFieldValidation.qr(""), 'QR code link is required');
    });

    test("qr_invalid_test", () {
      expect(TextFieldValidation.qr("invalidQRCodeLink"), 'Please enter a valid QR code link');
    });

    test("qr_valid_test", () {
      expect(TextFieldValidation.qr("https://qr.code.com/abc123"), null);
    });

    /// Testing Google Play link validation using [TextFieldValidation.googlePlay].
    test("googlePlay_empty_validation_test", () {
      expect(TextFieldValidation.googlePlay(""), 'Google Play link is required');
    });

    test("googlePlay_invalid_test", () {
      expect(TextFieldValidation.googlePlay("https://ply.google.com/store/apps/details?id=comnacode.epicfablehare"), 'Please enter a valid Google Play link');
    });

    test("googlePlay_valid_test", () {
      expect(TextFieldValidation.googlePlay("https://play.google.com/store/apps/details?id=com.jhonacode.epicfables"), null);
    });

    /// Testing Google Drive link validation using [TextFieldValidation.googleDrive].
    test("googleDrive_empty_validation_test", () {
      expect(TextFieldValidation.googleDrive(""), 'Google Drive link is required');
    });

    test("googleDrive_invalid_test", () {
      expect(TextFieldValidation.googleDrive("invalidGoogleDriveLink"), 'Please enter a valid Google Drive link');
    });

    test("googleDrive_valid_test", () {
      expect(TextFieldValidation.googleDrive("https://drive.google.com/file/d/abc123_def456"), null);
    });

    /// Testing Google Maps link validation using [TextFieldValidation.googleMaps].
    test("googleMaps_empty_validation_test", () {
      expect(TextFieldValidation.googleMaps(""), 'Google Maps link is required');
    });

    test("googleMaps_invalid_test", () {
      expect(TextFieldValidation.googleMaps("invalidGoogleMapsLink"), 'Please enter a valid Google Maps link');
    });

    test("googleMaps_valid_test", () {
      expect(TextFieldValidation.googleMaps("https://www.google.com/maps/place/your_place_here"), null);
    });

    /// Testing Google Calendar link validation using [TextFieldValidation.googleCalendar].
    test("googleCalendar_empty_validation_test", () {
      expect(TextFieldValidation.googleCalendar(""), 'Google Calendar link is required');
    });

    test("googleCalendar_invalid_test", () {
      expect(TextFieldValidation.googleCalendar("invalidGoogleCalendarLink"), 'Please enter a valid Google Calendar link');
    });

    test("googleCalendar_valid_test", () {
      expect(TextFieldValidation.googleCalendar("https://www.calendar.google.com/event?action=TEMPLATE&text=your_event_text_here"), null);
    });

    /// Testing Google Mail link validation using [TextFieldValidation.googleMail].
    test("googleMail_empty_validation_test", () {
      expect(TextFieldValidation.googleMail(""), 'Google Mail link is required');
    });

    test("googleMail_invalid_test", () {
      expect(TextFieldValidation.googleMail("invalidGoogleMailLink"), 'Please enter a valid Google Mail link');
    });

    test("googleMail_valid_test", () {
      expect(TextFieldValidation.googleMail("https://www.mail.google.com/mail/u/1/#inbox/your_email_here"), null);
    });

    test("googleAccount_empty_validation_test", () {
      expect(TextFieldValidation.googleAccount(""), 'Google Account link is required');
    });

    test("googleAccount_valid_test", () {
      expect(TextFieldValidation.googleAccount("https://accounts.google.com/your_username"), null);
    });

    test("googleHangouts_empty_validation_test", () {
      expect(TextFieldValidation.googleHangouts(""), 'Google Hangouts link is required');
    });

    test("googleHangouts_valid_test", () {
      expect(TextFieldValidation.googleHangouts("https://hangouts.google.com/your_hangouts_link"), null);
    });

    test("googleClassroom_empty_validation_test", () {
      expect(TextFieldValidation.googleClassroom(""), 'Google Classroom link is required');
    });

    test("googleClassroom_valid_test", () {
      expect(TextFieldValidation.googleClassroom("https://classroom.google.com/your_class_code"), null);
    });

    test("googleDocs_empty_validation_test", () {
      expect(TextFieldValidation.googleDocs(""), 'Google Docs link is required');
    });

    test("googleDocs_valid_test", () {
      expect(TextFieldValidation.googleDocs("https://docs.google.com/document/d/your_document_link"), null);
    });

    test("googleForms_empty_validation_test", () {
      expect(TextFieldValidation.googleForms(""), 'Google Forms URL is required');
    });

    test("googleForms_valid_test", () {
      expect(TextFieldValidation.googleForms("https://docs.google.com/forms/d/your_form_link"), null);
    });

    test("googleSheets_empty_validation_test", () {
      expect(TextFieldValidation.googleSheets(""), 'Google Sheets URL is required');
    });

    test("googleSheets_valid_test", () {
      expect(TextFieldValidation.googleSheets("https://docs.google.com/spreadsheets/d/your_spreadsheet_link"), null);
    });

    test("googleSlides_empty_validation_test", () {
      expect(TextFieldValidation.googleSlides(""), 'Google Slides URL is required');
    });

    test("googleSlides_valid_test", () {
      expect(TextFieldValidation.googleSlides("https://docs.google.com/presentation/d/your_presentation_link"), null);
    });

    test("googleDrawings_empty_validation_test", () {
      expect(TextFieldValidation.googleDrawings(""), 'Google Drawings URL is required');
    });

    test("googleDrawings_valid_test", () {
      expect(TextFieldValidation.googleDrawings("https://docs.google.com/drawings/d/your_drawings_link"), null);
    });

    test("googleSites_empty_validation_test", () {
      expect(TextFieldValidation.googleSites(""), 'Google Sites URL is required');
    });

    test("googleSites_valid_test", () {
      expect(TextFieldValidation.googleSites("https://sites.google.com/your_site_code"), null);
    });

    test("validateGoogleKeep_empty_validation_test", () {
      expect(TextFieldValidation.validateGoogleKeep(""), 'Google Keep URL is required');
    });

    test("validateGoogleKeep_valid_test", () {
      expect(TextFieldValidation.validateGoogleKeep("https://keep.google.com/your_note_code"), null);
    });

  });
}