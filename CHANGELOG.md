# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 0.2.0

### Added

- `MaterialAnimatedVisibility`: A widget that animates the appearance and disappearance of its child.
- `MaterialContainerTransform`: A widget that creates a container transform animation between two widgets.
- `RouteAwareContainerTransform`: A container transform animation that is aware of the current route.
- `MaterialSharedAxisSwitcher`: A widget that animates between two widgets using a shared axis transition.
- `MaterialPageTransitionsBuilder`: A page transitions builder that uses the shared axis transition.
- New showcase pages in the example app for the new motion widgets.

### Changed

- **BREAKING**: Moved `MaterialSurface` to `lib/src/widgets/elevation/surface.dart`.
- Updated the example application to showcase the new motion widgets.
- Updated `theme_provider.dart` to manage page transitions.

### Removed

- **BREAKING**: Removed `MaterialAnimatedContainer`.

### Dependencies

- Added the `animations` package.

## 0.1.0

### Changed

- Update the example application to align with the new library structure.

### Added

- Introduce `MaterialSurface`, a new widget for creating surfaces with distinct elevation.

### Removed

- **BREAKING**: Remove individual custom token files (color, typography, shape, spacing) in favor of a unified theming approach.

## 0.0.3

### Added

- Add new size properties to `XIconSizesData` and `XSpacingsData`.

## 0.0.2

### Added

- Add `XStandardSizes` properties to `XSpacingsData`.

## 0.0.1

### Added

- Initial release of `material_toolkit`.
- Introduce support for building custom design systems on top of `MaterialApp`.
- Implement default light and dark themes.
- Provide support for multiple theme configurations to enhance customization and scalability.
