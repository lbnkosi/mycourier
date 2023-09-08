import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShipmentsRecord extends FirestoreRecord {
  ShipmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "updated" field.
  DateTime? _updated;
  DateTime? get updated => _updated;
  bool hasUpdated() => _updated != null;

  // "driver_id" field.
  String? _driverId;
  String get driverId => _driverId ?? '';
  bool hasDriverId() => _driverId != null;

  // "sender_id" field.
  String? _senderId;
  String get senderId => _senderId ?? '';
  bool hasSenderId() => _senderId != null;

  // "recipient_name" field.
  String? _recipientName;
  String get recipientName => _recipientName ?? '';
  bool hasRecipientName() => _recipientName != null;

  // "recipient_surname" field.
  String? _recipientSurname;
  String get recipientSurname => _recipientSurname ?? '';
  bool hasRecipientSurname() => _recipientSurname != null;

  // "shipment_code" field.
  String? _shipmentCode;
  String get shipmentCode => _shipmentCode ?? '';
  bool hasShipmentCode() => _shipmentCode != null;

  // "vehicle_type" field.
  String? _vehicleType;
  String get vehicleType => _vehicleType ?? '';
  bool hasVehicleType() => _vehicleType != null;

  // "package_title" field.
  String? _packageTitle;
  String get packageTitle => _packageTitle ?? '';
  bool hasPackageTitle() => _packageTitle != null;

  // "pickup" field.
  String? _pickup;
  String get pickup => _pickup ?? '';
  bool hasPickup() => _pickup != null;

  // "dropoff" field.
  String? _dropoff;
  String get dropoff => _dropoff ?? '';
  bool hasDropoff() => _dropoff != null;

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  bool hasWeight() => _weight != null;

  // "quantity" field.
  String? _quantity;
  String get quantity => _quantity ?? '';
  bool hasQuantity() => _quantity != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _created = snapshotData['created'] as DateTime?;
    _updated = snapshotData['updated'] as DateTime?;
    _driverId = snapshotData['driver_id'] as String?;
    _senderId = snapshotData['sender_id'] as String?;
    _recipientName = snapshotData['recipient_name'] as String?;
    _recipientSurname = snapshotData['recipient_surname'] as String?;
    _shipmentCode = snapshotData['shipment_code'] as String?;
    _vehicleType = snapshotData['vehicle_type'] as String?;
    _packageTitle = snapshotData['package_title'] as String?;
    _pickup = snapshotData['pickup'] as String?;
    _dropoff = snapshotData['dropoff'] as String?;
    _weight = snapshotData['weight'] as String?;
    _quantity = snapshotData['quantity'] as String?;
    _status = snapshotData['status'] as String?;
    _price = snapshotData['price'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shipments');

  static Stream<ShipmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShipmentsRecord.fromSnapshot(s));

  static Future<ShipmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShipmentsRecord.fromSnapshot(s));

  static ShipmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShipmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShipmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShipmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShipmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShipmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShipmentsRecordData({
  String? id,
  DateTime? created,
  DateTime? updated,
  String? driverId,
  String? senderId,
  String? recipientName,
  String? recipientSurname,
  String? shipmentCode,
  String? vehicleType,
  String? packageTitle,
  String? pickup,
  String? dropoff,
  String? weight,
  String? quantity,
  String? status,
  String? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'created': created,
      'updated': updated,
      'driver_id': driverId,
      'sender_id': senderId,
      'recipient_name': recipientName,
      'recipient_surname': recipientSurname,
      'shipment_code': shipmentCode,
      'vehicle_type': vehicleType,
      'package_title': packageTitle,
      'pickup': pickup,
      'dropoff': dropoff,
      'weight': weight,
      'quantity': quantity,
      'status': status,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShipmentsRecordDocumentEquality implements Equality<ShipmentsRecord> {
  const ShipmentsRecordDocumentEquality();

  @override
  bool equals(ShipmentsRecord? e1, ShipmentsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.created == e2?.created &&
        e1?.updated == e2?.updated &&
        e1?.driverId == e2?.driverId &&
        e1?.senderId == e2?.senderId &&
        e1?.recipientName == e2?.recipientName &&
        e1?.recipientSurname == e2?.recipientSurname &&
        e1?.shipmentCode == e2?.shipmentCode &&
        e1?.vehicleType == e2?.vehicleType &&
        e1?.packageTitle == e2?.packageTitle &&
        e1?.pickup == e2?.pickup &&
        e1?.dropoff == e2?.dropoff &&
        e1?.weight == e2?.weight &&
        e1?.quantity == e2?.quantity &&
        e1?.status == e2?.status &&
        e1?.price == e2?.price;
  }

  @override
  int hash(ShipmentsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.created,
        e?.updated,
        e?.driverId,
        e?.senderId,
        e?.recipientName,
        e?.recipientSurname,
        e?.shipmentCode,
        e?.vehicleType,
        e?.packageTitle,
        e?.pickup,
        e?.dropoff,
        e?.weight,
        e?.quantity,
        e?.status,
        e?.price
      ]);

  @override
  bool isValidKey(Object? o) => o is ShipmentsRecord;
}
