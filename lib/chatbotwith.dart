import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:velocity_x/velocity_x.dart';

// import 'chatmessage.dart';
// import 'threedots.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

// import 'chat_screen.dart';

// import 'package:flutter/material.dart';

class ThreeDots extends StatefulWidget {
  const ThreeDots({super.key});

  @override
  ThreeDotsState createState() => ThreeDotsState();
}

class ThreeDotsState extends State<ThreeDots>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _currentIndex++;
          if (_currentIndex == 3) {
            _currentIndex = 0;
          }
          _animationController!.reset();
          _animationController!.forward();
        }
      });
    _animationController!.forward();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Opacity(
              opacity: index == _currentIndex ? 1.0 : 0.2,
              child: const Text(
                '.',
                textScaleFactor: 5,
              ),
            );
          }),
        );
      },
    );
  }
}

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatGPT Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const ChatScreen(),
    );
  }
}


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<ChatMessage> _messages = [];
  late OpenAI? chatGPT;
  bool _isImageSearch = false;

  bool _isTyping = false;

  get kTranslateModelV3 => null;

  @override
  void initState() {
    chatGPT = OpenAI.instance.build(
        token: dotenv.env["API_KEY"],
        baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 60),));
    super.initState();
  }

  @override
  void dispose() {
    chatGPT?.close();
    chatGPT?.genImgClose();
    super.dispose();
  }

  // Link for api - https://beta.openai.com/account/api-keys


  void _sendMessage() async {
    if (_controller.text.isEmpty) return;
    ChatMessage message = ChatMessage(
      text: _controller.text,
      sender: "user",
      isImage: false,
    );

    setState(() {
      _messages.insert(0, message);
      _isTyping = true;
    });

    _controller.clear();

    if (_isImageSearch) {
      final request = GenerateImage(message.text, 1, size: "256x256");

      final response = await chatGPT!.generateImage(request);
      Vx.log(response!.data!.last!.url!);
      insertNewData(response.data!.last!.url!, isImage: true);
    } else {
      final request =
      CompleteText(prompt: message.text, model: kTranslateModelV3);

      // final response = await chatGPT!.onCompleteText(request: request);
      // Vx.log(response!.choices[0].text);
      // insertNewData(response.choices[0].text, isImage: false);
    }
  }

  void insertNewData(String response, {bool isImage = false}) {
    ChatMessage botMessage = ChatMessage(
      text: response,
      sender: "bot",
      isImage: isImage,
    );

    setState(() {
      _isTyping = false;
      _messages.insert(0, botMessage);
    });
  }

  Widget _buildTextComposer() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            onSubmitted: (value) => _sendMessage(),
            decoration: const InputDecoration.collapsed(
                hintText: "Question/description"),
          ),
        ),
        ButtonBar(
          children: [
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {
                _isImageSearch = false;
                _sendMessage();
              },
            ),
            TextButton(
                onPressed: () {
                  _isImageSearch = true;
                  _sendMessage();
                },
                child: const Text("Generate Image"))
          ],
        ),
      ],
    ).px16();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("ChatGPT & Dall-E2 Demo")),
        body: SafeArea(
          child: Column(
            children: [
              Flexible(
                  child: ListView.builder(
                    reverse: true,
                    padding: Vx.m8,
                    itemCount: _messages.length,
                    itemBuilder: (context, index) {
                      return _messages[index];
                    },
                  )),
              if (_isTyping) const ThreeDots(),
              const Divider(
                height: 1.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: context.cardColor,
                ),
                child: _buildTextComposer(),
              )
            ],
          ),
        ));
  }
}



class ChatMessage extends StatelessWidget {
  const ChatMessage(
      {super.key,
        required this.text,
        required this.sender,
        this.isImage = false});

  final String text;
  final String sender;
  final bool isImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(sender)
            .text
            .subtitle1(context)
            .make()
            .box
            .color(sender == "user" ? Vx.red200 : Vx.green200)
            .p16
            .rounded
            .alignCenter
            .makeCentered(),
        Expanded(
          child: isImage
              ? AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              text,
              loadingBuilder: (context, child, loadingProgress) =>
              loadingProgress == null
                  ? child
                  : const CircularProgressIndicator.adaptive(),
            ),
          )
              : text.trim().text.bodyText1(context).make().px8(),
        ),
      ],
    ).py8();
  }
}