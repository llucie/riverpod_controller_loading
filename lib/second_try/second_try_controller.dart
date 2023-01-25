import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'second_try_controller.g.dart';

@riverpod
class SecondTryController extends _$SecondTryController {
  @override
  FutureOr<void> build() async {}

  late String myRequiredString;
  late String resultString;
  bool loaded = false;

  Future<void> load() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      // Call a future, such as HTTP get, using myRequiredInt and myRequiredString, and returning a String resultString
      // Here just fake it
      assert(myRequiredString.isNotEmpty);
      await Future.delayed(const Duration(seconds: 2));
      resultString = '[SECOND TRY]';
      loaded = true;
    });
  }
}
