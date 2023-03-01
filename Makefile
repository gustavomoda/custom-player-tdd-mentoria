#
# Setup Flutter enviroment
#
install-fvm:
ifeq (,  $(shell which fvm))
	@echo "[APP] install fvm"
	brew tap leoafarias/fvm && /brew install fvm
endif	

install-flutter:
	@echo "[APP] install fvm"
	fvm use stable

update-flutter:
	@echo "[APP] install fvm"
	fvm flutter upgrade

setup-dev: install-fvm install-flutter update-flutter install-dependences build_runner
	@echo "Enviroment setup gracefully"


#
# Build
#
reset: clean install-dependences build_runner
	@echo "Enviroment setup gracefully"

clean:
	@echo "[APP] clean"
	@(fvm flutter clean)

install-dependences:
	@echo "[APP] install dependences"
	@(fvm flutter pub get)

build_runner:
	@echo "[APP] build runner"
	@(fvm flutter pub run build_runner build --delete-conflicting-outputs)

watch:
	@echo "[APP] build runner"
	@(fvm flutter pub run build_runner watch --delete-conflicting-outputs)

lint_analysis:
	@echo "[APP] lint"
	@(fvm flutter analyze lib/ test/)

dart_code_metrics:
	@echo "[APP] lint"
	@(fvm dart analyze lib/ test/)

lint_fix:
	@echo "[APP] Fix lints"
	@(fvm dart fix  --apply lib/ test/)

lint: lint_analysis
	@echo "[APP] lint"
	
format:
	@echo "[APP] format"
	@(fvm dart format . --fix)

precommit: lint test format
	@echo "[APP] precommit"
	