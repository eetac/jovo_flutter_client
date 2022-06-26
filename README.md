<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A Dart Jovo client for Jovo's Web platform.

## Features

- Dart implementation of [Jovo's sample requests for the Web platform](https://github.com/jovotech/jovo-framework/tree/v4/latest/platforms/platform-web/sample-requests).

* Preset Launch and Text requests.
* Http service to send and receive petitons with a Jovo WebHook.

<!-- ## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package. -->

## Usage

```dart
//Configure JovoService with WebHook url.
JovoService service = JovoService(
        webHook: "your-jovo-webhook");

//Send http Launch request to start a session with a Jovo server.
JovoRequest launchRequest = JovoRequest.launchRequest();
JovoRequest launchResponse = await service.sendRequest(launchRequest);

//Get the text response from the server.
print(launchResponse.output[0].message);


//Respond with a text request. Launch request and respnse as parameters to keep the session.
JovoRequest textRequest = await JovoRequest.textRequest(
        inputText, launchRequest, launchResponse);



```

## Additional information

The package is in early aplha state. It does not yet fully implement all of Jovo's features.
