import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> sendEmail(String userName, String userEmail, String message,
    BuildContext context) async {
  try {
    const String serviceID = 'service_wkfd0b8';
    const String templateID = 'template_yiqrxwd';
    const String publicKey = 'hpSOq40K6J08fcFnM';
    final Uri url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    final response = await http.post(url,
        headers: {
          'Content-Type': 'application/json',
          'origin': 'http://localhost' // Thêm origin header
        },
        body: jsonEncode({
          'service_id': serviceID,
          'template_id': templateID,
          'user_id': publicKey,
          'template_params': {
            'user_name': userName,
            'user_email': userEmail,
            'message': message
          }
        }));

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      if (context.mounted) {
        //kiểm tra xem widget có còn tồn tại không hay đã rebuild
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Gửi mail thành công!')));
      }
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
                'Lỗi khi gửi mail! Status: ${response.statusCode}, Body: ${response.body}')));
      }
    }
  } catch (e) {
    print('Error sending email: $e');
    if (context.mounted) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Lỗi khi gửi mail: $e')));
    }
  }
}
