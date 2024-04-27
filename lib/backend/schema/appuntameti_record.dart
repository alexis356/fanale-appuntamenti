import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AppuntametiRecord extends FirestoreRecord {
  AppuntametiRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cliente" field.
  String? _cliente;
  String get cliente => _cliente ?? '';
  bool hasCliente() => _cliente != null;

  // "luogo" field.
  String? _luogo;
  String get luogo => _luogo ?? '';
  bool hasLuogo() => _luogo != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "prezzo" field.
  String? _prezzo;
  String get prezzo => _prezzo ?? '';
  bool hasPrezzo() => _prezzo != null;

  void _initializeFields() {
    _cliente = snapshotData['cliente'] as String?;
    _luogo = snapshotData['luogo'] as String?;
    _data = snapshotData['data'] as String?;
    _prezzo = snapshotData['prezzo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appuntameti');

  static Stream<AppuntametiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppuntametiRecord.fromSnapshot(s));

  static Future<AppuntametiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppuntametiRecord.fromSnapshot(s));

  static AppuntametiRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppuntametiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppuntametiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppuntametiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppuntametiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppuntametiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppuntametiRecordData({
  String? cliente,
  String? luogo,
  String? data,
  String? prezzo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cliente': cliente,
      'luogo': luogo,
      'data': data,
      'prezzo': prezzo,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppuntametiRecordDocumentEquality implements Equality<AppuntametiRecord> {
  const AppuntametiRecordDocumentEquality();

  @override
  bool equals(AppuntametiRecord? e1, AppuntametiRecord? e2) {
    return e1?.cliente == e2?.cliente &&
        e1?.luogo == e2?.luogo &&
        e1?.data == e2?.data &&
        e1?.prezzo == e2?.prezzo;
  }

  @override
  int hash(AppuntametiRecord? e) =>
      const ListEquality().hash([e?.cliente, e?.luogo, e?.data, e?.prezzo]);

  @override
  bool isValidKey(Object? o) => o is AppuntametiRecord;
}
