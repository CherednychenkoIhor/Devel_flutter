import 'package:flutter/material.dart';
import 'package:todo_list/utils/colors.dart';
import 'package:todo_list/utils/const.dart';

class MainScrn extends StatelessWidget {
  const MainScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: brovCol,
        appBar: AppBar(
          title: Text(brov),
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 16)),
                Text(
                  mainscr,
                  style: const TextStyle(
                      fontSize: 28, color: icn, fontFamily: 'Times New Roman'),
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/todo');
                    },
                    child: Text(maintxt))
              ],
            ),
          ],
        ));
  }
}
// Navigator.pushNamedAndRemoveUntil(context, '/todo', (route) =>  false);
