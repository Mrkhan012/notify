import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notifaction_app/service/notification_service.dart';
import '../controller/full_screen_intent_service.dart';

class HomeScreen extends StatelessWidget {
  final NotificationService notificationService =
      Get.put(NotificationService());
  final FullScreenIntentService fullScreenIntentService =
      Get.put(FullScreenIntentService());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: const Icon(Icons.notifications, color: Colors.blue),
            title: const Text('Standard Notification'),
            subtitle: const Text('Tap to send a standard notification.'),
            onTap: () => notificationService.showStandardNotification(
              title: 'Standard Notification',
              body: 'This is a standard notification.',
              payload: '/standardNotificationScreen',
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.alarm, color: Colors.green),
            title: const Text('Full-Screen Notification'),
            subtitle: const Text('Tap to send a full-screen notification.'),
            onTap: () => fullScreenIntentService.showFullScreenNotification(
              title: 'Full Screen Reminder',
              body: 'Time for your meal reminder!',
              payload: '/mealReminderScreen',
            ),
          ),
        ],
      ),
    );
  }
}
