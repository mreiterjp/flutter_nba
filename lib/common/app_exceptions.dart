/// `AppExceptions` is a base class for handling exceptions in the application.
/// It implements the `Exception` interface.
///
/// It has two optional parameters:
/// - `_prefix`: A string that can be used to categorize the exception.
/// - `_message`: A string that provides more details about the exception.
///
/// TODO: refactor to use with dio_exception.dart
/// see: https://mings.in/retrofit.dart/
class AppExceptions implements Exception {
  String? _prefix;
  String? _message;

  AppExceptions([this._prefix, this._message]);
}

/// `InternetException` is a subclass of `AppExceptions`.
/// It is thrown when there is an issue with the internet connection.
class InternetException extends AppExceptions {
  InternetException([message]) : super('');
}

/// `RequestTimeOut` is a subclass of `AppExceptions`.
/// It is thrown when a request to the server times out.
class RequestTimeOut extends AppExceptions {
  RequestTimeOut([message]) : super('');
}

/// `ServerError` is a subclass of `AppExceptions`.
/// It is thrown when there is an error on the server side.
class ServerError extends AppExceptions {
  ServerError([message]) : super('');
}

/// `InvalidUrlException` is a subclass of `AppExceptions`.
/// It is thrown when the provided URL is invalid.
class InvalidUrlException extends AppExceptions {
  InvalidUrlException([message]) : super('');
}

/// `FetchDataException` is a subclass of `AppExceptions`.
/// It is thrown when there is an error fetching data.
class FetchDataException extends AppExceptions {
  FetchDataException([message]) : super('');
}
