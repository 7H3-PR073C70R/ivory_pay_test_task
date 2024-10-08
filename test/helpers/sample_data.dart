import 'dart:convert';

import 'package:ivory_pay_test_task/src/features/payment/data/models/pos_model/pos_model.dart';
import 'package:ivory_pay_test_task/src/features/payment/data/models/receipt_model/receipt_model.dart';

const tId = 'txn67890';

final tPOSModel = POSModel.fromJson({
  'crypto_details': {'currency': 'Bitcoin', 'network': 'Optimism'},
  'customer': {
    'customer_id': 'cuts12345',
    'name': 'John Doe',
    'crypto_wallet_address': '1A1zP1eP5QGif2DMPTfTL5SLmv7DiffNa',
    'qr_code': 'iVBORw0KGgoAKANSUhEUgAAA... (truncated base64 string)',
  },
  'transaction': {
    'transaction_id': 'txn67890',
    'date_time': '2024-08-12T14:23:00Z',
    'items': [
      {
        'item_id': 'item001',
        'description': 'Wireless Mouse',
        'quantity': 2,
        'unit_price': 25.99,
        'total_price': 51.98,
      },
      {
        'item_id': 'item002',
        'description': 'Mechanical Keyboard',
        'quantity': 1,
        'unit_price': 89.99,
        'total_price': 89.99,
      }
    ],
    'total_amount': 141.97,
    'payment_status': 'pending',
    'payment_method': 'crypto',
    'crypto_wallet': {
      'wallet_address': '1A1zP1eP5QGif2DMPTfTL5SLmv7DiffNa',
      'transaction_hash':
          '00000000000000a3e23bfb0cde4d6b1b660e4bb3dc02e15f8c4f3b4c82b',
    },
  },
});

final tReceiptModel = ReceiptModel.fromJson(
  {
    'receipt': {
      'receipt_id': 'txn67890',
      'crypto_currency': 'Bitcoin',
      'network': 'Optimism',
      'date_time': '2024-08-12T14:23:00Z',
      'items': [
        {
          'item_description': 'Wireless Mouse',
          'quantity': 2,
          'unit_price': 25.99,
          'total_price': 51.98,
        },
        {
          'item_description': 'Mechanical Keyboard',
          'quantity': 1,
          'unit_price': 89.99,
          'total_price': 89.99,
        }
      ],
      'total_amount': 141.97,
      'payment_method': 'crypto',
      'payment_status': 'completed',
      'printer_status': 'completed',
    },
  },
);

final qrCode = json.encode({
  'crypto_details': {'currency': 'Bitcoin', 'network': 'Optimism'},
  'customer': {
    'customer_id': '12345',
    'name': 'John Doe',
    'crypto_wallet_address': '1A1zP1eP5QGif2DMPTfTL5SLmv7DiffNa',
    'qr_code': 'iVBORw0KGgoAKANSUhEUgAARAU',
  },
  'transaction_id': 'txn_98765',
});
