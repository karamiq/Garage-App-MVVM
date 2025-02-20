// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_fake.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profilesHash() => r'167a0a22857b6797f977a5bdfefb380d7a9a8997';

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

/// See also [profiles].
@ProviderFor(profiles)
const profilesProvider = ProfilesFamily();

/// See also [profiles].
class ProfilesFamily extends Family<AsyncValue<List<HomePageInfo>>> {
  /// See also [profiles].
  const ProfilesFamily();

  /// See also [profiles].
  ProfilesProvider call({
    String? carName,
  }) {
    return ProfilesProvider(
      carName: carName,
    );
  }

  @override
  ProfilesProvider getProviderOverride(
    covariant ProfilesProvider provider,
  ) {
    return call(
      carName: provider.carName,
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
  String? get name => r'profilesProvider';
}

/// See also [profiles].
class ProfilesProvider extends AutoDisposeFutureProvider<List<HomePageInfo>> {
  /// See also [profiles].
  ProfilesProvider({
    String? carName,
  }) : this._internal(
          (ref) => profiles(
            ref as ProfilesRef,
            carName: carName,
          ),
          from: profilesProvider,
          name: r'profilesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profilesHash,
          dependencies: ProfilesFamily._dependencies,
          allTransitiveDependencies: ProfilesFamily._allTransitiveDependencies,
          carName: carName,
        );

  ProfilesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.carName,
  }) : super.internal();

  final String? carName;

  @override
  Override overrideWith(
    FutureOr<List<HomePageInfo>> Function(ProfilesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProfilesProvider._internal(
        (ref) => create(ref as ProfilesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        carName: carName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<HomePageInfo>> createElement() {
    return _ProfilesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfilesProvider && other.carName == carName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, carName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProfilesRef on AutoDisposeFutureProviderRef<List<HomePageInfo>> {
  /// The parameter `carName` of this provider.
  String? get carName;
}

class _ProfilesProviderElement
    extends AutoDisposeFutureProviderElement<List<HomePageInfo>>
    with ProfilesRef {
  _ProfilesProviderElement(super.provider);

  @override
  String? get carName => (origin as ProfilesProvider).carName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
