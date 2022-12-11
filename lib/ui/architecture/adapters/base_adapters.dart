import 'package:hypha_wallet/ui/architecture/adapters/base_adapter_item.dart';

class BaseAdapters {
  final Set<BaseAdapterItem> adapters;

  BaseAdapters(this.adapters);

  void addAdapter(BaseAdapterItem adapter) {
    adapters.add(adapter);
  }

  // If the adapter Item is not found, an error is thrown.
  BaseAdapterItem findAdapter<T>(T data) {
    return adapters.firstWhere((adapter) => adapter.canHandleData(data),
        orElse: () => throw 'NO ADAPTER FOUND that could handle data: ${data.runtimeType}');
  }
}
