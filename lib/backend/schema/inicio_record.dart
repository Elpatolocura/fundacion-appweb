import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class InicioRecord extends FirestoreRecord {
  InicioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "mision" field.
  String? _mision;
  String get mision => _mision ?? '';
  bool hasMision() => _mision != null;

  // "mision_foto" field.
  String? _misionFoto;
  String get misionFoto => _misionFoto ?? '';
  bool hasMisionFoto() => _misionFoto != null;

  // "vision" field.
  String? _vision;
  String get vision => _vision ?? '';
  bool hasVision() => _vision != null;

  // "vision_foto" field.
  String? _visionFoto;
  String get visionFoto => _visionFoto ?? '';
  bool hasVisionFoto() => _visionFoto != null;

  // "objetivo" field.
  String? _objetivo;
  String get objetivo => _objetivo ?? '';
  bool hasObjetivo() => _objetivo != null;

  // "objetivo_foto" field.
  String? _objetivoFoto;
  String get objetivoFoto => _objetivoFoto ?? '';
  bool hasObjetivoFoto() => _objetivoFoto != null;

  // "foto_principio1" field.
  String? _fotoPrincipio1;
  String get fotoPrincipio1 => _fotoPrincipio1 ?? '';
  bool hasFotoPrincipio1() => _fotoPrincipio1 != null;

  // "foto_principio2" field.
  String? _fotoPrincipio2;
  String get fotoPrincipio2 => _fotoPrincipio2 ?? '';
  bool hasFotoPrincipio2() => _fotoPrincipio2 != null;

  // "foto_principio3" field.
  String? _fotoPrincipio3;
  String get fotoPrincipio3 => _fotoPrincipio3 ?? '';
  bool hasFotoPrincipio3() => _fotoPrincipio3 != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _mision = snapshotData['mision'] as String?;
    _misionFoto = snapshotData['mision_foto'] as String?;
    _vision = snapshotData['vision'] as String?;
    _visionFoto = snapshotData['vision_foto'] as String?;
    _objetivo = snapshotData['objetivo'] as String?;
    _objetivoFoto = snapshotData['objetivo_foto'] as String?;
    _fotoPrincipio1 = snapshotData['foto_principio1'] as String?;
    _fotoPrincipio2 = snapshotData['foto_principio2'] as String?;
    _fotoPrincipio3 = snapshotData['foto_principio3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inicio');

  static Stream<InicioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InicioRecord.fromSnapshot(s));

  static Future<InicioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InicioRecord.fromSnapshot(s));

  static InicioRecord fromSnapshot(DocumentSnapshot snapshot) => InicioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InicioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InicioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InicioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InicioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInicioRecordData({
  String? titulo,
  String? mision,
  String? misionFoto,
  String? vision,
  String? visionFoto,
  String? objetivo,
  String? objetivoFoto,
  String? fotoPrincipio1,
  String? fotoPrincipio2,
  String? fotoPrincipio3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'mision': mision,
      'mision_foto': misionFoto,
      'vision': vision,
      'vision_foto': visionFoto,
      'objetivo': objetivo,
      'objetivo_foto': objetivoFoto,
      'foto_principio1': fotoPrincipio1,
      'foto_principio2': fotoPrincipio2,
      'foto_principio3': fotoPrincipio3,
    }.withoutNulls,
  );

  return firestoreData;
}

class InicioRecordDocumentEquality implements Equality<InicioRecord> {
  const InicioRecordDocumentEquality();

  @override
  bool equals(InicioRecord? e1, InicioRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.mision == e2?.mision &&
        e1?.misionFoto == e2?.misionFoto &&
        e1?.vision == e2?.vision &&
        e1?.visionFoto == e2?.visionFoto &&
        e1?.objetivo == e2?.objetivo &&
        e1?.objetivoFoto == e2?.objetivoFoto &&
        e1?.fotoPrincipio1 == e2?.fotoPrincipio1 &&
        e1?.fotoPrincipio2 == e2?.fotoPrincipio2 &&
        e1?.fotoPrincipio3 == e2?.fotoPrincipio3;
  }

  @override
  int hash(InicioRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.mision,
        e?.misionFoto,
        e?.vision,
        e?.visionFoto,
        e?.objetivo,
        e?.objetivoFoto,
        e?.fotoPrincipio1,
        e?.fotoPrincipio2,
        e?.fotoPrincipio3
      ]);

  @override
  bool isValidKey(Object? o) => o is InicioRecord;
}
