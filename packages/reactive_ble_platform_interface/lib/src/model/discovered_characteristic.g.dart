// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discovered_characteristic.dart';

// **************************************************************************
// FunctionalDataGenerator
// **************************************************************************

abstract class $DiscoveredCharacteristic {
  const $DiscoveredCharacteristic();

  Uuid get characteristicId;
  Uuid get serviceId;
  bool get isReadable;
  bool get isWritableWithResponse;
  bool get isWritableWithoutResponse;
  bool get isNotifiable;
  bool get isIndicatable;
  List<Uuid> get descriptorIds;
  List<DiscoveredDescriptor> get descriptors;

  DiscoveredCharacteristic copyWith({
    Uuid? characteristicId,
    Uuid? serviceId,
    bool? isReadable,
    bool? isWritableWithResponse,
    bool? isWritableWithoutResponse,
    bool? isNotifiable,
    bool? isIndicatable,
    List<Uuid>? descriptorIds,
    List<DiscoveredDescriptor>? descriptors,
  }) =>
      DiscoveredCharacteristic(
        characteristicId: characteristicId ?? this.characteristicId,
        serviceId: serviceId ?? this.serviceId,
        isReadable: isReadable ?? this.isReadable,
        isWritableWithResponse:
            isWritableWithResponse ?? this.isWritableWithResponse,
        isWritableWithoutResponse:
            isWritableWithoutResponse ?? this.isWritableWithoutResponse,
        isNotifiable: isNotifiable ?? this.isNotifiable,
        isIndicatable: isIndicatable ?? this.isIndicatable,
        descriptorIds: descriptorIds ?? this.descriptorIds,
        descriptors: descriptors ?? this.descriptors,
      );

  DiscoveredCharacteristic copyUsing(
      void Function(DiscoveredCharacteristic$Change change) mutator) {
    final change = DiscoveredCharacteristic$Change._(
      this.characteristicId,
      this.serviceId,
      this.isReadable,
      this.isWritableWithResponse,
      this.isWritableWithoutResponse,
      this.isNotifiable,
      this.isIndicatable,
      this.descriptorIds,
      this.descriptors,
    );
    mutator(change);
    return DiscoveredCharacteristic(
      characteristicId: change.characteristicId,
      serviceId: change.serviceId,
      isReadable: change.isReadable,
      isWritableWithResponse: change.isWritableWithResponse,
      isWritableWithoutResponse: change.isWritableWithoutResponse,
      isNotifiable: change.isNotifiable,
      isIndicatable: change.isIndicatable,
      descriptorIds: change.descriptorIds,
      descriptors: change.descriptors,
    );
  }

  @override
  String toString() =>
      "DiscoveredCharacteristic(characteristicId: $characteristicId, serviceId: $serviceId, isReadable: $isReadable, isWritableWithResponse: $isWritableWithResponse, isWritableWithoutResponse: $isWritableWithoutResponse, isNotifiable: $isNotifiable, isIndicatable: $isIndicatable, descriptorIds: $descriptorIds, descriptors: $descriptors)";

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      other is DiscoveredCharacteristic &&
      other.runtimeType == runtimeType &&
      characteristicId == other.characteristicId &&
      serviceId == other.serviceId &&
      isReadable == other.isReadable &&
      isWritableWithResponse == other.isWritableWithResponse &&
      isWritableWithoutResponse == other.isWritableWithoutResponse &&
      isNotifiable == other.isNotifiable &&
      isIndicatable == other.isIndicatable &&
      const DeepCollectionEquality()
          .equals(descriptorIds, other.descriptorIds) &&
      const DeepCollectionEquality().equals(descriptors, other.descriptors);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode {
    var result = 17;
    result = 37 * result + characteristicId.hashCode;
    result = 37 * result + serviceId.hashCode;
    result = 37 * result + isReadable.hashCode;
    result = 37 * result + isWritableWithResponse.hashCode;
    result = 37 * result + isWritableWithoutResponse.hashCode;
    result = 37 * result + isNotifiable.hashCode;
    result = 37 * result + isIndicatable.hashCode;
    result = 37 * result + const DeepCollectionEquality().hash(descriptorIds);
    result = 37 * result + const DeepCollectionEquality().hash(descriptors);
    return result;
  }
}

