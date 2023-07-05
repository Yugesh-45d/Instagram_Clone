import 'package:flutter/material.dart';

class AccountModal extends StatefulWidget {
  const AccountModal({super.key});

  @override
  State<AccountModal> createState() => _AccountModalState();
}

class _AccountModalState extends State<AccountModal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: ListView(
        children: [
          Icon(
            Icons.horizontal_rule_rounded,
            size: 56,
            color: Colors.grey,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage(
                "assets/4.jpg",
              ),
            ),
            title: Text(
              "john_snow",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Icon(
              Icons.radio_button_checked_outlined,
              color: Colors.blue,
              size: 32,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ListTile(
            leading: Icon(
              Icons.add_circle_outline_rounded,
              size: 64,
              color: Colors.black,
            ),
            title: Text(
              "Add account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
