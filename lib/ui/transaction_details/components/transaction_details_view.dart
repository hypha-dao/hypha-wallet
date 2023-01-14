import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/slide_to/slide_to_confirm.dart';
import 'package:hypha_wallet/ui/transaction_details/interactor/transaction_details_bloc.dart';

class TransactionDetailsView extends StatelessWidget {
  const TransactionDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionDetailsBloc, TransactionDetailsState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: ListView(
              children: [
                const Text('Trans Title', textAlign: TextAlign.center),
                const Text('Some Text', textAlign: TextAlign.center),
                const Card(child: Text('Detail 1')),
                const Card(child: Text('Detail 2')),
                const SizedBox(height: 16),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          context
                              .read<TransactionDetailsBloc>()
                              .add(const TransactionDetailsEvent.onCancelTransactionTapped());
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 34,
                        )),
                    Flexible(
                      child: Builder(
                        builder: (context) {
                          final GlobalKey<SlideActionState> _key = GlobalKey();
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SlideAction(
                              key: _key,
                              onSubmit: () {
                                context
                                    .read<TransactionDetailsBloc>()
                                    .add(const TransactionDetailsEvent.onUserSlideCompleted());
                              },
                              alignment: Alignment.center,
                              submittedIcon: const CircularProgressIndicator.adaptive(),
                              sliderButtonIcon: const Icon(Icons.arrow_forward_rounded, color: Colors.black),
                              child: const Text(
                                'Slide to approve',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text('Slide to sign transaction'),
              ],
            ),
          ),
        );
      },
    );
  }
}
