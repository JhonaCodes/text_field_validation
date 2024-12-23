import 'package:flutter_test/flutter_test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main() {
  group("SOCIAL_MEDIA_URL_VALIDATION_TEST", () {
    test("linkedin_empty_validation_test", () {
      expect(TextFieldValidation.linkedin(""), 'LinkedIn URL is required');
    });

    test("linkedin_valid_test", () {
      expect(
          TextFieldValidation.linkedin(
              "https://www.linkedin.com/in/your_linkedin_profile"),
          null);
    });

    test("facebook_empty_validation_test", () {
      expect(TextFieldValidation.facebook(""), 'Facebook URL is required');
    });

    test("facebook_valid_test", () {
      expect(
          TextFieldValidation.facebook(
              "https://www.facebook.com/your_facebook_profile"),
          null);
    });

    test("twitter_empty_validation_test", () {
      expect(TextFieldValidation.twitter(""), 'Twitter URL is required');
    });

    test("twitter_valid_test", () {
      expect(
          TextFieldValidation.twitter(
              "https://twitter.com/your_twitter_handle"),
          null);
    });

    test("instagram_empty_validation_test", () {
      expect(TextFieldValidation.instagram(""), 'Instagram URL is required');
    });

    test("instagram_valid_test", () {
      expect(
          TextFieldValidation.instagram(
              "https://www.instagram.com/your_instagram_profile"),
          null);
    });

    test("pinterest_empty_validation_test", () {
      expect(TextFieldValidation.pinterest(""), 'Pinterest URL is required');
    });

    test("pinterest_valid_test", () {
      expect(
          TextFieldValidation.pinterest(
              "https://www.pinterest.com/your_pinterest_profile"),
          null);
    });

    test("tumblr_empty_validation_test", () {
      expect(TextFieldValidation.tumblr(""), 'Tumblr URL is required');
    });

    test("tumblr_valid_test", () {
      expect(
          TextFieldValidation.tumblr(
              "https://www.tumblr.com/blog/your_blog_name"),
          null);
    });

    test("snapchat_empty_validation_test", () {
      expect(TextFieldValidation.snapchat(""), 'Snapchat URL is required');
    });

    test("snapchat_valid_test", () {
      expect(
          TextFieldValidation.snapchat(
              "https://www.snapchat.com/add/your_snapchat_username"),
          null);
    });

    test("reddit_empty_validation_test", () {
      expect(TextFieldValidation.reddit(""), 'Reddit URL is required');
    });

    test("reddit_valid_test", () {
      expect(
          TextFieldValidation.reddit("https://www.reddit.com/user/ss"), null);
    });
  });
}
