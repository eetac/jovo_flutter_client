import 'package:flutter_test/flutter_test.dart';
import 'package:jovo_flutter_client/jovo_flutter_client.dart';

void main() {
  test('Test launch request', () {
    expect(JovoRequest.launchRequest().input!.type, "LAUNCH");
  });

  test('Test Jovo Service', () async {
    var s = JovoService(
        webHook:
            "https://webhook.jovo.cloud/3c560306-c965-4bd9-89d4-fb3c42854ddf");

    JovoRequest res = await s.sendRequest(JovoRequest.launchRequest());

    expect(res.platform, "web");
  });
}
