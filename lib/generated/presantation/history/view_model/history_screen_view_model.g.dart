// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../presantation/history/view_model/history_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$historyScreenViewModelHash() =>
    r'4ad01904d6d39dc950510f6f85fb1d8088cb3848';

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

abstract class _$HistoryScreenViewModel
    extends BuildlessAutoDisposeAsyncNotifier<HistoryScreenState> {
  late final String id;

  FutureOr<HistoryScreenState> build(String id);
}

/// See also [HistoryScreenViewModel].
@ProviderFor(HistoryScreenViewModel)
const historyScreenViewModelProvider = HistoryScreenViewModelFamily();

/// See also [HistoryScreenViewModel].
class HistoryScreenViewModelFamily
    extends Family<AsyncValue<HistoryScreenState>> {
  /// See also [HistoryScreenViewModel].
  const HistoryScreenViewModelFamily();

  /// See also [HistoryScreenViewModel].
  HistoryScreenViewModelProvider call(String id) {
    return HistoryScreenViewModelProvider(id);
  }

  @override
  HistoryScreenViewModelProvider getProviderOverride(
    covariant HistoryScreenViewModelProvider provider,
  ) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'historyScreenViewModelProvider';
}

/// See also [HistoryScreenViewModel].
class HistoryScreenViewModelProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          HistoryScreenViewModel,
          HistoryScreenState
        > {
  /// See also [HistoryScreenViewModel].
  HistoryScreenViewModelProvider(String id)
    : this._internal(
        () => HistoryScreenViewModel()..id = id,
        from: historyScreenViewModelProvider,
        name: r'historyScreenViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$historyScreenViewModelHash,
        dependencies: HistoryScreenViewModelFamily._dependencies,
        allTransitiveDependencies:
            HistoryScreenViewModelFamily._allTransitiveDependencies,
        id: id,
      );

  HistoryScreenViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<HistoryScreenState> runNotifierBuild(
    covariant HistoryScreenViewModel notifier,
  ) {
    return notifier.build(id);
  }

  @override
  Override overrideWith(HistoryScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: HistoryScreenViewModelProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    HistoryScreenViewModel,
    HistoryScreenState
  >
  createElement() {
    return _HistoryScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HistoryScreenViewModelProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HistoryScreenViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<HistoryScreenState> {
  /// The parameter `id` of this provider.
  String get id;
}

class _HistoryScreenViewModelProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          HistoryScreenViewModel,
          HistoryScreenState
        >
    with HistoryScreenViewModelRef {
  _HistoryScreenViewModelProviderElement(super.provider);

  @override
  String get id => (origin as HistoryScreenViewModelProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
