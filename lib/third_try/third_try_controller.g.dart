// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'third_try_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$ThirdTryControllerHash() =>
    r'6661b97dab014aad830768e0d7d72e23595f7dd0';

/// See also [ThirdTryController].
final thirdTryControllerProvider =
    AutoDisposeAsyncNotifierProvider<ThirdTryController, void>(
  ThirdTryController.new,
  name: r'thirdTryControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$ThirdTryControllerHash,
);
typedef ThirdTryControllerRef = AutoDisposeAsyncNotifierProviderRef<void>;

abstract class _$ThirdTryController extends AutoDisposeAsyncNotifier<void> {
  @override
  FutureOr<void> build();
}

String _$loadHash() => r'848b8aec8da025e446dcbbfc0192efbc23295209';

/// See also [load].
class LoadProvider extends AutoDisposeFutureProvider<void> {
  LoadProvider(
    this.myRequiredString,
  ) : super(
          (ref) => load(
            ref,
            myRequiredString,
          ),
          from: loadProvider,
          name: r'loadProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$loadHash,
        );

  final String myRequiredString;

  @override
  bool operator ==(Object other) {
    return other is LoadProvider && other.myRequiredString == myRequiredString;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, myRequiredString.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef LoadRef = AutoDisposeFutureProviderRef<void>;

/// See also [load].
final loadProvider = LoadFamily();

class LoadFamily extends Family<AsyncValue<void>> {
  LoadFamily();

  LoadProvider call(
    String myRequiredString,
  ) {
    return LoadProvider(
      myRequiredString,
    );
  }

  @override
  AutoDisposeFutureProvider<void> getProviderOverride(
    covariant LoadProvider provider,
  ) {
    return call(
      provider.myRequiredString,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'loadProvider';
}
