import 'package:graphql/client.dart';

class GraphQLService {
  GraphQLClient get gqlClient => GraphQLClient(
        cache: GraphQLCache(),
        link: HttpLink('https://rickandmortyapi.com/graphql'),
      );
}
