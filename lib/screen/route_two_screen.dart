import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_Three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(
      title: 'Route two',
      children: [
        Text(
          'arguments: $arguments',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/three', arguments: 999);
          },
          child: Text('Push Named'),
        ),
        ElevatedButton(
          onPressed: () {
            //[homescreen, routeone, routetwo,routeThree 하고 나서 routetwo지움]
            Navigator.of(context).pushReplacementNamed('/three');
          },
          child: Text('Replace'),
        ),
        ElevatedButton(
            onPressed: () {
              // Navigator.of(context).pushAndRemoveUntil(
              //   MaterialPageRoute(builder: (_) => RouteThreeScreen()),
              //   (route) => route.settings.name == '/',
              // );
              Navigator.of(context).pushNamedAndRemoveUntil(
                '/three',
                    (route) => route.settings.name == '/',
              );
            },
            child: Text('pushRemoveUntil'))
      ],
    );
  }
}
