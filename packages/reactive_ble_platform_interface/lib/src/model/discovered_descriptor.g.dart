// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discovered_descriptor.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $DiscoveredDescriptor {
  const $DiscoveredDescriptor();

  Uuid get descriptorId;
  Uuid get characteristicId;
  Uuid get serviceId;
  bool get isReadable;
  bool get isWritable;

  DiscoveredDescriptor copyWith({
    Uuid? descriptorId,
    Uuid? characteristicId,
    Uuid? serviceId,
    bool? isReadable,
    bool? isWritable,
  }) =>
      DiscoveredDescriptor(
        descriptorId: descriptorId ?? this.descriptorId,
        characteristicId: characteristicId ?? this.characteristicId,
        serviceId: serviceId ?? this.serviceId,
        isReadable: isReadable ?? this.isReadable,
        isWritable: isWritable ?? this.isWritable,
      );

  DiscoveredDescriptor copyUsing(
      void Function(DiscoveredDescriptor$Change change) mutator) {
    final change = DiscoveredDescriptor$Change._(
      this.descriptorId,
      this.characteristicId,
      this.serviceId,
      this.isReadable,
      this.isWritable,
    );
    mutator(change);
    return DiscoveredDescriptor(
      descriptorId: change.descriptorId,
      characteristicId: change.characteristicId,
      serviceId: change.serviceId,
      isReadable: change.isReadable,
      isWritable: change.isWritable,
    );
  }

  @override
  String toString() =>
      "DiscoveredDescriptor(descriptorId: $descriptorId, characteristicId: $characteristicId, serviceId: $serviceId, isReadable: $isReadable, isWritable: $isWritable)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is DiscoveredDescriptor &&
      other.runtimeType == runtimeType &&
      descriptorId == other.descriptorId &&
      characteristicId == other.characteristicId &&
      serviceId == other.serviceId &&
      isReadable == other.isReadable &&
      isWritable == other.isWritable;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode {
    var result = 17;
    result = 37 * result + descriptorId.hashCode;
    result = 37 * result + characteristicId.hashCode;
    result = 37 * result + serviceId.hashCode;
    result = 37 * result + isReadable.hashCode;
    result = 37 * result + isWritable.hashCode;
    return result;
  }
}

class DiscoveredDescriptor$Change {
  DiscoveredDescriptor$Change._(
    this.descriptorId,
    this.characteristicId,
    this.serviceId,
    this.isReadable,
    this.isWritable,
  );

  Uuid descriptorId;
  Uuid characteristicId;
  Uuid serviceId;
  bool isReadable;
  bool isWritable;
}

// ignore: avoid_classes_with_only_static_members
class DiscoveredDescriptor$ {
  static final descriptorId = Lens<DiscoveredDescriptor, Uuid>(
    (descriptorIdContainer) => descriptorIdContainer.descriptorId,
    (descriptorIdContainer, descriptorId) =>
        descriptorIdContainer.copyWith(descriptorId: descriptorId),
  );

  static final characteristicId = Lens<DiscoveredDescriptor, Uuid>(
    (characteristicIdContainer) => characteristicIdContainer.characteristicId,
    (characteristicIdContainer, characteristicId) =>
        characteristicIdContainer.copyWith(characteristicId: characteristicId),
  );

  static final serviceId = Lens<DiscoveredDescriptor, Uuid>(
    (serviceIdContainer) => serviceIdContainer.serviceId,
    (serviceIdContainer, serviceId) =>
        serviceIdContainer.copyWith(serviceId: serviceId),
  );

  static final isReadable = Lens<DiscoveredDescriptor, bool>(
    (isReadableContainer) => isReadableContainer.isReadable,
    (isReadableContainer, isReadable) =>
        isReadableContainer.copyWith(isReadable: isReadable),
  );

  static final isWritable = Lens<DiscoveredDescriptor, bool>(
    (isWritableContainer) => isWritableContainer.isWritable,
    (isWritableContainer, isWritable) =>
        isWritableContainer.copyWith(isWritable: isWritable),
  );
}
