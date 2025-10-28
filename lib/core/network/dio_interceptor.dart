import 'package:clean_architecture/src.dart';

class DioInterceptors extends Interceptor {
  final LocalStorage _storageService;

  DioInterceptors(this._storageService);

  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {

    // String? token = await _storageService.fetchToken();,
    // String locale = await _storageService.fetchLocale();
    // if (token != null) {
    //   options.headers.addAll({"Authorization": "Bearer $token"});
    // }

    // options.headers.addAll({"X-User-language": locale});

    return super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
      DioException err,
      ErrorInterceptorHandler handler,
      ) async {
    if (err.response != null && err.response!.statusCode != null) {
      if (err.response?.data is String) {
        final errorMessage = err.response?.data as String?;
        // final error = ErrorModel(
        //   detail: errorMessage?.replaceAll(RegExp(r'<[^>]+>'), '') ?? '',
        // );
        // handler.next(
        //   DioException(
        //     requestOptions: err.requestOptions,
        //     response: Response(
        //       requestOptions: err.requestOptions,
        //       data: error.toJson(),
        //     ),
        //   ),
        // );
        return;
      } else {
        handler.next(err);
        return;
      }
    }
    // const error = ErrorModel(detail: LocaleKeys.unexpectedError);
    // handler.next(
      // DioException(
      //   requestOptions: err.requestOptions,
      //   response: Response(
      //     requestOptions: err.requestOptions,
      //     data: error.toJson(),
      //   ),
      // ),
    // );
    return;
  }
}
