class PlanBIMError {
  String error_message;
  int error_code;
  ErrorType errorType;

  PlanBIMError(this.error_code, this.error_message, this.errorType);

  @override
  String toString() {
    return '$errorType Error : ($error_code)  $error_message';
  }

  void addError(Object data) {
    this.error_message = error_message;
  }
}

enum ErrorType { NORMAL, MINOR, CRITICAL }
