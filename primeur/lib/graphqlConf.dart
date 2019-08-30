import "package:flutter/material.dart";
import "package:graphql_flutter/graphql_flutter.dart";

import './server_url.dart';

class GraphQLConfiguration {
  static HttpLink httpLink = HttpLink(
    uri: server_url,
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
    ),
  );

  GraphQLClient clientToQuery() {
    return GraphQLClient(
      link: httpLink,
      cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
    );
  }
}