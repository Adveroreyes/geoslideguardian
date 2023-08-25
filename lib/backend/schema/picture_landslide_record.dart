import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PictureLandslideRecord extends FirestoreRecord {
  PictureLandslideRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "PictureLandslide" field.
  String? _pictureLandslide;
  String get pictureLandslide => _pictureLandslide ?? '';
  bool hasPictureLandslide() => _pictureLandslide != null;

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _pictureLandslide = snapshotData['PictureLandslide'] as String?;
    _id = snapshotData['Id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PictureLandslide');

  static Stream<PictureLandslideRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PictureLandslideRecord.fromSnapshot(s));

  static Future<PictureLandslideRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PictureLandslideRecord.fromSnapshot(s));

  static PictureLandslideRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PictureLandslideRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PictureLandslideRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PictureLandslideRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PictureLandslideRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PictureLandslideRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPictureLandslideRecordData({
  String? pictureLandslide,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PictureLandslide': pictureLandslide,
      'Id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class PictureLandslideRecordDocumentEquality
    implements Equality<PictureLandslideRecord> {
  const PictureLandslideRecordDocumentEquality();

  @override
  bool equals(PictureLandslideRecord? e1, PictureLandslideRecord? e2) {
    return e1?.pictureLandslide == e2?.pictureLandslide && e1?.id == e2?.id;
  }

  @override
  int hash(PictureLandslideRecord? e) =>
      const ListEquality().hash([e?.pictureLandslide, e?.id]);

  @override
  bool isValidKey(Object? o) => o is PictureLandslideRecord;
}
