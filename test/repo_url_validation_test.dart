import 'package:test/test.dart';

import 'package:text_field_validation/src/validation/text_field_validation.dart';

void main(){
  group("REPO_URL_VALIDATION_TEST", () {
    test("github_empty_validation_test", () {
      expect(TextFieldValidation.gitHub(""), 'GitHub URL is required');
    });

    test("github_invalid_test", () {
      expect(TextFieldValidation.gitHub("invalid_github_url"), 'Please enter a valid GitHub URL');
    });

    test("github_valid_test", () {
      expect(TextFieldValidation.gitHub("https://github.com/user/repo"), null);
    });

    test("gitlab_empty_validation_test", () {
      expect(TextFieldValidation.gitLab(""), 'GitLab URL is required');
    });

    test("gitlab_invalid_test", () {
      expect(TextFieldValidation.gitLab("invalid_gitlab_url"), 'Please enter a valid GitLab URL');
    });

    test("gitlab_valid_test", () {
      expect(TextFieldValidation.gitLab("https://gitlab.com/user/repo"), null);
    });

    test("captcha_empty_validation_test", () {
      expect(TextFieldValidation.captcha(""), 'Captcha is required');
    });

    test("captcha_invalid_test", () {
      expect(TextFieldValidation.captcha("invalid_captcha"), 'Please enter a valid Captcha');
    });

    test("captcha_valid_test", () {
      expect(TextFieldValidation.captcha("VaL1Dq"), null);
    });

  });
}