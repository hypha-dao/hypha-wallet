import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypha_wallet/core/error_handler/model/hypha_error.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/core/network/models/outcome_model.dart';
import 'package:hypha_wallet/core/network/models/proposal_creation_model.dart';

part 'page_command.dart';

part 'proposal_creation_bloc.freezed.dart';

part 'proposal_creation_event.dart';

part 'proposal_creation_state.dart';

class ProposalCreationBloc
    extends Bloc<ProposalCreationEvent, ProposalCreationState> {
  final List<DaoData> daos;

  ProposalCreationBloc(this.daos)
      : super(ProposalCreationState(proposal: ProposalCreationModel())) {
    on<_UpdateCurrentView>(_updateCurrentView);
    on<_UpdateProposal>(_updateProposal);
    on<_PublishProposal>(_publishProposal);
    on<_ClearPageCommand>((_, emit) => emit(state.copyWith(command: null)));
    _pageController = PageController(initialPage: daos.length > 1 ? 0 : 1);
    if (daos.length == 1) {
      emit(state.copyWith(
          proposal: state.proposal!.copyWith({'dao': daos.first})));
    }
  }

  late final PageController _pageController;

  PageController get pageController => _pageController;

  Future<void> _updateCurrentView(
      _UpdateCurrentView event, Emitter<ProposalCreationState> emit) async {
    if (event.nextViewIndex == -1) {
      emit(
          state.copyWith(command: const PageCommand.navigateBackToProposals()));
    } else {
      switch (event.nextViewIndex) {
        case 0:
          navigate(emit, event.nextViewIndex);
          break;
        case 1:
          navigate(emit, event.nextViewIndex);
          break;
        case 2:
          if (state.proposal!.title != null &&
              state.proposal!.details != null) {
            navigate(emit, event.nextViewIndex);
          }
          break;
        case 3:
          navigate(
              emit,
              state.proposal!.type == OutcomeType.agreement.label
                  ? event.nextViewIndex + 1
                  : event.nextViewIndex);
          break;
        case 4:
          navigate(emit, event.nextViewIndex);
          break;
        case 5:
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

  Future<void> _updateProposal(
      _UpdateProposal event, Emitter<ProposalCreationState> emit) async {
    final ProposalCreationModel proposal =
        state.proposal!.copyWith(event.updates);
    emit(state.copyWith(proposal: proposal));
  }

  Future<void> _publishProposal(
      _PublishProposal event, Emitter<ProposalCreationState> emit) async {
    // TODO(Zied): Implement proposal creation logic
  }
}
