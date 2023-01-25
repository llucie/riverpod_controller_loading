import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_controller_loading/second_try/second_try_controller.dart';

class SecondTryPage extends ConsumerStatefulWidget {
  const SecondTryPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SecondTryPage> createState() => _SecondTryPageState();
}

class _SecondTryPageState extends ConsumerState<SecondTryPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // Here we don't use the family feature of riverpod, and set the parameters before manually loaded
      // the provider.
      // We launch it in a post frame since the load() function modifies the provider.
      ref.read(secondTryControllerProvider.notifier).myRequiredString = "Something important";
      ref.read(secondTryControllerProvider.notifier).load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final secondTryController = ref.watch(secondTryControllerProvider.notifier);
    return Scaffold(
      appBar: AppBar(),
      // Since the load() function is called in a post frame, the state is not initally loaded.
      // Thus we added a "loaded" boolean to build the widget only if the controller is loaded.
      body: ref.watch(secondTryControllerProvider).isLoading || !secondTryController.loaded
          ? const Center(child: CircularProgressIndicator.adaptive())
          : Center(child: Text(secondTryController.resultString, selectionColor: Colors.blueGrey)),
    );
  }
}
