class ErrorResponse {
  final String? status;
  final String? code;
  final String? message;

  ErrorResponse({
    this.status = '0',
    this.code = '0000',
    this.message = '',
  });
}