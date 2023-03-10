// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_try_controller.dart';

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

String _$FirstTryControllerHash() =>
    r'2453d09ac94b100c5c8c13ada13fdc9ac99cd11e';

/// See also [FirstTryController].
class FirstTryControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<FirstTryController, void> {
  FirstTryControllerProvider(
    this.myRequiredString,
  ) : super(
          () => FirstTryController()..myRequiredString = myRequiredString,
          from: firstTryControllerProvider,
          name: r'firstTryControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$FirstTryControllerHash,
        );

  final String myRequiredString;

  @override
  bool operator ==(Object other) {
    return other is FirstTryControllerProvider &&
        other.myRequiredString == myRequiredString;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, myRequiredString.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<void> runNotifierBuild(
    covariant _$FirstTryController notifier,
  ) {
    return notifier.build(
      myRequiredString,
    );
  }
}

typedef FirstTryControllerRef = AutoDisposeAsyncNotifierProviderRef<void>;

/// See also [FirstTryController].
final firstTryControllerProvider = FirstTryControllerFamily();

class FirstTryControllerFamily extends Family<AsyncValue<void>> {
  FirstTryControllerFamily();

  FirstTryControllerProvider call(
    String myRequiredString,
  ) {
    return FirstTryControllerProvider(
      myRequiredString,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<FirstTryController, void>
      getProviderOverride(
    covariant FirstTryControllerProvider provider,
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
  String? get name => r'firstTryControllerProvider';
}

abstract class _$FirstTryController
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final String myRequiredString;

  FutureOr<void> build(
    String myRequiredString,
  );
}
