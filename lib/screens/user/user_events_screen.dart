
import 'dart:math';

import 'package:attendance_app/model/event.dart';
import 'package:attendance_app/services/event_service.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';

class UserEventsPage extends StatefulWidget {
  const UserEventsPage({super.key});

  @override
  State<UserEventsPage> createState() => _UserEventsPage();
}

class _UserEventsPage extends State<UserEventsPage> {
  bool _isLoading = false;

  void _fetchEvents() async {
    try {
      _isLoading = true;
      EventService eventService = EventService();
      final events = await eventService.fetchEvents();
      debugPrint('Fetched events: $events');
          } catch (e) {
      _showErrorDialog(e);
    } finally {
      _isLoading = false;
    }
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _initialize() {
    _fetchEvents();
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return FScaffold(
      header: FHeader.nested(
        title: const Text('User Events'),
        prefixes: [
          FHeaderAction.back(
            onPress: () {
              if (Navigator.of(context).canPop()) {
                Navigator.pop(context); // Pop the current route
              }
            },
          ),
        ],
        suffixes: [
          FHeaderAction(
            icon: const  Icon(FIcons.search) ,
            onPress: () {},
          ),
          FHeaderAction(
            icon: const  Icon(FIcons.plus) ,
            onPress: () {},
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
              children: [
                FLineCalendar(
      controller: FCalendarController.date(
        initialSelection: DateTime.now().subtract(const Duration(days: 1)),
      ))
              ],
        ),
      )
    );
  }

  void _showErrorDialog(Object e) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Location Error'),
        content: Text('$e'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}