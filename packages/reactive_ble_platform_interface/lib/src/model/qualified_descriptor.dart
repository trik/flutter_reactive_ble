import 'package:meta/meta.dart';

import 'uuid.dart';

/// Specific BLE descriptor for a BLE device characterised by [deviceId], [serviceId],
/// [characteristicId] and [descriptorId].
@immutable
class QualifiedDescriptor {
  /// Unique uuid of the specific descriptor
  final Uuid descriptorId;

  /// Unique uuid of the specific characteristic
  final Uuid characteristicId;

  /// Service uuid of the characteristic
  final Uuid serviceId;

  /// Device id of the BLE device
  final String deviceId;

  const QualifiedDescriptor({
    required this.descriptorId,
    required this.characteristicId,
    required this.serviceId,
    required this.deviceId,
  });

  @override
  String toString() =>
      "$runtimeType(descriptorId: $descriptorId, characteristicId: $characteristicId, serviceId: $serviceId, deviceId: $deviceId)";

  @override
  int get hashCode =>
      ((((17 * 37) + descriptorId.hashCode) * 37 + characteristicId.hashCode) * 37 + serviceId.hashCode) * 37 +
      deviceId.hashCode;

  @override
  bool operator ==(dynamic other) =>
      runtimeType == other.runtimeType &&
      descriptorId == other.descriptorId &&
      characteristicId == other.characteristicId &&
      serviceId == other.serviceId &&
      deviceId == other.deviceId;
}
