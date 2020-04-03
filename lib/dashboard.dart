import 'package:flutter/material.dart';

import 'cardwidget.dart';
import 'components/appbar.dart';
import 'config/colors.dart';
import 'config/size.dart';
import 'expenseswidget.dart';


class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);

    return Scaffold(
      body: Container(
        color: AppColors.primaryWhite,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: height / 8,
                child: CustomAppBar(),
              ),
              Expanded(
                child: CardWidget(),
              ),
              Expanded(child: ExpensesWidget())
            ],
          ),
        ),
      ),
    );
  }
}
