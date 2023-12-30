/// Simple constructor for return a custom message on validation.
///
/// This way avoid to use multiples parameters on Function.
class TextValidateResponse {
  /// Use this just whe you TextFormField return a Empty or null value.
  final String empty;

  /// Use this just whe you TextFormField return a invalid value.
  final String invalid;

  const TextValidateResponse({
    required this.empty,
    required this.invalid,
  });
}
