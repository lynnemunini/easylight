import 'package:flutter/material.dart';

class transaction_card extends StatelessWidget {
  const transaction_card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> phoneNumber = <String>[
      '6666677897',
      '7777777777',
    ];
    final List<String> callType = <String>[
      "Incoming",
      "Outgoing",
    ];

    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      itemCount: phoneNumber.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          borderOnForeground: true,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.call),
                title: Text("${phoneNumber[index]}",
                    style: TextStyle(color: Colors.green)),
                subtitle: Text(
                  "${callType[index]}",
                  style: TextStyle(color: Colors.orangeAccent),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Dail'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('Call History'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
