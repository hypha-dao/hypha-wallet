import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/slide_to/slide_to_confirm.dart';
import 'package:hypha_wallet/ui/transaction_details/interactor/transaction_details_bloc.dart';

class TransactionDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionDetailsBloc, TransactionDetailsState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: ListView(
              children: [
                Text('Trans Title', textAlign: TextAlign.center),
                Text('Some Text', textAlign: TextAlign.center),
                Card(child: Text('Detail 1')),
                Card(child: Text('Detail 2')),
                SizedBox(height: 16),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          context
                              .read<TransactionDetailsBloc>()
                              .add(TransactionDetailsEvent.onCancelTransactionTapped());
                        },
                        icon: Icon(
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
                                    .add(TransactionDetailsEvent.onUserSlideCompleted());
                              },
                              alignment: Alignment.center,
                              submittedIcon: CircularProgressIndicator.adaptive(),
                              child: Text(
                                'Slide to approve',
                                style: TextStyle(color: Colors.white),
                              ),
                              sliderButtonIcon: Icon(Icons.arrow_forward_rounded, color: Colors.black),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text('Slide to sign transaction'),
              ],
            ),
          ),
        );
      },
    );
  }
}
