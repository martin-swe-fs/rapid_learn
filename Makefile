.PHONY: setup run test

setup:
	chmod +x hooks/pre-commit
	git config core.hooksPath hooks

run:
	cd frontend && flutter run --dart-define-from-file=config/public.json

test:
	cd frontend && flutter test --dart-define-from-file=config/public.json
