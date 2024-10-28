

// Middleware to log screen views
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

class AnalyticsMiddleware extends GetMiddleware {
  final FirebaseAnalytics analytics;
  final String screenName;

  AnalyticsMiddleware(this.analytics, this.screenName);

  @override
  RouteSettings? redirect(String? route) {
    analytics.logEvent(name: 'screen_view', parameters: {'screen_name': screenName});
    return super.redirect(route);
  }
}
