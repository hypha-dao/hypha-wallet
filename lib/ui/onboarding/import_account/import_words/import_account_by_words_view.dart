import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/background/hypha_page_background.dart';
import 'package:hypha_wallet/design/buttons/hypha_app_button.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/progress_indicator/hypha_progress_indicator.dart';
import 'package:hypha_wallet/design/secret_phrase/hypha_secret_phrase.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';
import 'package:hypha_wallet/ui/onboarding/components/onboarding_appbar.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/components/user_account_list.dart';
import 'package:hypha_wallet/ui/onboarding/import_account/interactor/import_account_bloc.dart';

class ImportAccountByWordsView extends StatelessWidget {
  const ImportAccountByWordsView({super.key});

  @override
  Widget build(BuildContext context) {
    return HyphaPageBackground(
      child: Scaffold(
        backgroundColor: HyphaColors.transparent,
        appBar: const OnboardingAppbar(title: 'Use your', subTitle: ' 12 Secret words'),
        bottomNavigationBar: BlocBuilder<ImportAccountBloc, ImportAccountState>(
          buildWhen: (previous, current) =>
              previous.isPartialLoading != current.isPartialLoading ||
              previous.isPrivateKeyValid != current.isPrivateKeyValid,
          builder: (context, state) {
            return HyphaAppButton(
              margin: const EdgeInsets.only(left: 45, right: 45, bottom: 45, top: 16),
              isLoading: state.isPartialLoading,
              onPressed: state.isPrivateKeyValid
                  ? () {
                      context.read<ImportAccountBloc>().add(const ImportAccountEvent.onActionButtonTapped(true));
                    }
                  : null,
              title: 'Next',
              isActive: state.isPrivateKeyValid,
            );
          },
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    'Enter your secret phrase to import your Hypha Account',
                    style: context.hyphaTextTheme.regular.copyWith(color: HyphaColors.primaryBlu),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),
                BlocBuilder<ImportAccountBloc, ImportAccountState>(
                  buildWhen: (p, c) => p.userEnteredWords != c.userEnteredWords,
                  builder: (context, state) {
                    return HyphaSecretPhrase(
                      words: state.userEnteredWords,
                      onSelected: (value) {
                        context.read<ImportAccountBloc>().add(ImportAccountEvent.onWordChanged(value.value, value.key));
                      },
                      onChanged: (value) {
                        context.read<ImportAccountBloc>().add(ImportAccountEvent.onWordChanged(value.value, value.key));
                      },
                    );
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      context.read<ImportAccountBloc>().add(const ImportAccountEvent.onUserPastedWords());
                    },
                    child: Text(
                      'Paste Words',
                      style: context.hyphaTextTheme.buttons.copyWith(color: HyphaColors.offWhite),
                    ),
                  ),
                ),
                BlocBuilder<ImportAccountBloc, ImportAccountState>(
                  buildWhen: (p, c) => p.isPartialLoading != c.isPartialLoading || p.accounts != c.accounts,
                  builder: (context, state) {
                    if (state.isPartialLoading) {
                      return const Padding(
                        padding: EdgeInsets.only(top: 60),
                        child: HyphaProgressIndicator(),
                      );
                    } else {
                      return UserAccountList(
                        accounts: state.accounts,
                        onTap: (data) {
                          context.read<ImportAccountBloc>().add(ImportAccountEvent.onAccountSelected(data));
                        },
                      );
                    }
                  },
                ),
                const SizedBox(height: 120),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
