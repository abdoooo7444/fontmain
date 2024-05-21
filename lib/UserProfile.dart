import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final String? username;
  final VoidCallback? onLogout;
  final String? userImage;

  const UserProfile({this.username, this.onLogout, this.userImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ملف المستخدم'),
        backgroundColor: Colors.red,
        actions: [
          if (onLogout != null)
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: onLogout,
            ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (userImage != null)
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(userImage!),
              ),
            SizedBox(height: 20),
            if (username != null)
              Text(
                'معلومات المستخدم $username',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            SizedBox(height: 20),
            DataTable(
              columns: [
                DataColumn(label: Text('الخاصية')),
                DataColumn(label: Text('القيمة')),
              ],
              rows: [
                if (username != null)
                  DataRow(cells: [
                    DataCell(Text('الاسم')),
                    DataCell(Text('$username')),
                  ]),
                if (username != null)
                  DataRow(cells: [
                    DataCell(Text('البريد الإلكتروني')),
                    DataCell(Text('$username@E-mail.com')),
                  ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
