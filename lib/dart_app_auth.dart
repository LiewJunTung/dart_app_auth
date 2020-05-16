@JS()
library dart_app_auth;

import 'package:js/js.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

@JS("console.log")
external log(String text);

// fetchServiceConfiguration() {
//   console.log("FETCH SERVICE");
//   this.configuration = new AuthorizationServiceConfiguration({
//     end_session_endpoint: "", revocation_endpoint: "", userinfo_endpoint: "",
//     authorization_endpoint: 'https://secure.meetup.com/oauth2/authorize',
//     token_endpoint: 'https://secure.meetup.com/oauth2/access'
//   })
// }
@JS("JsAppAuth")
class JsAppAuth {
  external makeAuthorizationRequest(AuthorizationServiceConfigurationJson appAuthConfiguration, String clientId, String redirectUri, List<String> scopes);
  external checkForAuthorizationResponse();
}


@JS()
@anonymous
class AuthorizationServiceConfigurationJson {
  external factory AuthorizationServiceConfigurationJson({
    String authorization_endpoint,
    String token_endpoint,
    String revocation_endpoint,
    String end_session_endpoint,
    String userinfo_endpoint,
  });
}
