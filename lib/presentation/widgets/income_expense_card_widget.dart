import 'package:flutter/material.dart';

import '../../utils/global_function.dart';

class IncomeExpenseCard extends StatefulWidget {
  const IncomeExpenseCard({Key? key}) : super(key: key);

  @override
  State<IncomeExpenseCard> createState() => _IncomeExpenseCardState();
}

class _IncomeExpenseCardState extends State<IncomeExpenseCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Pemasukan',
                  style: GlobalFunctions.textTheme(context: context)
                      .headline3!
                      .copyWith(color: Colors.white, fontSize: 18)),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Pengeluaran',
                  style: GlobalFunctions.textTheme(context: context)
                      .headline3!
                      .copyWith(color: Colors.white, fontSize: 18)),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Selisih',
                  style: GlobalFunctions.textTheme(context: context)
                      .headline3!
                      .copyWith(color: Colors.white, fontSize: 18)),
            ],
          ),
        )
      ],
    );
  }
}
