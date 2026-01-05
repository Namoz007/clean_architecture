// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_architecture/core/router/app_router.dart' as _i210;
import 'package:clean_architecture/core/services/%20network_info_plus_service.dart'
    as _i421;
import 'package:clean_architecture/core/services/file_picker_service.dart'
    as _i780;
import 'package:clean_architecture/core/services/geolocator_service.dart'
    as _i229;
import 'package:clean_architecture/core/services/image_picker_service.dart'
    as _i421;
import 'package:clean_architecture/core/services/permission_handler_service.dart'
    as _i739;
import 'package:clean_architecture/core/services/phone_caller_service.dart'
    as _i466;
import 'package:clean_architecture/src.dart' as _i93;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i210.AppRouter>(() => _i210.AppRouter());
    gh.lazySingleton<_i229.GeolocatorService>(() => _i229.GeolocatorService());
    gh.lazySingleton<_i739.PermissionHandlerService>(
      () => _i739.PermissionHandlerService(),
    );
    gh.lazySingleton<_i466.PhoneCallerService>(
      () => _i466.PhoneCallerService(),
    );
    gh.lazySingleton<_i780.FilePickerService>(
      () => _i780.FilePickerService(picker: gh<_i93.FilePicker>()),
    );
    gh.lazySingleton<_i421.ImagePickerService>(
      () => _i421.ImagePickerService(picker: gh<_i93.ImagePicker>()),
    );
    gh.lazySingleton<_i421.NetWorkInfoPlusService>(
      () => _i421.NetWorkInfoPlusService(info: gh<_i93.NetworkInfo>()),
    );
    return this;
  }
}
