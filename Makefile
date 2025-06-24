.PHONY: setup unit-test integration-test clean build build-watch

setup:
	flutter clean && rm pubspec.lock && flutter pub get && make build

unit-test:
	flutter test --reporter=expanded

integration-test:
	cd example && flutter test integration_test/_test.dart --reporter=compact

build:
	dart run build_runner build --delete-conflicting-outputs

build-watch:
	dart run build_runner watch --delete-conflicting-outputs