import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'third_try_controller.g.dart';

@riverpod
class ThirdTryController extends _$ThirdTryController {
  @override
  FutureOr<void> build() async {}

  late String resultString;

  Future<void> anotherMethod() async {
    debugPrint('Doing fake stuff with resultString...');
    assert(resultString.isNotEmpty);
    await Future.delayed(const Duration(seconds: 1));
    debugPrint('Done');
  }
}

@riverpod
Future<void> load(Ref ref, String myRequiredString) async {
  // Call a future, such as HTTP get, using myRequiredInt and myRequiredString, and returning a String resultString
  // Here just fake it
  assert(myRequiredString.isNotEmpty);
  await Future.delayed(const Duration(seconds: 2));
  ref.read(thirdTryControllerProvider.notifier).resultString = '[THIRD TRY]';
}
