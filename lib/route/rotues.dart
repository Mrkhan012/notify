// routes.dart
import 'package:get/get.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:notifaction_app/controller/analyticsMiddleware.dart';
import 'package:notifaction_app/screen/home_screen.dart';
import 'package:notifaction_app/screen/meal_reminder_screen.dart';
import 'package:notifaction_app/screen/notification_screen.dart';

// Firebase Analytics instance
final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

// Define all routes here
class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => HomeScreen(),
      middlewares: [AnalyticsMiddleware(analytics, '/homeScreen')],
    ),
    GetPage(
      name: '/mealReminderScreen',
      page: () => MealReminderScreen(),
      middlewares: [AnalyticsMiddleware(analytics, '/mealReminderScreen')],
    ),
    GetPage(
      name: '/standardNotificationScreen',
      page: () => StandardNotificationScreen(),
      middlewares: [AnalyticsMiddleware(analytics, '/standardNotificationScreen')],
    ),
  ];
}
