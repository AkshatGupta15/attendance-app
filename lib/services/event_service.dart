import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:attendance_app/model/event.dart';

class EventService {
  Future<Event> fetchEvent(String eventId) async {
    await Future.delayed(const Duration(seconds: 3)); // Simulate network delay
    final event =  Event(
      id: eventId,
      name: 'UP Police March',
      date: DateTime.now(),
      deadline: DateTime.now().add(const Duration(days: 2)),
      location: const LatLng(26.5086985, 90.2331529),
      eventRadius: 400.0,
      address: "Lucknow, Uttar Pradesh",
      description: "UP Police March is a march organized by the Uttar Pradesh Police Department to raise awareness about road safety and traffic rules.",
      );

    return event;
  }
  Future<List<Event>> fetchEvents() async {
    await Future.delayed(const Duration(seconds: 3)); // Simulate network delay
    final events = List.generate(
      10,
      (index) => Event(
        id: 'event_$index',
        name: 'Event ${index + 1}',
        date: DateTime.now().add(Duration(days: index)),
        deadline: DateTime.now().add(Duration(days: index - 1)),
        location: LatLng(26.5086985, 90.2331529),
        eventRadius: 400.0,
        address: "Lucknow, Uttar Pradesh",
        description: "Description for Event ${index + 1}",
      ),
    );

    return events;
  }
  
}