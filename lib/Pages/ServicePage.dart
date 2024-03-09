import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  final String serviceName;

  ServicePage(this.serviceName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(serviceName),
      ),
      body: Center(
        child: getContentBasedOnServiceName(),
      ),
    );
  }

  Widget getContentBasedOnServiceName() {
    // Implement logic to return the content based on the service name
    switch (serviceName) {
      case "General Consultation":
        return GeneralConsultation();
      // Add cases for other services as needed
      default:
        return Container(); // Return a default widget or handle the case accordingly
    }
  }
}

class GeneralConsultation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the UI for General Consultation page
    return Container(
      child: Text("This is the General Consultation page."),
    );
  }
}
