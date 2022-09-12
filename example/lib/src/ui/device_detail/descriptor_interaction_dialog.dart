import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';
import 'package:flutter_reactive_ble_example/src/ble/ble_device_interactor.dart';
import 'package:provider/provider.dart';

class DescriptorInteractionDialog extends StatelessWidget {
  const DescriptorInteractionDialog({
    required this.descriptor,
    Key? key}) : super(key: key);
  final QualifiedDescriptor descriptor;

  @override
  Widget build(BuildContext context) => Consumer<BleDeviceInteractor>(
      builder: (context, interactor, _) => _DescriptorInteractionDialog(
        descriptor: descriptor,
        readDescriptor: interactor.readDescriptor,
        writeDescriptor: interactor.writeDescriptor,
      ));
}

class _DescriptorInteractionDialog extends StatefulWidget {
  const _DescriptorInteractionDialog({required this.descriptor,
    required this.readDescriptor,
    required this.writeDescriptor, Key? key}) : super(key: key);
  final QualifiedDescriptor descriptor;
  final Future<List<int>> Function(QualifiedDescriptor descriptor)
  readDescriptor;
  final Future<void> Function(
      QualifiedDescriptor descriptor, List<int> value)
  writeDescriptor;

  @override
  State<_DescriptorInteractionDialog> createState() => _DescriptorInteractionDialogState();
}

class _DescriptorInteractionDialogState extends State<_DescriptorInteractionDialog> {
  late String readOutput;
  late String writeOutput;
  late TextEditingController textEditingController;

  @override
  void initState() {
    readOutput = '';
    writeOutput = '';
    textEditingController = TextEditingController();
    super.initState();
  }

  Future<void> readDescriptor() async {
    final result = await widget.readDescriptor(widget.descriptor);
    setState(() {
      readOutput = result.toString();
    });
  }

  List<int> _parseInput() => textEditingController.text
    .split(',')
    .map(
      int.parse,
    ).toList();

  Future<void> writeDescriptor() async {
    await widget.writeDescriptor(widget.descriptor, _parseInput());
    setState(() {
      writeOutput = 'Done';
    });
  }

  Widget sectionHeader(String text) => Text(
    text,
    style: const TextStyle(fontWeight: FontWeight.bold),
  );

  List<Widget> get writeSection => [
    sectionHeader('Write descriptor'),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: textEditingController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Value',
        ),
        keyboardType: const TextInputType.numberWithOptions(
          decimal: true,
          signed: false,
        ),
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: writeDescriptor,
          child: const Text('Write'),
        ),
      ],
    ),
    Padding(
      padding: const EdgeInsetsDirectional.only(top: 8.0),
      child: Text('Output: $writeOutput'),
    ),
  ];

  List<Widget> get readSection => [
    sectionHeader('Read descriptor'),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: readDescriptor,
          child: const Text('Read'),
        ),
        Text('Output: $readOutput'),
      ],
    ),
  ];

  Widget get divider => const Padding(
    padding: EdgeInsets.symmetric(vertical: 12.0),
    child: Divider(thickness: 2.0),
  );

  @override
  Widget build(BuildContext context) => Dialog(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        shrinkWrap: true,
        children: [
          const Text(
            'Select an operation',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "${widget.descriptor.descriptorId} ${widget.descriptor.characteristicId} ${widget.descriptor.serviceId}",
            ),
          ),
          divider,
          ...readSection,
          divider,
          ...writeSection,
          divider,
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('close')),
            ),
          )
        ],
      ),
    ),
  );
}
