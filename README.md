# Provider Counter

The starter Flutter application, but using Provider to manage state.

It shows how you might deal with state that is modified from outside the app (for example,state synchronized over network) and which needs to be accessed and changed from different parts of your app.

## Project Structure

The project follows a clean architecture approach using Provider:

- **models/**: Contains the basic data structures
- **providers/**: Handles business logic and state management
- **screens/**: Contains the main screens of the application
- **widgets/**: Contains reusable UI components
- **main.dart**: Handles initial setup and main Provider configuration

## Getting Started

For more information on state management in Flutter, and a list of other approaches,
head over to the
[State management page at flutter.dev](https://flutter.dev/docs/development/data-and-backend/state-mgmt).



## Package Imports

The project uses the following packages:

- `provider` -  
- `window_size`
- `dio`

## Provider Access Methods

This project demonstrates modern ways to access Provider state:

- `context.watch<T>()`: Equivalent to Consumer, rebuilds the widget when the value changes
- `context.read<T>()`: Used when you only need to read the value once or call methods, without needing to rebuild the widget

## Installation and Running

1. Make sure you have Flutter installed on your system
   ```bash
   flutter --version
   ```

2. Clone the repository and navigate to the project directory
   ```bash
   git clone <repository-url>
   cd EA-Example-SimpleFlutter
   ```

3. Get the dependencies
   ```bash
   flutter pub get
   ```

4. Run the application
   ```bash
   # For development
   flutter run

   # For specific platform
   flutter run -d windows  # For Windows
   flutter run -d macos   # For macOS
   flutter run -d linux   # For Linux
   flutter run -d chrome  # For Web
   flutter run -d <device-id>  # For Android/iOS device
   ```