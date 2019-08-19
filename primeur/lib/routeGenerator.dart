import "package:flutter/material.dart";
import "0-Dashboard/homePage.dart";
import "1-Clients/clientListPage.dart";
import "1-Clients/clientDetailPage.dart";

class RouteGenerator {
  // App routes
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage(title: "Primeur Demo"));
      case '/client':
        return MaterialPageRoute(builder: (_) => ClientListPage(title: "Client List Page Title"));
      case '/client_details':
        return MaterialPageRoute(builder: (_) => ClientDetailPage(title: "Client Detail Page Title"));
      default:
        return _errorRoute();
    }
  }

  // Error route
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

