import 'package:generate_key_nfe/src/services/key_nfe_service_impl.dart';

import 'dto/key_nfe_dto.dart';

class GenerateKeyNfe {
  static String generate(KeyNfeDto params) {
    final result = KeyNfeServiceImpl().generate(params);

    return result;
  }
}
