.PHONY: setup run test

setup:
	chmod +x hooks/pre-commit
	git config core.hooksPath hooks

run:
	cd frontend && flutter run --dart-define-from-file=config/public.json

test:
	cd frontend && flutter test . packages/core
	cd frontend && flutter test --dart-define-from-file=config/public.json . packages/core
	cd frontend && flutter test --platform chrome test/router/rl_path_strategy_test.dart
	cd frontend && flutter test --platform chrome test/database/rl_database_web_test.dart
