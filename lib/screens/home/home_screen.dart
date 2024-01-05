import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_project/screens/home/components/drawer_content.dart';
import 'package:recipe_project/size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomeScreen({super.key});

  // const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig(context).init(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: buildAppBar(),
      body: Body(),
      drawer: DrawerContent(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
      centerTitle: true,
      title: Image.asset("assets/images/logo2.png"),
      actions: [
        IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () {}),
        SizedBox(
          width: SizeConfig.defaultSize! * 0.5,
        )
      ],
    );
  }
}
