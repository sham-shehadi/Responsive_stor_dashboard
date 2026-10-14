import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children:[
        ListTile(leading: CircleAvatar(child: Icon(Icons.person),),
          title: Text('Jane Doe'), subtitle: Text('Admin'),
        ),
        SizedBox(height: 24),
        ListTile(leading: Icon(Icons.home_outlined), title: Text('Home'),
        ),
        ListTile(leading: Icon(Icons.shopping_bag_outlined), title: Text('Orders'),
        ),
        ListTile(leading: Icon(Icons.inventory_2_outlined), title: Text('Products'), selected: true,
        ),
        ListTile(leading: Icon(Icons.people_outline), title: Text('Customers'),
        ),
        ListTile(leading: Icon(Icons.settings_outlined), title: Text('Settings'),
        ),
      ],
    );
  }
}