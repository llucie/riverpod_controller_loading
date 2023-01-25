import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_controller_loading/third_try/third_try_controller.dart';

class ThirdTryPage extends ConsumerWidget {
  const ThirdTryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final thirdTryController = ref.watch(thirdTryControllerProvider.notifier);
    final load = ref.watch(loadProvider("ThirdTry"));

    return Scaffold(
      appBar: AppBar(),
      body: load.when(
          data: (data) => Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(thirdTryController.resultString, selectionColor: Colors.blueGrey),
                  const CustomWidget(),
                ],
              )),
          error: (error, stackTrace) => Center(child: Text(error.toString())),
          loading: () => const Center(child: CircularProgressIndicator.adaptive())),
    );
  }
}

class CustomWidget extends ConsumerWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () async => await ref.read(thirdTryControllerProvider.notifier).anotherMethod(),
      child: const Text('A custom button'),
    );
  }
}
