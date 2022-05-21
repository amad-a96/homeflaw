

import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart' as fb;
class StorageManager{
 final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String>? uploadFile(String filename, String filepath) async {

   try {
   
  Reference storageReference  =  _storage.ref().child('images/$filename');
         UploadTask uploadTask =  storageReference.putFile(File(filepath));
           String imageUrl = await (await uploadTask).ref.getDownloadURL();
            print(imageUrl);
           return imageUrl;
   //downloadurl
   
} on  fb.FirebaseException catch (e) {
  print(e);
}
return "null";
  }





 
}