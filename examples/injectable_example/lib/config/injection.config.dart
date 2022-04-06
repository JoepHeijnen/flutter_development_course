// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../providers/quote_api_provider.dart' as _i3;
import '../repositories/quote_repository.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.QuoteApiProvider>(_i3.MockQuoteApiProvider());
  gh.singleton<_i3.QuoteApiProvider>(_i3.RealQuoteApiProvider(),
      instanceName: 'prod');
  gh.factoryParam<_i4.QuoteRepository, dynamic, dynamic>((env, _) =>
      _i4.QuoteRepository(
          provider: get<_i3.QuoteApiProvider>(instanceName: 'prod'), env: env));
  return get;
}
