import 'package:flutter/material.dart';
import 'routeGenerator.dart';

import 'package:graphql_flutter/graphql_flutter.dart';
import "graphqlConf.dart";

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

void main() => runApp(
  GraphQLProvider(
    client: graphQLConfiguration.client,
    child: CacheProvider(child: MyApp()),
  ),  
);


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/messages",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}



