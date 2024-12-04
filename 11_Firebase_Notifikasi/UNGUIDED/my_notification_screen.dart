import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'notification_channel.dart';

class MyNotificationScreen extends StatefulWidget {
  const MyNotificationScreen({Key? key}) : super(key: key);

  @override
  State<MyNotificationScreen> createState() => _MyNotificationScreenState();
}

class _MyNotificationScreenState extends State<MyNotificationScreen> {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    // Handle when app is terminated
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        _navigateToLandingPage(message.data);
      }
    });

    // Handle when app is in foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        _showNotification(message);
      }
    });

    // Handle when app is in background and opened via notification
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _navigateToLandingPage(message.data);
    });
  }

  void _showNotification(RemoteMessage message) {
    flutterLocalNotificationsPlugin.show(
      0,
      message.notification?.title ?? 'Notifikasi',
      message.notification?.body ?? '',
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          channelDescription: channel.description,
          importance: Importance.high,
        ),
      ),
    );
  }

  void _navigateToLandingPage(Map<String, dynamic> data) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LandingPage(
          nama: data['nama'] ?? 'Unknown',
          nim: data['nim'] ?? 'Unknown',
          kelas: data['kelas'] ?? 'Unknown',
          prodi: data['prodi'] ?? 'Unknown',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Notification Screen'),
      ),
      body: const Center(
        child: Text('Menunggu notifikasi...'),
      ),
    );
  }
}

class LandingPage extends StatelessWidget {
  final String nama;
  final String nim;
  final String kelas;
  final String prodi;

  const LandingPage({
    Key? key,
    required this.nama,
    required this.nim,
    required this.kelas,
    required this.prodi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landing Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: $nama', style: const TextStyle(fontSize: 16)),
            Text('NIM: $nim', style: const TextStyle(fontSize: 16)),
            Text('Kelas: $kelas', style: const TextStyle(fontSize: 16)),
            Text('Prodi: $prodi', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
