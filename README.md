# WUI Flutter

A comprehensive Flutter UI component library with beautiful, customizable widgets for building modern Flutter applications.

## Features

WUI Flutter provides a rich set of pre-built, customizable UI components:

- **App Components**: App wrapper, Page, AppBar, SliverAppBar
- **Navigation**: Drawer, DrawerHeader, DrawerButton, Tabs
- **Buttons**: Regular Button, Floating Action Button (FAB)
- **Form Fields**: TextField, SelectField, DateField
- **Date Pickers**: DayPicker, MonthPicker, YearPicker, DatePicker
- **Lists**: ListTile, SliverList, SliverView
- **Dialogs & Modals**: Modal, Sheet, Alert, LoadingDialog
- **Overlays**: Toast, Snackbar
- **Layout**: Boxes, Badge
- **Theming**: Customizable themes, typography, colors, and button styles
- **Loading States**: Loading indicators

## Installation

Add `wui_flutter` to your `pubspec.yaml`:

```yaml
dependencies:
  wui_flutter: ^0.0.1
```

Then run:

```bash
flutter pub get
```

## Getting Started

### 1. Import the package

```dart
import 'package:wui_flutter/wui_flutter.dart';
```

### 2. Wrap your app with WuiApp

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return WuiApp(
      title: 'My App',
      home: MyHomePage(),
    );
  }
}
```

### 3. Use WUI components

```dart
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WuiPage(
      appBar: WuiAppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: WuiButton(
          onPressed: () {
            // Handle button press
          },
          child: const Text('Click Me'),
        ),
      ),
    );
  }
}
```

## Usage Examples

### Form Fields

```dart
WuiTextField(
  label: 'Email',
  hintText: 'Enter your email',
  onChanged: (value) {
    print('Email: $value');
  },
)
```

### Date Picker

```dart
WuiDateField(
  label: 'Birth Date',
  onChanged: (date) {
    print('Selected date: $date');
  },
)
```

### Modal Dialog

```dart
WuiModal.show(
  context: context,
  builder: (context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text('Modal Content'),
    );
  },
)
```

### Drawer Navigation

```dart
WuiDrawer(
  header: WuiDrawerHeader(
    title: 'Menu',
  ),
  children: [
    WuiDrawerButton(
      icon: Icons.home,
      label: 'Home',
      onTap: () {
        // Navigate to home
      },
    ),
    WuiDrawerDivider(),
    WuiDrawerButton(
      icon: Icons.settings,
      label: 'Settings',
      onTap: () {
        // Navigate to settings
      },
    ),
  ],
)
```

## Customization

WUI Flutter supports theming to match your app's design:

```dart
WuiApp(
  theme: WuiTheme(
    primaryColor: Colors.blue,
    // ... other theme properties
  ),
  home: MyHomePage(),
)
```

## Additional Information

For more examples and detailed documentation, check out the `/example` folder in the repository.

### Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

### License

This project is licensed under the MIT License - see the LICENSE file for details.
