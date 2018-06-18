package com.demo.flutterapp;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {

  private static final String CHANNEL = "flutter/toast";
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
    Intent intent = new Intent(this,LaunchActivity.class);
    startActivity(intent);
    new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(
            new MethodChannel.MethodCallHandler() {
              @Override
              public void onMethodCall(MethodCall call, MethodChannel.Result result) {
                System.out.println(call.method);
                switch (call.method){
                  case  "showToast":
                    if (call.hasArgument("msg") && !TextUtils.isEmpty(call.argument("msg").toString())) {
                      Toast.makeText(MainActivity.this, call.argument("msg").toString(), Toast.LENGTH_SHORT).show();
                    } else {
                      Toast.makeText(MainActivity.this, "toast text must not null", Toast.LENGTH_SHORT).show();
                    }
                    break;
                  case "webview":
//                    Toast.makeText(MainActivity.this,call.argument("url").toString(),Toast.LENGTH_LONG).show();
//                    startActivity(new Intent(MainActivity.this,BaseWebView.class));
//                    new BaseWebView(MainActivity.this).loadUrl(call.argument("url").toString());
                    Intent intent = new Intent(MainActivity.this, BaseWebView.class);
                    intent.putExtra("url", call.argument("url").toString());      // id+"" 这样是把int转成String类型, 否则会报错
                    startActivity(intent);
                    break;
                }
              }
            });
  }
}
