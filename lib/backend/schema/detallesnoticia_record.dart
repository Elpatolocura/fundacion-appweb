import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DetallesnoticiaRecord extends FirestoreRecord {
  DetallesnoticiaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "parrafo1" field.
  String? _parrafo1;
  String get parrafo1 => _parrafo1 ?? '';
  bool hasParrafo1() => _parrafo1 != null;

  // "parrafo2" field.
  String? _parrafo2;
  String get parrafo2 => _parrafo2 ?? '';
  bool hasParrafo2() => _parrafo2 != null;

  // "parrafo3" field.
  String? _parrafo3;
  String get parrafo3 => _parrafo3 ?? '';
  bool hasParrafo3() => _parrafo3 != null;

  // "parrafo4" field.
  String? _parrafo4;
  String get parrafo4 => _parrafo4 ?? '';
  bool hasParrafo4() => _parrafo4 != null;

  // "carrusel" field.
  List<String>? _carrusel;
  List<String> get carrusel => _carrusel ?? const [];
  bool hasCarrusel() => _carrusel != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "agradecimiento" field.
  String? _agradecimiento;
  String get agradecimiento => _agradecimiento ?? '';
  bool hasAgradecimiento() => _agradecimiento != null;

  // "codref" field.
  String? _codref;
  String get codref => _codref ?? '';
  bool hasCodref() => _codref != null;

  // "fotoprincipalnoticia" field.
  String? _fotoprincipalnoticia;
  String get fotoprincipalnoticia => _fotoprincipalnoticia ?? '';
  bool hasFotoprincipalnoticia() => _fotoprincipalnoticia != null;

  // "descripcionbreve" field.
  String? _descripcionbreve;
  String get descripcionbreve => _descripcionbreve ?? '';
  bool hasDescripcionbreve() => _descripcionbreve != null;

  // "fecha_publicacion" field.
  DateTime? _fechaPublicacion;
  DateTime? get fechaPublicacion => _fechaPublicacion;
  bool hasFechaPublicacion() => _fechaPublicacion != null;

  void _initializeFields() {
    _titulo = snapshotData['Titulo'] as String?;
    _parrafo1 = snapshotData['parrafo1'] as String?;
    _parrafo2 = snapshotData['parrafo2'] as String?;
    _parrafo3 = snapshotData['parrafo3'] as String?;
    _parrafo4 = snapshotData['parrafo4'] as String?;
    _carrusel = getDataList(snapshotData['carrusel']);
    _video = snapshotData['video'] as String?;
    _agradecimiento = snapshotData['agradecimiento'] as String?;
    _codref = snapshotData['codref'] as String?;
    _fotoprincipalnoticia = snapshotData['fotoprincipalnoticia'] as String?;
    _descripcionbreve = snapshotData['descripcionbreve'] as String?;
    _fechaPublicacion = snapshotData['fecha_publicacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('detallesnoticia');

  static Stream<DetallesnoticiaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DetallesnoticiaRecord.fromSnapshot(s));

  static Future<DetallesnoticiaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DetallesnoticiaRecord.fromSnapshot(s));

  static DetallesnoticiaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DetallesnoticiaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DetallesnoticiaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DetallesnoticiaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DetallesnoticiaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DetallesnoticiaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDetallesnoticiaRecordData({
  String? titulo,
  String? parrafo1,
  String? parrafo2,
  String? parrafo3,
  String? parrafo4,
  String? video,
  String? agradecimiento,
  String? codref,
  String? fotoprincipalnoticia,
  String? descripcionbreve,
  DateTime? fechaPublicacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titulo': titulo,
      'parrafo1': parrafo1,
      'parrafo2': parrafo2,
      'parrafo3': parrafo3,
      'parrafo4': parrafo4,
      'video': video,
      'agradecimiento': agradecimiento,
      'codref': codref,
      'fotoprincipalnoticia': fotoprincipalnoticia,
      'descripcionbreve': descripcionbreve,
      'fecha_publicacion': fechaPublicacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class DetallesnoticiaRecordDocumentEquality
    implements Equality<DetallesnoticiaRecord> {
  const DetallesnoticiaRecordDocumentEquality();

  @override
  bool equals(DetallesnoticiaRecord? e1, DetallesnoticiaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.titulo == e2?.titulo &&
        e1?.parrafo1 == e2?.parrafo1 &&
        e1?.parrafo2 == e2?.parrafo2 &&
        e1?.parrafo3 == e2?.parrafo3 &&
        e1?.parrafo4 == e2?.parrafo4 &&
        listEquality.equals(e1?.carrusel, e2?.carrusel) &&
        e1?.video == e2?.video &&
        e1?.agradecimiento == e2?.agradecimiento &&
        e1?.codref == e2?.codref &&
        e1?.fotoprincipalnoticia == e2?.fotoprincipalnoticia &&
        e1?.descripcionbreve == e2?.descripcionbreve &&
        e1?.fechaPublicacion == e2?.fechaPublicacion;
  }

  @override
  int hash(DetallesnoticiaRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.parrafo1,
        e?.parrafo2,
        e?.parrafo3,
        e?.parrafo4,
        e?.carrusel,
        e?.video,
        e?.agradecimiento,
        e?.codref,
        e?.fotoprincipalnoticia,
        e?.descripcionbreve,
        e?.fechaPublicacion
      ]);

  @override
  bool isValidKey(Object? o) => o is DetallesnoticiaRecord;
}
