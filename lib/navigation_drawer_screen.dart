import 'package:flutter/material.dart';


class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({Key? key}) : super(key: key);

  @override
  _NavigationDrawerScreenState createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        scaffoldMessengerKey: _messengerKey,
        home: Scaffold (
          appBar: AppBar(),
          drawer: Drawer(
            child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Container(
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Container(
                          height: 100,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50.0))
                            ),
                           child: Image.network ("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Google-flutter-logo.png/799px-Google-flutter-logo.png"
                               ),
                             ),
                          const Text("Навигация во Flutter"),
                                    ],
                          ),
                        ),
                      ),
                     ListTile(
                          leading: const Icon(Icons.category,color: Colors.lightBlueAccent),
                          title: const Text("Каталог"),
                         onTap: () {
                            _messengerKey.currentState!.showSnackBar(
                              const SnackBar(content: Text("Переход в каталог")));
                         },
                      ),
                      ListTile(
                        leading: const Icon(Icons.delete_sweep, color: Colors.lightBlueAccent),
                        title: const Text("Корзина"),
                    onTap: () {
                      _messengerKey.currentState!.showSnackBar(
                          const SnackBar(content: Text("Переход в корзину")));
                    },
                  ),
                      ListTile(
                      leading: const Icon(Icons.contacts,color: Colors.lightBlueAccent),
                         title: const Text("Контакты"),
                      onTap: () {
                        _messengerKey.currentState!.showSnackBar(
                            const SnackBar(
                                content: Text("Переход в контакты")));
                      },
                    ),
                  const Divider(height: 20, color: Colors.lightBlueAccent, thickness: 2,),
                  //const Divider(),
                   const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text("Профиль"),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings,color: Colors.lightBlueAccent),
                    title: const Text("Настройки"),
                    onTap: () {
                      _messengerKey.currentState!.showSnackBar(
                          const SnackBar(content: Text("Переход в настройки")));
                    },
                  ),
              ]
              ),
          ),
        body: Center(child: Text ("Кейс-задание 2.3 Включение навигации в проект")),
      ),
          );
  }
}




