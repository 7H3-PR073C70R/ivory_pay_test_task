init:
	(touch .env.development .env.production .env.staging; flutter clean; flutter pub get; dart run build_runner build -d)

get:
	(flutter pub get)

fresh:
	(rm pubspec.lock; flutter clean; flutter pub get; dart run build_runner build -d)

runner:
	(dart run build_runner build -d)

watch:
	(dart run build_runner watch -d)

apk:
	(flutter build apk --flavor production --target lib/main_production.dart)
