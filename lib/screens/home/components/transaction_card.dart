import 'package:flutter/material.dart';
import '../../../constants.dart';

class transaction_card extends StatelessWidget {
  const transaction_card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> amount = <String>[
      'Amt Ksh: 100.00',
    ];
    final List<String> units = <String>[
      "Units: 6.27",
    ];

    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      itemCount: amount.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          borderOnForeground: true,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Image.asset("assets/icons/payment.png"),
                title: Text("${amount[index]}\n",
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                subtitle: Text(
                  "${units[index]}",
                  style: TextStyle(color: kSecondaryColor),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
