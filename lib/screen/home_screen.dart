import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // true - pop 가능
        // false - pop 불가능
        final canPop =Navigator.of(context).canPop();
        return canPop;
      },
      child: MainLayout(
        title: 'HomeScreen',
        children: [
          ElevatedButton(onPressed: (){
            print(Navigator.of(context).canPop());
          }, child: Text('Can Pop')),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop(123);
            },
            child: Text('maybepop'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(123);
            },
            child: Text('pop'),
          ),
          ElevatedButton(
            onPressed: () async {
              final result = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => RouteOneScreen(
                    number: 123,
                  ),
                ),
              );
              print(result);
            },
            child: Text('Push'),
          )
        ],
      ),
    );
  }
}
