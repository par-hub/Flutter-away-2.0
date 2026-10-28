# Flutter Away 2.0 — Formula Reference App

A Flutter/Dart educational app with a subject-oriented formula reference interface. The current project includes formula screens and visual assets for topics such as calculus, electronics, and mechanics, along with Mobilon branding.

## Features and project areas
- Home screen and subject cards for navigating the formula sections
- Calculus and electronics formula screens
- Shared subject-card UI and splash screen
- Flutter assets for subject illustrations and Mobilon branding

The source includes a Mechanics file that is currently empty, so that section may need additional implementation.

## Run locally

Install Flutter, then from the repository root run:

~~~bash
flutter pub get
flutter run
~~~

## Tech stack
Flutter · Dart · Material widgets

## Development notes
- Asset paths are declared in `pubspec.yaml`.
- If you add images or subject sections, update the asset declarations and test on the target platforms.
- The source is the authoritative view of current implementation; this README does not imply every subject section is complete.
