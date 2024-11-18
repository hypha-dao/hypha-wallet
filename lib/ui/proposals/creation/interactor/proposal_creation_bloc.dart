import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/error_handler_manager.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/extension/string_extension.dart';
import 'package:hypha_wallet/core/network/models/proposal_creation_model.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/architecture/result/result.dart';
import 'package:hypha_wallet/ui/proposals/creation/usecases/publish_proposal_use_case.dart';

part 'page_command.dart';
part 'proposal_creation_bloc.freezed.dart';
part 'proposal_creation_event.dart';
part 'proposal_creation_state.dart';

class ProposalCreationBloc extends Bloc<ProposalCreationEvent, ProposalCreationState> {
  final PublishProposalUseCase _publishProposalUseCase;
  final ErrorHandlerManager _errorHandlerManager;

  ProposalCreationBloc(this._publishProposalUseCase, this._errorHandlerManager) : super(ProposalCreationState(proposal: ProposalCreationModel())) {
    on<_UpdateCurrentView>(_updateCurrentView);
    on<_UpdateProposal>(_updateProposal);
    on<_PublishProposal>(_publishProposal);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
  }

  // TODO(Saif): pass initialPage as parameter
  final PageController _pageController = PageController(initialPage: 0);

  PageController get pageController => _pageController;

  // TODO(Zied): fix emit
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

  Future<void> _updateProposalFields(updates, emit) async {
    final ProposalCreationModel proposal = state.proposal!.copyWith(updates);
    emit(state.copyWith(proposal: proposal));
  }

  Future<void> _updateProposal(_UpdateProposal event, Emitter<ProposalCreationState> emit) async {
    unawaited(_updateProposalFields(event.updates, emit));
  }

  Future<void> _publishProposal(_PublishProposal event, Emitter<ProposalCreationState> emit) async {
    emit(state.copyWith(pageState: PageState.loading));

    final Result<String, HyphaError> result = await _publishProposalUseCase.run(state.proposal!);

    if (result.isValue) {
      emit(state.copyWith(pageState: PageState.success, command: const PageCommand.navigateToSuccessPage()));
    } else {
      await _errorHandlerManager.handlerError(result.asError!.error);
      emit(state.copyWith(pageState: PageState.failure, command: PageCommand.navigateToFailurePage(result.asError!.error)));
    }
  }
}
