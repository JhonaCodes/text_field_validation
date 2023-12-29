/// Simple constructor for return a custom message on validation.
///
/// This way avoid to use multiples parameters on Function.
class TextValidateResponse {
  final String empty;
  final String invalid;
  const TextValidateResponse({required this.empty, required this.invalid});
}