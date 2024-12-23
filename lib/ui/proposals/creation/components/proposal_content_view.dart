import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/proposals/creation/interactor/proposal_creation_bloc.dart';

class ProposalContentView extends StatefulWidget {
  const ProposalContentView({super.key});

  @override
  State<ProposalContentView> createState() => _ProposalContentViewState();
}

class _ProposalContentViewState extends State<ProposalContentView> {
  final TextEditingController _titleController = TextEditingController();
  final QuillController _quillController = QuillController.basic();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _titleFocusNode = FocusNode();
  final FocusNode _detailsFocusNode = FocusNode();
  final ValueNotifier<bool> _isEditingTitleNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isEditingDetailsNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();

    _titleController.text = context.read<ProposalCreationBloc>().state.proposal.title ?? '';
    final String? details = context.read<ProposalCreationBloc>().state.proposal.details;
    if (details!= null) {
      final List<dynamic> jsonData = jsonDecode(details);
      _quillController.document = Document.fromDelta(Delta.fromJson(jsonData));
    }

    _titleController.addListener(() {
      context.read<ProposalCreationBloc>().add(ProposalCreationEvent.updateProposal({'title': _titleController.text.isEmpty ? null : _titleController.text}));
    });

    _titleFocusNode.addListener(() {
      _isEditingTitleNotifier.value = _titleFocusNode.hasFocus;
    });

    _detailsFocusNode.addListener(() {
      _isEditingDetailsNotifier.value = _detailsFocusNode.hasFocus;
      if (_detailsFocusNode.hasFocus) {
        _scrollToBottom();
      }
    });

    _quillController.document.changes.listen((event) {
      final String plainText = _quillController.document.toPlainText();
      final String json = jsonEncode(_quillController.document.toDelta().toJson());
      context.read<ProposalCreationBloc>().add(ProposalCreationEvent.updateProposal({'details': plainText.length == 1 ? null : json}));
      _scrollToBottom();
    });
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        Future.delayed(const Duration(milliseconds: 300), () {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        });
      }
    });
  }

  @override
  void dispose() {
    _titleFocusNode.dispose();
    _detailsFocusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        bottomSheet: ValueListenableBuilder<bool>(
            valueListenable: _isEditingDetailsNotifier,
            builder: (BuildContext context, bool isEditingDetails, Widget? child) {
              return Visibility(
                visible: isEditingDetails,
                child: QuillSimpleToolbar(
                  controller: _quillController,
                  configurations: QuillSimpleToolbarConfigurations(color: context.isDarkTheme ? HyphaColors.darkBlack : HyphaColors.offWhite, multiRowsDisplay: false, showDividers: false, showStrikeThrough: false, showSuperscript: false, showSubscript: false, showListCheck: false, showInlineCode: false, showIndent: false, showRedo: false, showHeaderStyle: false, showSearchButton: false, showFontFamily: false, showFontSize: false, showClipboardPaste: false, showCodeBlock: false, showClipboardCopy: false, showClipboardCut: false, showUndo: false, showCenterAlignment: false, showClearFormat: false, showColorButton: false, showUnderLineButton: false, showBackgroundColorButton: false, showAlignmentButtons: false),
                ),
              );
            }
        ),
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          color: context.isDarkMode ? HyphaColors.darkBlack : HyphaColors.offWhite,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Proposal Content',
                  style: context.hyphaTextTheme.smallTitles.copyWith(color: HyphaColors.primaryBlu),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: Text(
                    'Add a title for your proposal, and use the big text field to include as many details as you need.',
                    style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                  ),
                ),
                ValueListenableBuilder<bool>(
                    valueListenable: _isEditingTitleNotifier,
                    builder: (BuildContext context, bool isEditingTitle, Widget? child) {
                    return TextField(
                      focusNode: _titleFocusNode,
                      controller: _titleController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
                        hintText: 'Your Proposal Title',
                        hintStyle: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                        labelText: 'Title',
                        labelStyle: TextStyle(
                          color: isEditingTitle || _titleController.text.isEmpty
                              ? (context.isDarkMode ? HyphaColors.offWhite : HyphaColors.black)
                              : HyphaColors.primaryBlu,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
                          ),
                        ),
                      ),
                    );
                  }
                ),
                const SizedBox(height: 20),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          minHeight: 150.0,
                        ),
                        child: IntrinsicHeight(
                          child: QuillEditor.basic(
                            controller: _quillController,
                            focusNode: _detailsFocusNode,
                            configurations: QuillEditorConfigurations(
                              keyboardAppearance: context.isDarkMode
                                  ? Brightness.dark
                                  : Brightness.light,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: GestureDetector(
                        onTap: () {
                          _detailsFocusNode.requestFocus();
                        },
                        child: StreamBuilder(
                          stream: _quillController.document.changes,
                          builder: (context, snapshot) {
                            return _quillController.document.isEmpty()
                                ? Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                              child: Text(
                                'Your Proposal Details',
                                style: context.hyphaTextTheme.ralMediumBody.copyWith(color: HyphaColors.midGrey),
                              ),
                            )
                                : const SizedBox.shrink();
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 12,
                      top: -6,
                      child: ValueListenableBuilder<bool>(
                          valueListenable: _isEditingDetailsNotifier,
                          builder: (BuildContext context, bool isEditingDetails, Widget? child) {
                          return Text(
                            'Details',
                            style: context.hyphaTextTheme.ralMediumLabel.copyWith(
                              color: isEditingDetails || _quillController.document.isEmpty()
                                  ? (context.isDarkMode
                                  ? HyphaColors.offWhite
                                  : HyphaColors.black)
                                  : HyphaColors.primaryBlu,
                            ),
                          );
                        }
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewPadding.bottom + 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
