import 'dto/key_nfe_dto.dart';
import 'services/key_nfe_service_impl.dart';

class GenerateKeyNfe {
  static String generate(KeyNfeDto params) {
    final result = KeyNfeServiceImpl().generate(params);

    return result;
  }
}
