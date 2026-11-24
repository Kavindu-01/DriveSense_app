# DriveSense

DriveSense is an Android driving safety companion built in Sri Lanka for Sri Lankan motorcycle and three-wheeler drivers, including PickMe and Uber riders. It brings trip tracking, driver alerts, and emergency assistance together in one app, with an interface in English and Sinhala.

## Features

- **Live driving information.** See GPS speed, trip time, and distance. Start and end a trip manually, or let DriveSense start tracking when it detects driving and monitoring is active.
- **Driver checks.** The front camera runs periodic checks using on-device Google ML Kit. A dedicated preview helps you position the phone before driving.
- **Suspected crash alerts.** DriveSense checks available motion, GPS, and microphone signals. A suspected crash starts a countdown that the driver can cancel.
- **Trip history.** Review saved routes, driving events, and an experimental safety score. Fuel and carbon figures are shown as estimates.
- **Crash hotspot warnings.** Import a JSON file containing reviewed hotspot locations and get proximity warnings during a trip.
- **English and Sinhala.** Choose your app language and emergency SMS language separately. Spoken alerts are in English, and the app follows the phone’s light or dark appearance.

## Getting started

1. Open DriveSense and choose **English** or **සිංහල**.
2. Select your vehicle and allow the permissions for the features you want to use.
3. While parked, open the camera check and adjust the phone until your face is clearly visible.
4. Open **Drive** and enable monitoring. Completed trips appear under **Trips**.

Automatic emergency messaging and calling are off by default in this version. Shared source uses a placeholder for the test destination. Use a number you control for any emergency-flow testing.

## Data and privacy

Trip history, events, and settings are stored locally on the phone. Camera frames and microphone input are processed without saving photos, video, or audio recordings. Map tiles load from OpenStreetMap when an internet connection is available. GPS trip recording and imported hotspot checks can run without map tiles.

## Development

DriveSense uses Flutter and Dart for the interface, with Kotlin for Android monitoring and device integrations. Open the complete project with Flutter and the Android SDK installed, then run:

```sh
flutter pub get
flutter run
```

Run the Flutter checks with:

```sh
flutter analyze
flutter test
```

## Project status

This is the first shared project snapshot. Driver alerts and scoring are still being validated across phones, lighting conditions, and mounting positions. **Settings → Help & support → Share a report** provides diagnostics when something goes wrong. Review the report before sharing, as it can include trip locations.
