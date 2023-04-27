import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;

CollectionReference counter =
    FirebaseFirestore.instance.collection('button-presses');

getData() async {
  var snapshot = await counter.doc('udWpYlsb94a9UxorscGX').get();
  return snapshot.data();
}

Future<void> updateData(int newCounter) async {
  print(newCounter);
  return await counter
      .doc('udWpYlsb94a9UxorscGX')
      .update({'counter': newCounter});
}
