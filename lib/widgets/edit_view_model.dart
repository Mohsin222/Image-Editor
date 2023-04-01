import 'package:flutter/material.dart';
import 'package:image_editor/models/text_info.dart';
import 'package:image_editor/screens/edit_image_screen.dart';
import 'package:image_editor/widgets/default_button.dart';

abstract class EditImageViewModel extends State<EditImageScreen> {
  TextEditingController textEditingController = TextEditingController();
    TextEditingController creatorText = TextEditingController();

  List<TextInfo> texts = [];
  addNewText(BuildContext context) {
    setState(() {
      texts.add(TextInfo(
        text: textEditingController.text,
        left: 0,
        top: 0,
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        fontSize: 20,
        textAlign: TextAlign.left,
      ));
        Navigator.of(context).pop();
      
    });
  
  }

  addNewDialog(context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add New Text'),
          content: TextField(
            controller: textEditingController,
            maxLines: 5,
            decoration: const InputDecoration(
                suffixIcon: Icon(
                  Icons.edit,
                ),
                filled: true,
                hintText: 'Your Text Here'),
          ),
          actions: [
            DefaultButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Back'),
              color: Colors.white,
              textColor: Colors.black,
            ),
            DefaultButton(
              onPressed: ()=> addNewText(context),
              child: const Text('Add Text'),
              color: Colors.red,
              textColor: Colors.white,
            ),
          ],
        );
      },
    );
  }
}
