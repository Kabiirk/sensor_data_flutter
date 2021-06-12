import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  //final String uid='';
  //DatabaseService({ uid });

  // collection reference
  final CollectionReference chartCollection = FirebaseFirestore.instance.collection('sensortest');


  // Get data Stream
  Stream<QuerySnapshot> get chart {
    return chartCollection.snapshots();
  }


}

