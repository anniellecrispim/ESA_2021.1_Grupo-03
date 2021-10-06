import 'package:app_meta/data/dummy_users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_meta/components/users_tile.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title:Text ("Lista de Usuários"),
      ),
      body: ListView.builder(
        itemCount: users.length,
          itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),

      ),
    );
  }
}