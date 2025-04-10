// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:creartify/data/database/local_storage.dart' as _i121;
import 'package:creartify/data/database/secure_storage.dart' as _i742;
import 'package:creartify/di/modules/dio_module.dart' as _i597;
import 'package:creartify/di/modules/global_key_module.dart' as _i111;
import 'package:creartify/di/modules/secure_pref_module.dart' as _i619;
import 'package:creartify/di/modules/share_pref_module.dart' as _i936;
import 'package:creartify/presentation/router/app_router.dart' as _i338;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter/cupertino.dart' as _i719;
import 'package:flutter/widgets.dart' as _i718;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final globalKeyModule = _$GlobalKeyModule();
    final securePrefModule = _$SecurePrefModule();
    final sharePrefModule = _$SharePrefModule();
    final registerModule = _$RegisterModule();
    gh.factory<_i719.GlobalKey<_i719.NavigatorState>>(
        () => globalKeyModule.pref());
    gh.factory<_i558.FlutterSecureStorage>(() => securePrefModule.prefs());
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharePrefModule.prefs(),
      preResolve: true,
    );
    gh.singleton<_i121.LocalStorage>(
        () => _i121.LocalStorage(gh<_i460.SharedPreferences>()));
    gh.singleton<_i742.SecureStorage>(
        () => _i742.SecureStorage(gh<_i558.FlutterSecureStorage>()));
    gh.factory<_i338.AppRouter>(
        () => _i338.AppRouter(gh<_i718.GlobalKey<_i718.NavigatorState>>()));
    await gh.factoryAsync<_i361.Dio>(
      () => registerModule.pref(gh<_i742.SecureStorage>()),
      preResolve: true,
    );
    return this;
  }
}

class _$GlobalKeyModule extends _i111.GlobalKeyModule {}

class _$SecurePrefModule extends _i619.SecurePrefModule {}

class _$SharePrefModule extends _i936.SharePrefModule {}

class _$RegisterModule extends _i597.RegisterModule {}
