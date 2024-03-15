import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation/core/utiles/colors.dart';
import 'package:graduation/core/utiles/path.dart';
import 'package:graduation/core/utiles/styles.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final List<Message> _messages = <Message>[];
  final TextEditingController _textController = TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
    Message message = Message(
      text: text,
      sender: 'User1', // Replace with actual sender information
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: AppColors.kPrimary,
            ),
          ),
          title: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(555),
                child: SizedBox(
                  height: 50,
                  child: Image.asset(
                    AssetsPath.avatar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text("Fahd", style: Styles.textstyle20),
            ],
          ),
          centerTitle: true,
          toolbarHeight: 96),
      body: Column(
        children: <Widget>[
          const Divider(),
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _buildMessage(_messages[index]);
              },
            ),
          ),
          _buildInputField(),
        ],
      ),
    );
  }

  Widget _buildMessage(Message message) {
    final isUserMessage = message.sender == 'User1';

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:
            isUserMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isUserMessage)
            Padding(
              padding: const EdgeInsets.only(top: 45, right: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(555),
                child: SizedBox(
                  height: 30,
                  child: Image.asset(
                    AssetsPath.avatar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12.0),
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              decoration: BoxDecoration(
                color: isUserMessage ? AppColors.kPrimary : Colors.blue,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(18.0),
                  topLeft: Radius.circular(18.0),
                  bottomRight: Radius.circular(00.0),
                  bottomLeft: Radius.circular(18.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.sender,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    message.text,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          if (isUserMessage)
            Padding(
              padding: const EdgeInsets.only(top: 45, left: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(555),
                child: SizedBox(
                  height: 30,
                  child: Image.asset(
                    AssetsPath.avatar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 8.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: SizedBox(
              height: 38,
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  // Add any functionality for additional features
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 38,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, top: 16),
                        child: TextField(
                          controller: _textController,
                          onSubmitted: _handleSubmitted,
                          decoration: const InputDecoration(
                            hintText: 'Message',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: Image.asset(
                        AssetsPath.sendIcon), // Change mic to send icon
                    onPressed: () => _handleSubmitted(_textController.text),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String sender;
  final String text;

  Message({required this.sender, required this.text});
}
