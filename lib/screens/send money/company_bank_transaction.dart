import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:transactions_app/screens/send%20money/confirm_screen.dart';

class CompanyBankMoneyTransfer extends StatefulWidget {
  const CompanyBankMoneyTransfer({Key? key}) : super(key: key);

  @override
  State<CompanyBankMoneyTransfer> createState() =>
      _CompanyBankMoneyTransferState();
}

class _CompanyBankMoneyTransferState extends State<CompanyBankMoneyTransfer> {
  final _accountNoController = TextEditingController();
  bool _isValidAccount = false;

  String accountNo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Money'),
      ), // Adjust as needed
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.0),
            Text(
              'Account Number:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _accountNoController,
              onChanged: (value) {
                setState(() {
                  accountNo = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Account Number',
              ),
            ),
            SizedBox(height: 20), // Add some space
            Visibility(
              visible: accountNo.isNotEmpty, // Conditionally show the QR code
              child: Container(
                width: 200.0, // Set width for the QR code
                height: 200.0, // Set height for the QR code
                child: QrImageView(
                  data: accountNo, // Generate QR code with the account number
                  version: QrVersions.auto,
                ),
              ),
            ),
            const Spacer(), // Move the button to the bottom
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => ConfirmTransaction(
                      accountNo: accountNo,
                    ),
                  ),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
