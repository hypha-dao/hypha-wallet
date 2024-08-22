import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/services/graphql_service.dart';
import 'package:hypha_wallet/core/network/models/user_profile_data.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';

class ProposalService {
  final GraphQLService _graphQLService;

  const ProposalService(this._graphQLService);

  Future<Result<Map<String, dynamic>, HyphaError>> getProposals(UserProfileData user) async {
    final String query = r'{"query":"query Proposals($first: Int, $offset: Int) { queryDao(first: $first, offset: $offset) { details_daoName_n proposal(first: $first, offset: $offset) { docId ... on Poll { details_title_s details_ballotAlignment_i details_ballotQuorum_i ballot_expiration_t creator } ... on Budget { details_title_s details_ballotAlignment_i details_ballotQuorum_i ballot_expiration_t creator } ... on Queststart { details_title_s details_ballotAlignment_i details_ballotQuorum_i ballot_expiration_t creator } ... on Questcomplet { details_title_s details_ballotAlignment_i details_ballotQuorum_i ballot_expiration_t creator } ... on Policy { details_title_s details_ballotAlignment_i details_ballotQuorum_i ballot_expiration_t creator } ... on Circle { details_title_s details_ballotAlignment_i details_ballotQuorum_i ballot_expiration_t creator } ... on Payout { details_title_s details_ballotAlignment_i details_ballotQuorum_i ballot_expiration_t creator } ... on Assignment { details_title_s details_ballotAlignment_i details_ballotQuorum_i ballot_expiration_t creator } ... on Assignbadge { details_title_s details_ballotAlignment_i details_ballotQuorum_i ballot_expiration_t creator } ... on Role { details_title_s details_ballotAlignment_i details_ballotQuorum_i ballot_expiration_t creator } ... on Badge { details_title_s details_ballotAlignment_i details_ballotQuorum_i ballot_expiration_t creator } ... on Suspend { details_title_s details_ballotAlignment_i details_ballotQuorum_i ballot_expiration_t creator } ... on Edit { original { ... on Assignbadge { details_title_s } ... on Assignment { details_title_s } } details_ballotAlignment_i details_ballotQuorum_i ballot_expiration_t creator } ... on Votable { vote { ... on Vote { vote_voter_n vote_vote_s } }  } }  }}"}';

    return _graphQLService.graphQLQuery(network: user.network, query: query);
  }
}