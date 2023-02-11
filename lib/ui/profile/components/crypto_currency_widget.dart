import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hypha_wallet/design/dividers/hypha_divider.dart';
import 'package:hypha_wallet/design/hypha_colors.dart';
import 'package:hypha_wallet/design/themes/extensions/theme_extension_provider.dart';

class CryptoCurrencyWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final bool selected;
  final String address;
  final String? subAddress;
  final GestureTapCallback? onTap;
  final ValueChanged<bool>? onChanged;

  const CryptoCurrencyWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.selected,
    required this.address,
    this.subAddress,
    this.onTap,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: context.isDarkMode ? HyphaColors.lightBlack : HyphaColors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 22, top: 12, bottom: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                leading: ClipOval(child: Image.network(imageUrl)),
                visualDensity: VisualDensity.compact,
                title: Text(name, style: context.hyphaTextTheme.smallTitles),
                subtitle: Text('Only visible to you', style: context.hyphaTextTheme.ralMediumSmallNote),
                trailing: Switch.adaptive(value: selected, onChanged: onChanged),
              ),
              const SizedBox(height: 14),
              const HyphaDivider(),
              const SizedBox(height: 20),
              AddressContainer(address: address, selected: selected),
              if (subAddress != null) ...[
                const SizedBox(height: 14),
                AddressContainer(address: subAddress!, selected: selected),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class AddressContainer extends StatelessWidget {
  final String address;
  final bool selected;

  const AddressContainer({super.key, required this.address, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: HyphaColors.midGrey.withOpacity(0.10),
      ),
      child: Text(
        address,
        style: context.hyphaTextTheme.ralMediumBody.copyWith(
          color: !selected ? HyphaColors.midGrey : context.hyphaTextTheme.ralMediumBody.color,
        ),
      ),
    );
  }
}
