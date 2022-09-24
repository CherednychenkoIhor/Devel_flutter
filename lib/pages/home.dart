import 'package:flutter/material.dart';
import 'package:todo_list/utils/colors.dart';
import 'package:todo_list/utils/const.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _userTodo;
  List todolist = [];

  @override
  void initState() {
    super.initState();

    todolist.addAll(['By bred', 'Wash dishes', 'Выучить Dart']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brovCol,
      appBar: AppBar(
        title: Text(brov),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: todolist.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(todolist[index]),
              child: Card(
                child: ListTile(
                  title: Text(todolist[index]),
                  trailing: IconButton(
                    icon: del,
                    onPressed: () {
                      setState(() {
                        todolist.removeAt(index);
                      });
                    },
                  ),
                ),
              ),
              onDismissed: (direction) {
                // if(direction == DismissDirection.endToStart);
                setState(() {
                  todolist.removeAt(index);
                });
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: osnCol,
        child: add,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(adEl),
                  content: TextField(
                    onChanged: (String value) {
                      _userTodo = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(close)),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            todolist.add(_userTodo);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text(ad))
                  ],
                );
              });
        },
      ),
    );
  }
}
