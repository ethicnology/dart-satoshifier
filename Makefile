.PHONY: setup test deps cleanunit-test integration-test clean build build-watch


setup: clean deps build
	@echo "🚀 Setup complete!"

clean:
	@echo "🧹 Clean and remove pubspec.lock"
	@flutter clean && rm pubspec.lock

deps:
	@echo "🐕 Fetching dependencies"
	@flutter pub get

test: unit-test integration-test

unit-test: 
	@echo "🏃‍ running unit tests"
	@flutter test --reporter=compact

integration-test:
	@echo "🧪 integration tests"
	@cd example && flutter test integration_test/_test.dart --reporter=compact

build:
	@echo "🏗️ Building"
	@dart run build_runner build --delete-conflicting-outputs

build-watch:
	@echo "🚧 Building (watch)"
	@dart run build_runner watch --delete-conflicting-outputs