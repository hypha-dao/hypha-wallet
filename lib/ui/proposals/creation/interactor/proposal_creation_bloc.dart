import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/proposal_creation_model.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/proposals/creation/usecases/publish_proposal_use_case.dart';

part 'page_command.dart';
part 'proposal_creation_bloc.freezed.dart';
part 'proposal_creation_event.dart';
part 'proposal_creation_state.dart';

class ProposalCreationBloc extends Bloc<ProposalCreationEvent, ProposalCreationState> {
  final List<DaoData> daos;
  final PublishProposalUseCase _publishProposalUseCase;
  final ErrorHandlerManager _errorHandlerManager;

  ProposalCreationBloc(this.daos, this._publishProposalUseCase, this._errorHandlerManager) : super(ProposalCreationState.initial()) {
    on<_UpdateCurrentView>(_updateCurrentView);
    on<_UpdateProposal>(_updateProposal);
    on<_PublishProposal>(_publishProposal);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));

    _pageController = PageController(initialPage: daos.length > 1 ? 0 : 1);
    if (daos.length == 1) {
      add(ProposalCreationEvent.updateProposal({'dao': daos.first}));
    }
  }

  late final PageController _pageController;

  PageController get pageController => _pageController;

  void _updateCurrentView(_UpdateCurrentView event, Emitter<ProposalCreationState> emit) {
    if (event.nextViewIndex == -1) {
      emit(state.copyWith(command: const PageCommand.navigateBackToProposals()));
    } else {
      switch (event.nextViewIndex) {
        case 0 || 1 || 3 || 4:
          navigate(emit, event.nextViewIndex);
          break;
        case 2:
          if (state.proposal.title != null && state.proposal.details != null) {
            navigate(emit, event.nextViewIndex);
          }
          break;
      // TODO(Zied): refactor this
      /* case 3:
         navigate(
              emit,
              state.proposal.type == OutcomeType.agreement.label
                  ? event.nextViewIndex + 1
                  : event.nextViewIndex);
          break; */
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

  void _updateProposal(_UpdateProposal event, Emitter<ProposalCreationState> emit) {
    final ProposalCreationModel proposal = state.proposal.copyWith(event.updates);
    emit(state.copyWith(proposal: proposal));
  }

  Future<void> _publishProposal(_PublishProposal event, Emitter<ProposalCreationState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));

    final Result<String, HyphaError> result = await _publishProposalUseCase.run(state.proposal);

    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success, command: const PageCommand.navigateToSuccessPage()));
    } else {
      await _errorHandlerManager.handlerError(result.asError!.error);
      emit(state.copyWith(pageState: PageState.failure, command: PageCommand.navigateToFailurePage(result.asError!.error)));
    }
  }
}
