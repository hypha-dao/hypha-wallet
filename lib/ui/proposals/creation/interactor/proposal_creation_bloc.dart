import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/crypto/seeds_esr/eos_action.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/api/eos_service.dart';
import 'package:hypha_wallet/core/network/models/proposal_creation_model.dart';
import 'package:hypha_wallet/core/network/repository/auth_repository.dart';

part 'page_command.dart';
part 'proposal_creation_bloc.freezed.dart';
part 'proposal_creation_event.dart';
part 'proposal_creation_state.dart';

class ProposalCreationBloc extends Bloc<ProposalCreationEvent, ProposalCreationState> {
  ProposalCreationBloc(this._eosService, this._authRepository)
      : super(ProposalCreationState(proposal: ProposalCreationModel())) {
    on<_UpdateCurrentView>(_updateCurrentView);
    on<_UpdateProposal>(_updateProposal);
    on<_PublishProposal>(_publishProposal);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  final EOSService _eosService;
  final AuthRepository _authRepository;

  // TODO(Saif): pass initialPage as parameter
  final PageController _pageController = PageController(initialPage: 0);
  PageController get pageController => _pageController;

  Future<void> _updateCurrentView(_UpdateCurrentView event, Emitter<ProposalCreationState> emit) async {
    if (event.nextViewIndex == -1) {
      emit(state.copyWith(command: const PageCommand.navigateBackToProposals()));
    } else {
      switch (event.nextViewIndex) {
        case 0:
          navigate(emit, event.nextViewIndex);
          break;
        case 1:
          navigate(emit, event.nextViewIndex);
          break;
        case 2:
          if (state.proposal!.title != null && state.proposal!.details != null) {
            navigate(emit, event.nextViewIndex);
          }
          break;
        case 3 || 4:
          navigate(emit, event.nextViewIndex);
          break;
        default:
          break;
      }
    }
  }

  void navigate(Emitter<ProposalCreationState> emit, int nextIndex) {
    emit(state.copyWith(currentViewIndex: nextIndex));
    _pageController.animateToPage(
      nextIndex,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  Future<void> _updateProposal(_UpdateProposal event, Emitter<ProposalCreationState> emit) async {
    final ProposalCreationModel proposal = state.proposal!.copyWith(event.updates);
    emit(state.copyWith(proposal: proposal));
  }

  Future<void> _publishProposal(_PublishProposal event, Emitter<ProposalCreationState> emit) async {
    try {
      // All this code should be in a use case - follow the same structure as other code.

      final daoContract = 'dao.hypha'; // fetch contract from network! See other code.

      final draft = state.proposal!;
      List<Map<String, dynamic>> content = [];
      final bool publishToStaging = true;

      switch (draft.type) {
        case 'payout':
          content = [
            {
              'label': 'content_group_label',
              'value': ['string', 'details']
            },
            {
              'label': 'recipient',
              'value': ['name', 'illumination']
            },
            {
              'label': 'title',
              'value': ['string', draft.title]
            },
            {
              'label': 'description',
              'value': ['string', draft.details]
            },
          ];

          content.add({
            'label': 'usd_amount',
            'value': ['asset', '${123.toStringAsFixed(2)} USD']
          });
          break;

        default:
          throw Exception('Invalid proposal type');
      }

      if (content.isNotEmpty) {
        final EOSAction eosAction = EOSAction()
          ..account = daoContract
          ..name = 'propose'
          ..data = {
            'dao_id': 67518,
            'proposer': 'illumination', // Change name back to your name for testing..
            'proposal_type': draft.type,
            'content_groups': [content],
            'publish': !publishToStaging,
          };
        // ignore: unused_local_variable
        final castVoteResult =
            await _eosService.runAction(signer: _authRepository.authDataOrCrash.userProfileData, action: eosAction);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
