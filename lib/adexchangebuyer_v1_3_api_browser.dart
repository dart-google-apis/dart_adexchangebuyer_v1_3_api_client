library adexchangebuyer_v1_3_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_adexchangebuyer_v1_3_api/src/browser_client.dart';
import "package:google_adexchangebuyer_v1_3_api/adexchangebuyer_v1_3_api_client.dart";

/** Lets you manage your Ad Exchange Buyer account. */
class Adexchangebuyer extends Client with BrowserClient {

  /** OAuth Scope2: Manage your Ad Exchange buyer account configuration */
  static const String ADEXCHANGE_BUYER_SCOPE = "https://www.googleapis.com/auth/adexchange.buyer";

  final oauth.OAuth2 auth;

  Adexchangebuyer([oauth.OAuth2 this.auth]);
}