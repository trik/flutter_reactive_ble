import 'package:functional_data/functional_data.dart';

import 'uuid.dart';

part 'discovered_descriptor.g.dart';
//ignore_for_file: annotate_overrides

/// Specific BLE descriptor for a BLE device characterised by [deviceId], [serviceId],
/// [characteristicId] and [descriptorId].
@FunctionalData()
class DiscoveredDescriptor extends $DiscoveredDescriptor {
  /// Unique uuid of the specific descriptor
  final Uuid descriptorId;

  /// Characteristic uuid of the descriptor
  final Uuid characteristicId;

  /// Service uuid of the descriptor
  final Uuid serviceId;

  /// Permissions
  final bool isReadable;
  final bool isWritable;

  const DiscoveredDescriptor({
    required this.descriptorId,
    required this.characteristicId,
    required this.serviceId,
    required this.isReadable,
    required this.isWritable,
  });
}
