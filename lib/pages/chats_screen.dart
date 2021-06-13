import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              // trailing: Text(dummyData[index].time),
              leading: CircleAvatar(
                  // foregroundColor: Theme.of(context).primaryColor,
                  // backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(dummyData[index].avatar)),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dummyData[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      dummyData[index].time,
                      style: const TextStyle(fontSize: 11, color: Colors.grey),
                    )
                  ],
                ),
              ),
              subtitle: Text(
                dummyData[index].message,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 13.5, color: Colors.grey),
              ),
            ),
            const Divider(
              height: 4,
              indent: 70,
            ),
          ],
        );
      },
      itemCount: dummyData.length,
    );
  }
}
