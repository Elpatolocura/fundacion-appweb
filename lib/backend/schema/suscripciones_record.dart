import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SuscripcionesRecord extends FirestoreRecord {
  SuscripcionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  void _initializeFields() {
    _correo = snapshotData['correo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('suscripciones');

  static Stream<SuscripcionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SuscripcionesRecord.fromSnapshot(s));

  static Future<SuscripcionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SuscripcionesRecord.fromSnapshot(s));

  static SuscripcionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SuscripcionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SuscripcionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SuscripcionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SuscripcionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SuscripcionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSuscripcionesRecordData({
  String? correo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'correo': correo,
    }.withoutNulls,
  );

  return firestoreData;
}

class SuscripcionesRecordDocumentEquality
    implements Equality<SuscripcionesRecord> {
  const SuscripcionesRecordDocumentEquality();

  @override
  bool equals(SuscripcionesRecord? e1, SuscripcionesRecord? e2) {
    return e1?.correo == e2?.correo;
  }

  @override
  int hash(SuscripcionesRecord? e) => const ListEquality().hash([e?.correo]);

  @override
  bool isValidKey(Object? o) => o is SuscripcionesRecord;
}
