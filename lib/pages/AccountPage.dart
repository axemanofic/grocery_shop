import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_store/components/account/AppAccountButton.dart';
import 'package:grocery_store/components/account/AppAccountInfo.dart';
import 'package:grocery_store/components/account/AppAccountList.dart';
import 'package:grocery_store/components/account/AppAccountListItem.dart';
import 'package:grocery_store/components/global/AppButton.dart';
import 'package:grocery_store/utils/icons.dart';
import 'package:grocery_store/utils/items.dart';
import 'BasePage.dart';

class AccountPage extends BasePage {
  @override
  final int indexPage = 4;

  const AccountPage({super.key});

  Widget buildListItem(AppSettings e) {
    return AppAccountListItem(iconPath: e.icon, label: e.title);
  }

  @override
  Widget buildBody(BuildContext context) {
    List<AppSettings> settings = [
      AppSettings(
        title: "Orders",
        icon: AppPathIcons.ordersSvg,
      ),
      AppSettings(title: "My Details", icon: AppPathIcons.myDetailsSvg),
      AppSettings(
        title: "Delivery Address",
        icon: AppPathIcons.deliveryAddressSvg,
      ),
      AppSettings(
        title: "Payment Methods",
        icon: AppPathIcons.paymentMethodsSvg,
      ),
      AppSettings(
        title: "Promo Card",
        icon: AppPathIcons.promoCardSvg,
      ),
      AppSettings(
        title: "Notifecations",
        icon: AppPathIcons.notifecationsSvg,
      ),
      AppSettings(
        title: "Help",
        icon: AppPathIcons.helpSvg,
      ),
      AppSettings(
        title: "About",
        icon: AppPathIcons.aboutSvg,
      ),
    ];
    List<Widget> children = [const AppAccountInfo()];
    children.addAll(settings.map(buildListItem).toList());
    children.add(AppAccountButton());

    return SizedBox(
      child: AppAccountList(children: children),
    );
  }
}
