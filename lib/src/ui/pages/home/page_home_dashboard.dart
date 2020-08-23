import 'package:flutter/material.dart';

import '../../widgets/homepage/more_submenu.dart';
import '../../widgets/homepage/search_bar.dart';
import '../../widgets/homepage/widget_home_category_gridview.dart';
import '../../widgets/homepage/widget_home_header.dart';

class HomeDashboardPage extends StatelessWidget {
  const HomeDashboardPage({
    Key key,
    this.username,
  }) : super(key: key);

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomeHeaderWidget(
              search: SearchBar(),
              title: "Hai, ${username}!",
              subtitle: "Mari tingkatakan kualitas dirimu hari ini!",
            ),
            MoreOfSubMenuWidget(subtitle: "Kategori", onHitMore: () {}),
            HomepageCategoryGridView(),
          ],
        ),
      ),
    );
  }
}
