library hop_runner;

import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';

void main() {

  List pathList = [
    'lib/adexchangebuyer_v1_3_api_browser.dart',
    'lib/adexchangebuyer_v1_3_api_console.dart',
    'lib/adexchangebuyer_v1_3_api_client.dart'
  ];

  addTask('docs', createDartDocTask(pathList, linkApi: true));

  addTask('analyze', createAnalyzerTask(pathList));

  runHop();
}