import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'first_try_controller.g.dart';

@riverpod
class FirstTryController extends _$FirstTryController {
  @override
  FutureOr<void> build(String myRequiredString) async {
    // Call load in the build method, so that the controller is loaded when we're using it
    await load();
  }

  late String resultString;

  Future<void> load() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      // Call a future, such as HTTP get, using myRequiredInt and myRequiredString, and returning a String resultString
      // Here just fake it
      assert(myRequiredString.isNotEmpty);
      await Future.delayed(const Duration(seconds: 2));
      resultString = '[FIRST TRY]';
    });
  }

  Future<void> anotherMethod() async {
    debugPrint('Doing fake stuff with resultString...');
    assert(resultString.isNotEmpty);
    await Future.delayed(const Duration(seconds: 1));
    debugPrint('Done');
  }
}
