// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drivers_fake.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fakeIraqiInfoHash() => r'f2dbead7adbc7e5a4a3d59af3fe56e02d415c415';

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

/// See also [fakeIraqiInfo].
@ProviderFor(fakeIraqiInfo)
const fakeIraqiInfoProvider = FakeIraqiInfoFamily();

/// See also [fakeIraqiInfo].
class FakeIraqiInfoFamily extends Family<AsyncValue<List<HolderInfoRowModel>>> {
  /// See also [fakeIraqiInfo].
  const FakeIraqiInfoFamily();

  /// See also [fakeIraqiInfo].
  FakeIraqiInfoProvider call({
    String? region,
    String? garage,
  }) {
    return FakeIraqiInfoProvider(
      region: region,
      garage: garage,
    );
  }

  @override
  FakeIraqiInfoProvider getProviderOverride(
    covariant FakeIraqiInfoProvider provider,
  ) {
    return call(
      region: provider.region,
      garage: provider.garage,
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
  String? get name => r'fakeIraqiInfoProvider';
}

/// See also [fakeIraqiInfo].
class FakeIraqiInfoProvider
    extends AutoDisposeFutureProvider<List<HolderInfoRowModel>> {
  /// See also [fakeIraqiInfo].
  FakeIraqiInfoProvider({
    String? region,
    String? garage,
  }) : this._internal(
          (ref) => fakeIraqiInfo(
            ref as FakeIraqiInfoRef,
            region: region,
            garage: garage,
          ),
          from: fakeIraqiInfoProvider,
          name: r'fakeIraqiInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fakeIraqiInfoHash,
          dependencies: FakeIraqiInfoFamily._dependencies,
          allTransitiveDependencies:
              FakeIraqiInfoFamily._allTransitiveDependencies,
          region: region,
          garage: garage,
        );

  FakeIraqiInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.region,
    required this.garage,
  }) : super.internal();

  final String? region;
  final String? garage;

  @override
  Override overrideWith(
    FutureOr<List<HolderInfoRowModel>> Function(FakeIraqiInfoRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FakeIraqiInfoProvider._internal(
        (ref) => create(ref as FakeIraqiInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        region: region,
        garage: garage,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<HolderInfoRowModel>> createElement() {
    return _FakeIraqiInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FakeIraqiInfoProvider &&
        other.region == region &&
        other.garage == garage;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, region.hashCode);
    hash = _SystemHash.combine(hash, garage.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FakeIraqiInfoRef
    on AutoDisposeFutureProviderRef<List<HolderInfoRowModel>> {
  /// The parameter `region` of this provider.
  String? get region;

  /// The parameter `garage` of this provider.
  String? get garage;
}

class _FakeIraqiInfoProviderElement
    extends AutoDisposeFutureProviderElement<List<HolderInfoRowModel>>
    with FakeIraqiInfoRef {
  _FakeIraqiInfoProviderElement(super.provider);

  @override
  String? get region => (origin as FakeIraqiInfoProvider).region;
  @override
  String? get garage => (origin as FakeIraqiInfoProvider).garage;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
