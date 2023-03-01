# custom_player_mentoria_tdd

A new Flutter project.

## Getting Started

## Requirements

1. GNU Makefiles (https://www.gnu.org/softwareuList- Lists and Daily Planner 4+
   Organize Tasks and Routines/make/)
1. Flutter Version Management (https://fvm.app)


### VSCode set up:

You can pass --dart-define values to Flutter by specifying them in the toolArgs field of your launch configuration (launch.json):

```json
"configurations": [
	{
		"name": "Flutter",
		"request": "launch",
		"type": "dart",
		"toolArgs": [
			"--dart-define",
			"variable=value",
			"--dart-define",
			"otherVariable=otherValue"
		]
	}
]


## Development

### Getting start

1. Download secrets files
2. Save into .secrets folder, according path bellow:

   ```
   .secrets/ios/firebase_app_id_file.json
   .secrets/ios/Runner/GoogleService-Info.plist
   .secrets/android/app/google-services.json
   .secrets/lib/firebase_options.dart
   ```

3. Install **fvm**
4. Install **GNU Makefiles** (only windows)
5. Run `make setup_dev`
