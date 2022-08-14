import 'package:flutter/material.dart';
import '../../../constants.dart';

class Statement extends StatelessWidget {
  const Statement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> amount = <String>['Amt Ksh: 100.00', 'Amt Ksh: 500.00'];
    final List<String> units = <String>["Units: 6.27", "Units: 29.75"];
    final List<String> meter_number = <String>["123456789", "0000000000"];

    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      itemCount: amount.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
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
                  "Meter Number: ${meter_number[index]}",
                  style: TextStyle(color: kSecondaryColor),
                ),
                trailing: Text("${units[index]}",
                    style: TextStyle(color: Color(0xFF125B50), fontSize: 13)),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
