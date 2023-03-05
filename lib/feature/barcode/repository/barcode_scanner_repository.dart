import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:hackathon_template/assets/theme/app_color.dart';
import 'package:injectable/injectable.dart';

/// Репозиторий для логики работы сканера
abstract class BarcodeScannerRepository {
  /// Метод сканирования штрихкода
  /// Обработанный штрихкод представляется в виде строки
  /// Необходим доступ к камере
  Future<String> scanBarcode();
}

/// Имплементация к [SampleRepository]
@Injectable(as: BarcodeScannerRepository)
class BarcodeScannerRepositoryImpl implements BarcodeScannerRepository {
  /// Цвет линии сканера
  final String _barcodeScannerLineColor = AppColor.primary.value.toString();

  /// Текст для кнопки отмены
  final String _cancelLabel = "Отмена";

  /// Возможность включить фонарик
  final bool _isShowFlashIcon = false;

  /// Режим работы сканера
  final ScanMode _mode = ScanMode.BARCODE;

  BarcodeScannerRepositoryImpl();

  @override
  Future<String> scanBarcode() async {
    // TODO: нужна ли проверка на то есть ли доступ к камере
    // TODO: может стоит возвращать String?
    // Из доке к либе не понятно что будет если отменится скан кода
    String scannedBarcode = await FlutterBarcodeScanner.scanBarcode(
      _barcodeScannerLineColor,
      _cancelLabel,
      _isShowFlashIcon,
      _mode,
    );

    return scannedBarcode;
  }
}
