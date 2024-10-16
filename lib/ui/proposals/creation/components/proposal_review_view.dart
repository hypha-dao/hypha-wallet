import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hypha_wallet/core/network/models/dao_data_model.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/proposals/components/proposal_header.dart';
import 'package:hypha_wallet/ui/proposals/creation/interactor/proposal_creation_bloc.dart';

class ProposalReviewView extends StatelessWidget {
  const ProposalReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: double.infinity,
      color: context.isDarkMode ? HyphaColors.darkBlack : HyphaColors.offWhite,
      child: SafeArea(
        bottom: true,
        child: LayoutBuilder(
            builder: (context, constraint) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(
                    child: BlocBuilder<ProposalCreationBloc, ProposalCreationState>(
                      builder: (context, state) {
                        final List<dynamic> jsonData = jsonDecode(state.proposal!.details!);
                        final Document document = Document.fromDelta(Delta.fromJson(jsonData));

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            const Row(
                              children: [
                                Expanded(
                                  child: ProposalHeader(
                                    DaoData(
                                      docId: 21345,
                                      detailsDaoName: '',
                                      settingsDaoTitle: 'HyphaDao',
                                      logoIPFSHash: '',
                                      logoType: '',
                                      settingsDaoUrl: '',
                                    ),
                                    text: 'Builders',
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(CupertinoIcons.hand_thumbsup, color: HyphaColors.primaryBlu),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 20),
                              child: HyphaDivider(),
                            ),
                            Text(
                              'Agreement for',
                              style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.primaryBlu),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 20),
                              child: Text(
                                state.proposal!.title!,
                                style: context.hyphaTextTheme.mediumTitles,
                              ),
                            ),
                            Text(
                              'Details',
                              style: context.hyphaTextTheme.ralMediumSmallNote.copyWith(color: HyphaColors.primaryBlu),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 20),
                              child: QuillEditor.basic(
                                controller: QuillController(
                                  document: document,
                                  selection: const TextSelection.collapsed(offset: 0),
                                  readOnly: true,
                                ),
                              ),
                            ),
                            const Spacer(),
                            HyphaAppButton(
                              title: 'Publish',
                              onPressed: () async {
                                context.read<ProposalCreationBloc>().add(const ProposalCreationEvent.publishProposal());
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
