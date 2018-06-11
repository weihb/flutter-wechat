import 'package:dio/dio.dart';
import 'dart:io';
import '../common/AndroidToast.dart';

class DioApi {
// Dio dio = new Dio();// 使用默认配置
// 配置dio实例
// dio.options.baseUrl="https://www.xx.com/api"
// dio.options.connectTimeout = 5000; //5s
// dio.options.receiveTimeout=3000;

// 或者通过传递一个 `options`来创建dio实例
  static Options options = new Options(
    baseUrl: "https://api.douban.com",
    connectTimeout: 5000,
    receiveTimeout: 3000,
    headers: {
      "user-agent": "dio",
      "api": "1.0.0"
    },
    contentType: ContentType.JSON,
    responseType: ResponseType.PLAIN
  );

  static Dio dio = new Dio(options)
    // 拦截器
    ..interceptor.request.onSend = (Options options) async {
      // 在请求被发送之前做一些事情
      print('send request：path:${options.path}，baseURL:${options.baseUrl}');
      switch (options.path) {
        case 'test1':
          return print('发送请求前，test1');
        case 'test2':
          return dio.get("http://www.baidu.com");
        case 'test3':
          return dio.reject("test error");
        case 'test4':
          return new DioError(message: "test error");
        default:
          return options;
      }
    }
    ..interceptor.response.onSuccess = (Response response) {
      // 在返回响应数据之前做一些预处理
      // print('请求成功：$response');
      Toast.show('请求成功！');
      return response;
    }
    ..interceptor.response.onError = (DioError e) {
      // 当请求失败时做一些预处理
      print('请求失败：$e');
      return DioError;
    };

  static get(url) async {
    Response response = await dio.get(url);
    print('get返回数据：${response.data}');
    // return response.data['subjects'];
  }

  static post(url, params) async {
    Response response = await dio.post(url, data: params);
    print('post返回数据：${response.data}');
  }
}
