import 'package:clean_architecture/src.dart';

abstract class DioClient{

  @lazySingleton
  Dio provideDio(LocalStorage localStorage) {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConst.baseUrl,
        connectTimeout: Duration(seconds: 20),
        receiveTimeout: Duration(seconds: 20),
        sendTimeout: Duration(seconds: 20),
        responseType: ResponseType.json,
        followRedirects: true,
        maxRedirects: 5,
        contentType: Headers.jsonContentType,
        validateStatus: (status) => status != null && status >= 200 && status < 300,
        receiveDataWhenStatusError: false,
      ),
    );

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        enabled: kDebugMode,
      ),
    );
    dio.interceptors.add(DioInterceptors(sl<LocalStorage>()));

    return dio;
  }



}