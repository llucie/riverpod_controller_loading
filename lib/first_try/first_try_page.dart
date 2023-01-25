import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_controller_loading/first_try/first_try_controller.dart';

class FirstTryPage extends ConsumerWidget {
  const FirstTryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstTryController = ref.watch(firstTryControllerProvider("FirstTry").notifier);
    return Scaffold(
      appBar: AppBar(),
      body: ref.watch(firstTryControllerProvider("FirstTry")).hasValue
          ? Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(firstTryController.resultString, selectionColor: Colors.blueGrey),
                const CustomWidget(),
              ],
            ))
          : const Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}

class CustomWidget extends ConsumerWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      // To call a method from the controller, we have to provide the family parameter, here "FirstTry".
      // In some cases, we don't have access to this parameter, for instance if we try to call a method from another
      // page, which does not have it. In this case, we cannot use the family feature of riverpod.
      onPressed: () async => await ref.read(firstTryControllerProvider("FirstTry").notifier).anotherMethod(),
      child: const Text('A custom button'),
    );
  }
}
