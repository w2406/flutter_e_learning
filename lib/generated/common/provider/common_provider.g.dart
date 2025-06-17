// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../common/provider/common_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$databaseHash() => r'282ab6de18cf5659cf0ccd20808c37fe9789ee0e';

/// See also [database].
@ProviderFor(database)
final databaseProvider = Provider<AppDatabase>.internal(
  database,
  name: r'databaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$databaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DatabaseRef = ProviderRef<AppDatabase>;
String _$apiKeyHash() => r'f4f5908516e9611c7ffff324aa0b491f44a6ba76';

/// See also [apiKey].
@ProviderFor(apiKey)
final apiKeyProvider = FutureProvider<String?>.internal(
  apiKey,
  name: r'apiKeyProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$apiKeyHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ApiKeyRef = FutureProviderRef<String?>;
String _$apiClientHash() => r'4184234c65aace06fb924014e6b1b12547dc5417';

/// See also [apiClient].
@ProviderFor(apiClient)
final apiClientProvider = FutureProvider<DifyApiClient>.internal(
  apiClient,
  name: r'apiClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$apiClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ApiClientRef = FutureProviderRef<DifyApiClient>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
