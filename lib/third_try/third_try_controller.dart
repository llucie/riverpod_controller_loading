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

// Here the loading is a FutureProvider.
// pros:
//   - we can call a .when on it to build the widget when loaded, without setting manually a "loaded" boolean
//   - the load is a Family provider, but the Controller provider is not. The controller can be retrieved with a
// `read` or a `watch` without parameters, contrary to first try
//
// cons:
//   - the load shall be called before accessing to the controller `resultString` parameter, otherwise it will raise a
//   LateInitializationError

@riverpod
Future<void> load(Ref ref, String myRequiredString) async {
  // Call a future, such as HTTP get, using myRequiredInt and myRequiredString, and returning a String resultString
  // Here just fake it
  assert(myRequiredString.isNotEmpty);
  await Future.delayed(const Duration(seconds: 2));
  ref.read(thirdTryControllerProvider.notifier).resultString = '[THIRD TRY]';
}