class DiscoveredCharacteristic$Change {
  DiscoveredCharacteristic$Change._(
    this.characteristicId,
    this.serviceId,
    this.isReadable,
    this.isWritableWithResponse,
    this.isWritableWithoutResponse,
    this.isNotifiable,
    this.isIndicatable,
    this.descriptorIds,
    this.descriptors,
  );

  Uuid characteristicId;
  Uuid serviceId;
  bool isReadable;
  bool isWritableWithResponse;
  bool isWritableWithoutResponse;
  bool isNotifiable;
  bool isIndicatable;
  List<Uuid> descriptorIds;
  List<DiscoveredDescriptor> descriptors;
}

// ignore: avoid_classes_with_only_static_members
class DiscoveredCharacteristic$ {
  static final characteristicId = Lens<DiscoveredCharacteristic, Uuid>(
    (characteristicIdContainer) => characteristicIdContainer.characteristicId,
    (characteristicIdContainer, characteristicId) =>
        characteristicIdContainer.copyWith(characteristicId: characteristicId),
  );

  static final serviceId = Lens<DiscoveredCharacteristic, Uuid>(
    (serviceIdContainer) => serviceIdContainer.serviceId,
    (serviceIdContainer, serviceId) =>
        serviceIdContainer.copyWith(serviceId: serviceId),
  );

  static final isReadable = Lens<DiscoveredCharacteristic, bool>(
    (isReadableContainer) => isReadableContainer.isReadable,
    (isReadableContainer, isReadable) =>
        isReadableContainer.copyWith(isReadable: isReadable),
  );

  static final isWritableWithResponse = Lens<DiscoveredCharacteristic, bool>(
    (isWritableWithResponseContainer) =>
        isWritableWithResponseContainer.isWritableWithResponse,
    (isWritableWithResponseContainer, isWritableWithResponse) =>
        isWritableWithResponseContainer.copyWith(
            isWritableWithResponse: isWritableWithResponse),
  );

  static final isWritableWithoutResponse = Lens<DiscoveredCharacteristic, bool>(
    (isWritableWithoutResponseContainer) =>
        isWritableWithoutResponseContainer.isWritableWithoutResponse,
    (isWritableWithoutResponseContainer, isWritableWithoutResponse) =>
        isWritableWithoutResponseContainer.copyWith(
            isWritableWithoutResponse: isWritableWithoutResponse),
  );

  static final isNotifiable = Lens<DiscoveredCharacteristic, bool>(
    (isNotifiableContainer) => isNotifiableContainer.isNotifiable,
    (isNotifiableContainer, isNotifiable) =>
        isNotifiableContainer.copyWith(isNotifiable: isNotifiable),
  );

  static final isIndicatable = Lens<DiscoveredCharacteristic, bool>(
    (isIndicatableContainer) => isIndicatableContainer.isIndicatable,
    (isIndicatableContainer, isIndicatable) =>
        isIndicatableContainer.copyWith(isIndicatable: isIndicatable),
  );

  static final descriptorIds = Lens<DiscoveredCharacteristic, List<Uuid>>(
    (descriptorIdsContainer) => descriptorIdsContainer.descriptorIds,
    (descriptorIdsContainer, descriptorIds) =>
        descriptorIdsContainer.copyWith(descriptorIds: descriptorIds),
  );

  static final descriptors =
      Lens<DiscoveredCharacteristic, List<DiscoveredDescriptor>>(
    (descriptorsContainer) => descriptorsContainer.descriptors,
    (descriptorsContainer, descriptors) =>
        descriptorsContainer.copyWith(descriptors: descriptors),
  );
}
