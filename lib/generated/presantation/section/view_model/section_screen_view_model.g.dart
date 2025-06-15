// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../presantation/section/view_model/section_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sectionScreenViewModelHash() =>
    r'5d93d8668c572d9af9d4e5a339f67b8f8db39259';

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

abstract class _$SectionScreenViewModel
    extends BuildlessAutoDisposeAsyncNotifier<SectionScreenState> {
  late final String sectionId;

  FutureOr<SectionScreenState> build(String sectionId);
}

/// See also [SectionScreenViewModel].
@ProviderFor(SectionScreenViewModel)
const sectionScreenViewModelProvider = SectionScreenViewModelFamily();

/// See also [SectionScreenViewModel].
class SectionScreenViewModelFamily
    extends Family<AsyncValue<SectionScreenState>> {
  /// See also [SectionScreenViewModel].
  const SectionScreenViewModelFamily();

  /// See also [SectionScreenViewModel].
  SectionScreenViewModelProvider call(String sectionId) {
    return SectionScreenViewModelProvider(sectionId);
  }

  @override
  SectionScreenViewModelProvider getProviderOverride(
    covariant SectionScreenViewModelProvider provider,
  ) {
    return call(provider.sectionId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sectionScreenViewModelProvider';
}

/// See also [SectionScreenViewModel].
class SectionScreenViewModelProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          SectionScreenViewModel,
          SectionScreenState
        > {
  /// See also [SectionScreenViewModel].
  SectionScreenViewModelProvider(String sectionId)
    : this._internal(
        () => SectionScreenViewModel()..sectionId = sectionId,
        from: sectionScreenViewModelProvider,
        name: r'sectionScreenViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$sectionScreenViewModelHash,
        dependencies: SectionScreenViewModelFamily._dependencies,
        allTransitiveDependencies:
            SectionScreenViewModelFamily._allTransitiveDependencies,
        sectionId: sectionId,
      );

  SectionScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sectionId,
  }) : super.internal();

  final String sectionId;

  @override
  FutureOr<SectionScreenState> runNotifierBuild(
    covariant SectionScreenViewModel notifier,
  ) {
    return notifier.build(sectionId);
  }

  @override
  Override overrideWith(SectionScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SectionScreenViewModelProvider._internal(
        () => create()..sectionId = sectionId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sectionId: sectionId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    SectionScreenViewModel,
    SectionScreenState
  >
  createElement() {
    return _SectionScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SectionScreenViewModelProvider &&
        other.sectionId == sectionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sectionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SectionScreenViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<SectionScreenState> {
  /// The parameter `sectionId` of this provider.
  String get sectionId;
}

class _SectionScreenViewModelProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          SectionScreenViewModel,
          SectionScreenState
        >
    with SectionScreenViewModelRef {
  _SectionScreenViewModelProviderElement(super.provider);

  @override
  String get sectionId => (origin as SectionScreenViewModelProvider).sectionId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
