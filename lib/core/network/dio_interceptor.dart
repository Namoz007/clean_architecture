import 'package:clean_architecture/src.dart';

class DioInterceptors extends Interceptor {


  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {

    // options.headers.addAll({"Authorization": token});

    return super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
      DioException err,
      ErrorInterceptorHandler handler,
      ) async {
    return super.onError(err, handler);
  }
}
