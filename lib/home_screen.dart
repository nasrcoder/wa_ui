import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Whatsapp'),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Text('chats'),
              Text('status'),
              Text('calls'),
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_vert_outlined),
              itemBuilder: (
                context,
              ) =>
                  [
                PopupMenuItem(
                  value: 1,
                  child: Text('New Group'),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text('Settings'),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text('Log Out'),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Text('Camera 1'),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/7/70/Pakistan_flag_300.png'),
                  ),
                  title: Text('MNA'),
                  subtitle: Text('How Are you?'),
                  trailing: Text('10:15 AM'),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('New Updates'),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.red,
                                width: 3,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/7/70/Pakistan_flag_300.png'),
                            ),
                          ),
                          title: Text('Your Status'),
                          subtitle: Text('35 minutes ago'),
                        ),
                      ],
                    ),
                  );
                } else {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.red,
                          width: 3,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/7/70/Pakistan_flag_300.png'),
                      ),
                    ),
                    title: Text('MNA'),
                    subtitle: Text('35 minutes ago'),
                  );
                }
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/7/70/Pakistan_flag_300.png'),
                  ),
                  title: Text('MNA'),
                  subtitle: Text(index / 2 == 0
                      ? 'you Missed audio call'
                      : 'call time is 10:15 AM'),
                  trailing:
                      Icon(index / 2 == 0 ? Icons.call : Icons.video_call),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
