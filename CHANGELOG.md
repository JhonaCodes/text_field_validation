# Changelog

### Version 1.1.2
- Update Changelog format.
- Update code format.
---
### Version 1.1.1
- Update Changelog format.
---
### Version 1.1.0
#### Added
- Extended Validation for Names**: Added comprehensive validation for names, including support for a wider range of special characters and diacritics.
- Improved Regular Expressions**: Updated regular expressions to include additional special characters and accent marks, such as `ç`, `ř`, and more.
- Enhanced Email and URL Validation**: Added more robust validation patterns for email addresses and URLs.
#### Changed
- Regex Patterns**: Updated regex patterns across various validation functions to improve accuracy and coverage.
#### Notes
- This release enhances the library's capabilities in validating a broader set of names and special characters, as well as improving overall validation accuracy.
---
### Version 1.0.4
### Version 1.0.3
- Upgrade SDK version.
---
### Version 1.0.2
- Fix error on validate number.
---
### Version 1.0.1
- Format lower camel case.
### Developer Notes
- Multiple and extensive tests passed, now is stable version.
---
### Version 1.0.0
- First stable version.
#### Developer Notes
- Backward Compatibility:
- Due to internal logic changes, full compatibility with previous versions is not guaranteed. Review the updated documentation and adjust your code accordingly.
---
### Version 0.3.1
- Improved Password Validation
- The regular expression now ensures passwords contain at least one letter, one number, and one special character or space.
- Fixed the minimum length to exactly 6 characters to meet security requirements. 
- Code Optimizations
- Adjustments were made to the regular expression to enhance accuracy and security of validations.
- Updated Documentation
- Package documentation has been updated to reflect changes in password validation.
- Bug Fixes
- Addressed an issue allowing passwords with less than 6 characters.
---
## Version 0.3.0
#### Major Changes
- Internal Logic Refactoring:
- Extensive refactoring of the library's internal logic for improved efficiency and clarity. This may result in behavioral changes.
- Enhancements and Additions
- New Validation Functions:
- Introduction of additional validation functions to address specific use cases. Refer to the updated documentation for details on new functions.
---
## Version 0.2.2
- Introduction of the `TextValidateResponse` class to allow customized responses in validations.
- Update and improvement of some regular expressions based on testing and feedback.
- Adjustments to optimize performance and usability of the validation module.
---
## Version 0.2.1
- Implementation of tests for each validation.
- Ensuring code integrity and functionality through unit tests.
---
## Version 0.2.0
- Significant updates and improvements to regular expressions.
- Adjustments to increase the robustness and accuracy of validations.
---
## Version 0.1.0
- Initial project creation.
- Development of initial regular expressions to validate various types of text.
---