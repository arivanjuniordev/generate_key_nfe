import 'package:generate_key_nfe/src/dto/key_nfe_dto.dart';
import 'package:generate_key_nfe/src/services/key_nfe_service.dart';
import 'package:modulo11/exports.dart';

import '../helpers/uf.dart';

class KeyNfeServiceImpl implements KeyNfeServices {
  @override
  String generate(KeyNfeDto params) {
    String cNF = (params.serie + params.nNf).padLeft(8, '0');

    final ano = params.monthYear.split('/')[2];
    final ano2 = ano.substring(2, 4);
    final mes = params.monthYear.split('/')[1];
    final cUF = UF.getUF(params.uf.padLeft(2, '0'));
    final anoMes = ano2 + mes;
    final cnpj = params.cnpj.padLeft(14, '0');
    final mod = params.mod.padLeft(2, '0');
    final serie = params.serie.padLeft(3, '0');
    final nNF = params.nNf.padLeft(9, '0');
    final tpEmis = params.tpEmis;

    String chaveNFE = cUF + anoMes + cnpj + mod + serie + nNF + tpEmis + cNF;

    chaveNFE += Module11.verifyDigit(chaveNFE).toString();

    return chaveNFE;
  }
}
