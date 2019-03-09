import 'package:dio/dio.dart';
import 'dart:io';

// Dio dio = new Dio();// 使用默认配置
// 配置dio实例
// dio.options.baseUrl="https://www.xx.com/api"
// dio.options.connectTimeout = 5000; //5s
// dio.options.receiveTimeout=3000;

// 或者通过传递一个 `options`来创建dio实例
 var options = BaseOptions(
    baseUrl: "https://api.douban.com/",
    connectTimeout: 5000,
    receiveTimeout: 3000,
    headers: {
      "user-agent": "dio",
      "api": "1.0.0"
    },
    contentType: ContentType.json,
    responseType: ResponseType.plain
  );

 var dio = Dio(options)
// 拦截器
// ..interceptors.add(CookieManager(CookieJar()))
..interceptors.add(LogInterceptor())
..interceptors.add(InterceptorsWrapper(
    onRequest:(RequestOptions options){
      //打印一些请求参数
      // print('''
      // type:${options.method}
      // url:${options.path}
      // request:${options.queryParameters}
      // ''');
     // 在请求被发送之前做一些事情
     return options; //continue
     // 如果你想完成请求并返回一些自定义数据，可以返回一个`Response`对象或返回`dio.resolve(data)`。
     // 这样请求将会被终止，上层then会被调用，then中返回的数据将是你的自定义数据data.
     //
     // 如果你想终止请求并触发一个错误,你可以返回一个`DioError`对象，或返回`dio.reject(errMsg)`，
     // 这样请求将被中止并触发异常，上层catchError会被调用。
    },
    onResponse:(Response response) {
     // 在返回响应数据之前做一些预处理
     return response; // continue
    },
    onError: (DioError e) {
      // 当请求失败时做一些预处理
     return e;//continue
    }
));
