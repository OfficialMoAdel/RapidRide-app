import 'package:flutter/material.dart';

import '../../constants.dart';

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            color: ThirdColor,
            onPressed: () {
              () => Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_outlined,
            ),
          ),
          title: Text(
            'Sara',
            style: TextStyle(color: ThirdColor, fontSize: 22),
          ),
          actions: [
            IconButton(
              color: ThirdColor,
              icon: Icon(Icons.phone_outlined),
              onPressed: () {
                print('open menu');
              },
            ),
            IconButton(
              color: ThirdColor,
              icon: Icon(Icons.menu),
              onPressed: () {
                print('open menu');
              },
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ListView.builder(
                    itemCount: messages.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                          padding: EdgeInsets.only(
                              left: 16, right: 16, bottom: 10, top: 10),
                          child: Align(
                            alignment:
                                (messages[index].messageType == "recevier"
                                    ? Alignment.topLeft
                                    : Alignment.topRight),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                    (messages[index].messageType == "recevier"
                                        ? Colors.grey.shade200
                                        : Colors.amberAccent),
                              ),
                              padding: EdgeInsets.all(13),
                              child: Text(
                                messages[index].messageContent,
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 230,
              ),
              Row(
                children: [
                  Flexible(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(15)),
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 17),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.photo_size_select_actual_outlined,
                              size: 18,
                            ),
                            color: Colors.grey,
                          ),
                          hintText: 'Message...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.mic,
                      size: 28,
                      color: ThirdColor,
                    ),
                    backgroundColor: Colors.amber,
                    elevation: 0,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<ChatMessage> messages = [
  ChatMessage(messageContent: 'Hello!', messageType: "recevier"),
  ChatMessage(messageContent: 'How have you been?', messageType: "recevier"),
  ChatMessage(messageContent: 'Hey , I am doing fine ', messageType: "sender"),
  ChatMessage(messageContent: 'ehhh, doing OK', messageType: "recevier"),
  ChatMessage(
      messageContent: 'Is there any thing wrong?', messageType: "sender"),
];
