// import 'package:injectable/injectable.dart';
// import 'package:prepared_flutter_project/feature/sample/data/api/sample_api.dart';
// import 'package:prepared_flutter_project/feature/sample/data/mapper/info_mapper.dart';
// import 'package:prepared_flutter_project/feature/sample/domain/entity/entity_export.dart';
//
// /// Репозиторий
// abstract class SampleRepository {
//   Future<Info> getInfo();
// }
//
// /// Имплементация к [SampleRepository]
// @Injectable(as: SampleRepository)
// class SampleRepositoryImpl implements SampleRepository {
//   /// Апи
//   final SampleApi _api;
//
//   SampleRepositoryImpl(
//     this._api,
//   );
//
//   @override
//   Future<Info> getInfo() async{
//     final info = await _api.getV1Info();
//
//     return mapInfo(info);
//   }
// }
