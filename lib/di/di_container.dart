import 'package:get_it/get_it.dart';
import 'package:hackathon_template/di/di_container.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
GetIt initDi() => getIt.init();
