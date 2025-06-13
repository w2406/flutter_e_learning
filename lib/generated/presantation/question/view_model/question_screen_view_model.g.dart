// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../presantation/question/view_model/question_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$questionScreenViewModelHash() =>
    r'3f1b5d3df6d1a49040f8b0f1ecd3b25a74052777';

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

abstract class _$QuestionScreenViewModel
    extends BuildlessAutoDisposeAsyncNotifier<QuestionScreenState> {
  late final String id;

  FutureOr<QuestionScreenState> build(String id);
}

/// See also [QuestionScreenViewModel].
@ProviderFor(QuestionScreenViewModel)
const questionScreenViewModelProvider = QuestionScreenViewModelFamily();

/// See also [QuestionScreenViewModel].
class QuestionScreenViewModelFamily
    extends Family<AsyncValue<QuestionScreenState>> {
  /// See also [QuestionScreenViewModel].
  const QuestionScreenViewModelFamily();

  /// See also [QuestionScreenViewModel].
  QuestionScreenViewModelProvider call(String id) {
    return QuestionScreenViewModelProvider(id);
  }

  @override
  QuestionScreenViewModelProvider getProviderOverride(
    covariant QuestionScreenViewModelProvider provider,
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
  String? get name => r'questionScreenViewModelProvider';
}

/// See also [QuestionScreenViewModel].
class QuestionScreenViewModelProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          QuestionScreenViewModel,
          QuestionScreenState
        > {
  /// See also [QuestionScreenViewModel].
  QuestionScreenViewModelProvider(String id)
    : this._internal(
        () => QuestionScreenViewModel()..id = id,
        from: questionScreenViewModelProvider,
        name: r'questionScreenViewModelProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$questionScreenViewModelHash,
        dependencies: QuestionScreenViewModelFamily._dependencies,
        allTransitiveDependencies:
            QuestionScreenViewModelFamily._allTransitiveDependencies,
        id: id,
      );

  QuestionScreenViewModelProvider._internal(
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
  FutureOr<QuestionScreenState> runNotifierBuild(
    covariant QuestionScreenViewModel notifier,
  ) {
    return notifier.build(id);
  }

  @override
  Override overrideWith(QuestionScreenViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: QuestionScreenViewModelProvider._internal(
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
    QuestionScreenViewModel,
    QuestionScreenState
  >
  createElement() {
    return _QuestionScreenViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuestionScreenViewModelProvider && other.id == id;
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
mixin QuestionScreenViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<QuestionScreenState> {
  /// The parameter `id` of this provider.
  String get id;
}

class _QuestionScreenViewModelProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          QuestionScreenViewModel,
          QuestionScreenState
        >
    with QuestionScreenViewModelRef {
  _QuestionScreenViewModelProviderElement(super.provider);

  @override
  String get id => (origin as QuestionScreenViewModelProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
