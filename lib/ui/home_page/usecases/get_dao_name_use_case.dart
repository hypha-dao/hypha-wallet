import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/services/dao_service.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/network.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart' as HResult;

class GetDaoNameUseCase {
  final DaoService _daoService;

  GetDaoNameUseCase(this._daoService);

  Future<HResult.Result<String, HyphaError>> run(String daoId, Network network) async {
    final HResult.Result<DaoData?, HyphaError> data = await _daoService.getDaoById(daoId: daoId, network: network);
    final daoName = data.asValue?.value?.settingsDaoTitle;

    if (daoName != null) {
      return HResult.Result.value(daoName);
    } else if (data.isError) {
      return HResult.Result.error(data.asError!.error);
    } else {
      return HResult.Result.error(HyphaError.generic('Could not find dao with ID: $daoId'));
    }
  }
}
