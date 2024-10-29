import 'package:hypha_wallet/core/network/models/base_proposal_model.dart';

extension BaseProposalModelExtension on BaseProposalModel {
  String formatExpiration() {
    // TODO(Zied-Saif): use another word instead of 'Expired'
    if (expiration == null) return 'Expired';

    if (isExpired()) {
      return 'Expired';
    }

    final difference = expiration!.toLocal().difference(DateTime.now());
    final days = difference.inDays;
    final hours = difference.inHours % 24;
    final minutes = difference.inMinutes % 60;

    final parts = <String>[];
    if (days > 0) {
      parts.add('$days Day${days > 1 ? 's' : ''}');
    }
    if (hours > 0) {
      parts.add('$hours hour${hours > 1 ? 's' : ''}');
    }
    if (minutes > 0) {
      parts.add('$minutes minute${minutes > 1 ? 's' : ''}');
    }

    return parts.isNotEmpty ? 'Vote closes in ${parts.join(', ')}' : 'Expired';
  }
  double quorumToPercent() => quorum==null?0:quorum!*.01;
  double unityToPercent() => unity==null?0:unity!*.01;
  double commitmentToPercent() => commitment == null ? 0 : commitment! * .01;
  bool isExpired() => expiration!.toLocal().isBefore(DateTime.now());

  bool isPassing() => (quorum ?? 0) >= (pastQuorum ?? 0) && (unity ?? 0) >= (pastUnity ?? 0);
}
