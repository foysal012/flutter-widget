import 'package:flutter/material.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class CheckInternetConnectionStatus extends StatefulWidget {
  const CheckInternetConnectionStatus({Key? key}) : super(key: key);


  @override
  State<CheckInternetConnectionStatus> createState() => _CheckInternetConnectionStatusState();
}

class _CheckInternetConnectionStatusState extends State<CheckInternetConnectionStatus> {

  bool? result;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Internet Connection"),
      ),

      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Connection Status: ${result}"),

          ElevatedButton(
              onPressed: () async{
                bool result = await InternetConnection().hasInternetAccess;
                setState(() {

                });
              },
              child: Text("Check")
          )
        ],
      ),
    );
  }
}
