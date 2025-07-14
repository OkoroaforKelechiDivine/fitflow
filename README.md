### Project Overview
- **Architecture**: Stacked (MVVM) for UI and state management.
- **UI Components**:
  - **CustomText**: Flexible text widget with customizable size, weight, and color.
  - **CustomInputField**: Styled input field with validation and error states.
  - **CustomButton**: Button with loading and error states.
  - **CustomAppBar**: Reusable app bar with customizable title and actions.
  - **Navigation Screen**: A bottom navigation bar with multiple screens.

- **Design Features**:
  - Responsive design using `flutter_screenutil` (design size: 360x690).
  - Consistent theming with light/dark modes.
  - Professional color palette, typography, and spacing.
  - Error handling for buttons (e.g., disabled state, error feedback).

# Flutter Project Design Setup (Stacked Architecture)

This artifact provides a fitflow project setup focusing on UI design and screens using the **Stacked** architecture. It includes custom text, input fields, buttons, app bar, navigation screen, and error handling for buttons, all styled for a polished, production-grade app.

## Folder Structure

```plaintext
lib/
├── core/
│   ├── constants/
│   │   ├── assets.dart
│   │   ├── colors.dart
│   │   ├── strings.dart
│   │   └── themes.dart
│   ├── services/
│   │   ├── custom_navigation_service.dart
│   │   └── custom_snackbar_service.dart
│   └── utils/
│       ├── helpers.dart
│       └── logger.dart
├── features/
│   ├── home/
│   │   ├── ui/
│   │   │   ├── viewmodels/
│   │   │   │   └── home_viewmodel.dart
│   │   │   ├── views/
│   │   │   │   ├── home_view.dart
│   │   │   │   ├── profile_view.dart
│   │   │   │   └── settings_view.dart
│   │   │   └── widgets/
│   │   │       ├── custom_appbar.dart
│   │   │       ├── custom_button.dart
│   │   │       ├── custom_input_field.dart
│   │   │       └── custom_text.dart
├── app/
│   ├── app.locator.dart
│   ├── app.router.dart
│   └── app.dart
└── main.dart
pubspec.yaml
```

## Design Features
- **Responsive Design**: Uses `flutter_screenutil` for responsive font sizes (`sp`), heights (`h`), widths (`w`), and radii (`r`) based on a design size of 360x690.
- **Custom Components**:
  - **CustomText**: Supports customizable font size, weight, and color, integrated with the app's theme.
  - **CustomInputField**: Includes error states (red border and error text) and responsive padding.
  - **CustomButton**: Supports loading state (spinner) and error state (red background, disabled).
  - **CustomAppBar**: Consistent styling with elevation, centered title, and support for actions.
  - **Navigation Screen**: Bottom navigation bar with three screens (Home, Profile, Settings) for seamless navigation.
- **Theming**: Light and dark themes with a professional color palette (primary, accent, error, etc.) and typography.
- **Error Handling**: Buttons and input fields reflect error states (e.g., empty input triggers error message via snackbar).
- **Snackbar Notifications**: Custom snackbar service for success/error feedback with styled margins and colors.

## Notes
- **Assets**: The `assets.dart` references placeholder icons (`logo.png`, `home.png`, etc.). Create an `assets/images/` folder and add your assets, or update the paths accordingly.
- **Navigation**: The `CustomNavigationService` provides methods for navigation, though this setup uses Stacked's router for the initial route. You can extend navigation by adding more routes in `app.router.dart`.
- **Error Handling**: The `HomeViewModel` demonstrates button error handling (e.g., empty input triggers an error state and snackbar).
- **Professional Styling**: Rounded corners, shadows, consistent spacing, and a cohesive color scheme ensure a polished UI.

This setup delivers a professional, UI-focused Flutter project with all requested design components. Let me know if you need additional screens, styles, or modifications!

