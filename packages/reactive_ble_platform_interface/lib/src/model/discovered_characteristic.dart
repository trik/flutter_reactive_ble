import 'package:collection/collection.dart';
import 'package:functional_data/functional_data.dart';
import 'package:reactive_ble_platform_interface/src/model/discovered_descriptor.dart';

import 'uuid.dart';

part 'discovered_characteristic.g.dart';
//ignore_for_file: annotate_overrides

/// Specific BLE characteristic for a BLE device characterised by [deviceId], [serviceId] and
/// [characteristicId].
@FunctionalData()
class DiscoveredCharacteristic extends $DiscoveredCharacteristic {
  /// Unique uuid of the specific characteristic
  final Uuid characteristicId;

  /// Service uuid of the characteristic
  final Uuid serviceId;

  /// Properties
  final bool isReadable;
  final bool isWritableWithResponse;
  final bool isWritableWithoutResponse;
  final bool isNotifiable;
  final bool isIndicatable;

  const DiscoveredCharacteristic({
    required this.characteristicId,
    required this.serviceId,
    required this.isReadable,
    required this.isWritableWithResponse,
    required this.isWritableWithoutResponse,
    required this.isNotifiable,
    required this.isIndicatable,
    required this.descriptorIds,
    required this.descriptors,
  });

  @CustomEquality(DeepCollectionEquality())
  final List<Uuid> descriptorIds;

  @CustomEquality(DeepCollectionEquality())
  final List<DiscoveredDescriptor> descriptors;
}
