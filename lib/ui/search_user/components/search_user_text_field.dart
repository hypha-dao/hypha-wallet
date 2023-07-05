import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/ui/architecture/interactor/page_states.dart';
import 'package:hypha_wallet/ui/search_user/interactor/search_user_bloc.dart';

class SearchUserTextField extends StatefulWidget {
  const SearchUserTextField({super.key});

  @override
  _SearchUserTextFieldState createState() => _SearchUserTextFieldState();
}

class _SearchUserTextFieldState extends State<SearchUserTextField> {
  final TextEditingController _controller = TextEditingController();
  final _searchBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(color: HyphaColors.primaryBlu, width: 2.0),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      autocorrect: false,
      controller: _controller,
      onChanged: (value) {
        BlocProvider.of<SearchUserBloc>(context).add(SearchUserEvent.onSearchQueryChanged(value.toLowerCase()));
      },
      decoration: InputDecoration(
        suffixIcon: BlocBuilder<SearchUserBloc, SearchUserState>(
          builder: (context, state) {
            return state.pageState == PageState.loading
                ? Transform.scale(
                    scale: 0.5,
                    child: const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(HyphaColors.primaryBlu),
                    ),
                  )
                : IconButton(
                    icon: Icon(state.showClearIcon ? Icons.clear : Icons.search, color: HyphaColors.white, size: 26),
                    onPressed: () {
                      if (state.showClearIcon) {
                        BlocProvider.of<SearchUserBloc>(context).add(const SearchUserEvent.onClearIconTapped());
                        _controller.clear();
                      }
                    },
                  );
          },
        ),
        enabledBorder: _searchBorder,
        focusedBorder: _searchBorder,
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
        hintText: 'Search...',
      ),
    );
  }
}
