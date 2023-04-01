import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_editor/screens/edit_image_screen.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: IconButton(icon: Icon(Icons.upload_file),onPressed: ()async{
final ImagePicker picker = ImagePicker();
     XFile? file =    await  picker.pickImage(source: ImageSource.gallery,);

     if(file !=null){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> EditImageScreen(selectedImage: file.path)));
     }
        },),
      ),
    );
  }
}