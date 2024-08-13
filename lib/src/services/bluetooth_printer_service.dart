import 'package:blue_thermal_printer/blue_thermal_printer.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/receipt_model/receipt_model.dart';
import 'package:ivory_pay_test_task/src/services/permission_service.dart';

abstract class BluetoothPrinterService {
  Future<void> connectToPrinter();
  Future<void> printReceipt(ReceiptModel receipt);
  Future<void> disconnectPrinter();
  Future<bool> isConnected();
}

class BluetoothPrinterServiceImpl implements BluetoothPrinterService {
  const BluetoothPrinterServiceImpl(
    this._bluetoothPrinter,
    this._permissionService,
  );
  final BlueThermalPrinter _bluetoothPrinter;
  final PermissionService _permissionService;

  // Method to connect to the printer
  @override
  Future<void> connectToPrinter() async {
    if (await _permissionService.requestBluetoothPermission()) {
      final devices = await _bluetoothPrinter.getBondedDevices();
      if (devices.isNotEmpty) {
        await _bluetoothPrinter.connect(devices[0]);
      }
    }
  }

  // Method to print the receipt using ReceiptModel
  @override
  Future<void> printReceipt(ReceiptModel receipt) async {
    if ((await _bluetoothPrinter.isConnected)!) {
      await _bluetoothPrinter.printCustom('IVORY PAY Receipt', 3, 1);
      await _bluetoothPrinter.printNewLine();
      await _bluetoothPrinter.printCustom('7 Ibiyinka Olorunbe', 1, 1);
      await _bluetoothPrinter.printCustom(
        'Victoria Island 101241, Lagos',
        1,
        1,
      );
      await _bluetoothPrinter.printCustom('Tel: +234 704 8087 050', 1, 1);
      await _bluetoothPrinter.printCustom('Web: www.ivorypay.io', 1, 1);
      await _bluetoothPrinter.printNewLine();

      // Items Header
      await _bluetoothPrinter.printCustom(
        'Qty  Item            Price  Total',
        1,
        0,
      );
      await _bluetoothPrinter.printCustom(
        '--------------------------------',
        1,
        0,
      );

      // Items
      for (final item in receipt.items!) {
        await _bluetoothPrinter.printLeftRight(
          '${item.quantity}x ${item.description}',
          '\$${item.unitPrice}',
          1,
        );
        await _bluetoothPrinter.printLeftRight(
          '',
          '\$${item.totalPrice}',
          1,
        );
      }

      await _bluetoothPrinter.printCustom(
        '--------------------------------',
        1,
        0,
      );
      await _bluetoothPrinter.printLeftRight(
        'TOTAL',
        '\$${receipt.totalAmount}',
        2,
      );

      await _bluetoothPrinter.printNewLine();
      await _bluetoothPrinter.printCustom('Thank you!', 1, 1);
      await _bluetoothPrinter.printCustom(
        receipt.dateTime!.toIso8601String(),
        1,
        1,
      );
      await _bluetoothPrinter.printNewLine();

      await _bluetoothPrinter.paperCut();
    }
  }

  // Method to disconnect the printer
  @override
  Future<void> disconnectPrinter() async {
    await _bluetoothPrinter.disconnect();
  }

  @override
  Future<bool> isConnected() async {
    return await _bluetoothPrinter.isConnected ?? false;
  }
}
