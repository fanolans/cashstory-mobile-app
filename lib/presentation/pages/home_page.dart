import 'package:cashstory/presentation/widgets/income_expense_card_widget.dart';
import 'package:cashstory/utils/global_function.dart';
import 'package:cashstory/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorPrimary,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 34,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.HOME_PAGE);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      '${assetIcons}icon-profile.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Farrel Nolan Syahdony',
                      style: GlobalFunctions.textTheme(context: context)
                          .headline3!
                          .copyWith(color: Colors.white, fontSize: 18),
                    ),
                    Row(
                      children: [
                        Text(
                          'Cashstory',
                          style: GlobalFunctions.textTheme(context: context)
                              .headline3!
                              .copyWith(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const IncomeExpenseCard(),
            const Divider(
              thickness: 1,
              color: Color(
                0xffE0E0E0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
