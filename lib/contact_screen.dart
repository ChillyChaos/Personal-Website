import 'package:flutter/material.dart';
import 'package:personal_website/url_launcher.dart';
import 'package:personal_website/widgets/title_box.dart';
import 'package:http/http.dart' as http;

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controllerTo = TextEditingController();
    final controllerSubject = TextEditingController();
    final controllerMessage = TextEditingController();

    return Container(
      child: Column(
        children: [
          const TitleBox(title: "Say Hi!", myIcon: Icons.email),
          Container(
            child: Column(
              children: [
                buildTextField(title: "Subject", controller: controllerSubject),
                const SizedBox(
                  height: 20,
                ),
                buildTextField(title: "Message", controller: controllerMessage, maxLines: 20),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () => launchEmail(
                        subject: controllerSubject.text,
                        message: controllerMessage.text,
                        email: controllerTo.text),
                    style: ElevatedButton.styleFrom(fixedSize: const Size(200, 30)),
                    child: const Text("SEND", style: const TextStyle(fontSize: 20),))
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Widget buildTextField(
          {required TextEditingController controller,
          required String title,
          int maxLines = 1}) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white
            ),
          ),
          const SizedBox(),
          Container(
            width: 500,
            child: TextField(
              cursorColor: Colors.white,
              maxLines: maxLines,
              controller: controller,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                  border: const OutlineInputBorder()),
            ),
          )
        ],
      );

  Future launchEmail({
    String email = "josh123198@gmail.com",
    required String subject,
    required String message,
  }) async {
    String url = "mailto:$email?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}";
    launchLink(url);
  }
}
