import 'package:chatapp_course/features/home/presentation/views/widgets/bottom_navigation_item.dart';
import 'package:chatapp_course/features/home/presentation/views/widgets/calls_view.dart';
import 'package:chatapp_course/features/home/presentation/views/widgets/chats_view.dart';
import 'package:chatapp_course/features/home/presentation/views/widgets/popup_menu_widget.dart';
import 'package:chatapp_course/features/home/presentation/views/widgets/status_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Widget screen = const ChatsView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Whatsapp', style: Theme.of(context).textTheme.displayLarge),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // todo: Navigate to Search Screen
            },
          ),
          const PopupMenuWidget(),
        ],
      ),
      body: Center(
        child: screen,
      ),
      bottomNavigationBar: BottomAppBar(
        // shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavigationItem(
              icon: Icons.chat,
              title: 'Chats',
              onTap: () {
                // todo: Navigate to Chats Screen
                setState(() {
                  screen = const ChatsView();
                });
              },
            ),
            BottomNavigationItem(
              icon: Icons.online_prediction,
              title: 'Status',
              onTap: () {
                setState(() {
                  screen = const StatusView();
                });
                // todo: Navigate to Message Screen
              },
            ),
            BottomNavigationItem(
              icon: Icons.call,
              title: 'Calls',
              onTap: () {
                // todo: Navigate to Calls Screen
                setState(() {
                  screen = const CallsView();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
