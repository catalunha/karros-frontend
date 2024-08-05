// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$vehicleListHash() => r'f297c210f195b6da3b997853b7c8e0eb8b5efc23';

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

/// See also [vehicleList].
@ProviderFor(vehicleList)
const vehicleListProvider = VehicleListFamily();

/// See also [vehicleList].
class VehicleListFamily extends Family<AsyncValue<VehicleList>> {
  /// See also [vehicleList].
  const VehicleListFamily();

  /// See also [vehicleList].
  VehicleListProvider call({
    String page = '1',
  }) {
    return VehicleListProvider(
      page: page,
    );
  }

  @override
  VehicleListProvider getProviderOverride(
    covariant VehicleListProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'vehicleListProvider';
}

/// See also [vehicleList].
class VehicleListProvider extends AutoDisposeFutureProvider<VehicleList> {
  /// See also [vehicleList].
  VehicleListProvider({
    String page = '1',
  }) : this._internal(
          (ref) => vehicleList(
            ref as VehicleListRef,
            page: page,
          ),
          from: vehicleListProvider,
          name: r'vehicleListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$vehicleListHash,
          dependencies: VehicleListFamily._dependencies,
          allTransitiveDependencies:
              VehicleListFamily._allTransitiveDependencies,
          page: page,
        );

  VehicleListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final String page;

  @override
  Override overrideWith(
    FutureOr<VehicleList> Function(VehicleListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VehicleListProvider._internal(
        (ref) => create(ref as VehicleListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<VehicleList> createElement() {
    return _VehicleListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VehicleListProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin VehicleListRef on AutoDisposeFutureProviderRef<VehicleList> {
  /// The parameter `page` of this provider.
  String get page;
}

class _VehicleListProviderElement
    extends AutoDisposeFutureProviderElement<VehicleList> with VehicleListRef {
  _VehicleListProviderElement(super.provider);

  @override
  String get page => (origin as VehicleListProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
