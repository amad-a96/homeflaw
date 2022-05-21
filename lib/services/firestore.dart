import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:homeflaw/datamodels/product_datamodel.dart';

class FirestoreManager{
final firestoreInstance = FirebaseFirestore.instance;



  Future<Product?> addData(Product product) async {
    var firebaseUser =  FirebaseAuth.instance.currentUser;
    try {
      await firestoreInstance.collection('products').add(product.toJson());
      return product;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }



  Future<List<Product>>  getData() async {

    List<Product> products = [];
    await firestoreInstance.collection('products').get().then((value) {
      value.docs.forEach((element) {
        products.add(Product.fromJson(element.data()));
       // print(element.data());
      });
  
     });
     print(products);
return products;
  }
  


}