
# Flutter User Profile Application

This project demonstrates the development of a social media user profile application using Flutter. It focuses on constructing layouts, navigating between screens, organizing content with tabs, and managing basic user interactions.

The application is based on the [User Profile & Settings UI Mobile App Design](https://dribbble.com/shots/27612645-User-Profile-Settings-UI-Mobile-App-Design) published on Dribbble.

## Application Screens

The project consists of three main screens:

1. **Profile Page:** Displays profile information, statistics, story highlights, and media content.
2. **Followers Page:** Presents followers, following, and suggested users through a tab-based interface.
3. **Story Page:** Displays a story image with user information, a message input field, and interactive controls.

## Widgets Overview

### 1. MaterialApp

The `MaterialApp` widget serves as the root of the application. It provides the Material Design structure and supports navigation between screens.

### 2. Scaffold

The `Scaffold` widget provides the basic structure for each screen and organizes the main content and app bar where needed.

### 3. StatefulWidget and setState()

The `StatefulWidget` class creates screens containing elements that may change during runtime. The `setState()` method updates the interface when a state variable changes, such as the story like button or a sample follow button.

### 4. SafeArea

The `SafeArea` widget keeps interface elements within the visible screen boundaries, avoiding system areas such as the status bar and device notch. It is used in the profile header and Story page.

### 5. ListView

The `ListView` widget arranges content in a scrollable layout. It is used on the main profile page and to display lists of users on the Followers page.

### 6. Column

The `Column` widget arranges its children vertically. It organizes profile information, statistics, highlights, and other interface sections.

### 7. Row

The `Row` widget arranges its children horizontally. It is used for navigation icons, statistics, story highlights, and action buttons.

### 8. Stack

The `Stack` widget places widgets on top of one another. On the Profile page, it combines the background image, gradient overlay, navigation elements, and profile picture. It is also used to overlay information on media thumbnails.

### 9. Positioned

The `Positioned` widget controls the location of elements within a `Stack` through properties such as `top`, `bottom`, `left`, and `right`.

### 10. Container

The `Container` widget provides layout and visual customization through properties such as size, background color, and decoration. It is used to implement the profile header overlay.

### 11. BoxDecoration and LinearGradient

`BoxDecoration` defines the visual appearance of a `Container`. `LinearGradient` creates the transition from a transparent area to a dark background in the profile header.

### 12. CircleAvatar

The `CircleAvatar` widget displays circular images and icons. It is used for the main profile picture, story highlights, follower images, and navigation controls.

### 13. Image.asset

The `Image.asset` widget displays images stored locally in the Flutter project. The `BoxFit.cover` property allows images to fill their available areas while preserving their proportions.

### 14. Text and TextStyle

`Text` displays information such as usernames, statistics, labels, and view counts. `TextStyle` customizes font size, color, and weight.

### 15. Padding and SizedBox

`Padding` adds space around a child widget. `SizedBox` provides fixed dimensions or spacing between widgets. Both are used to maintain consistent layout spacing.

### 16. Expanded

The `Expanded` widget makes a child occupy available space along the main axis of a `Row` or `Column`. It is used for story highlights, tab content, and the story message input.

### 17. GestureDetector

The `GestureDetector` widget responds to user interactions such as taps and drag gestures. Tapping the profile picture opens the Story page, and swiping downward closes it.

### 18. Navigator

The `Navigator` class manages movement between screens. `Navigator.push()` opens another screen, while `Navigator.pop()` returns to the previous one. The project uses `MaterialPageRoute` and `PageRouteBuilder`.

### 19. DefaultTabController

The `DefaultTabController` widget manages tab selection. It is used for **Feeds**, **Shorts**, and **Tag** on the Profile page, and for **Followers**, **Following**, and **Suggested users** on the Followers page.

### 20. TabBar

The `TabBar` widget displays selectable tabs. Properties such as `indicatorColor`, `indicatorSize`, and `labelColor` customize its appearance.

### 21. TabBarView

The `TabBarView` widget displays the content associated with each tab. It switches between media grids on the Profile page and user lists on the Followers page.

### 22. AspectRatio

The `AspectRatio` widget defines a child's dimensions relative to a specified width-to-height ratio. It is used to size the media `TabBarView` section.

### 23. GridView.count

The `GridView.count` widget organizes items into a fixed number of columns. It is used to display the media thumbnails. Properties such as `crossAxisCount`, `crossAxisSpacing`, `mainAxisSpacing`, and `childAspectRatio` control the grid layout.

### 24. ClipRRect

The `ClipRRect` widget clips its child into a rounded rectangular shape. It is used to give media thumbnails rounded corners.

### 25. ListTile

The `ListTile` widget provides a structured row with a leading image, title, subtitle, and trailing action. It is used for individual entries on the Followers page.

### 26. ElevatedButton and TextButton

`ElevatedButton` creates a customizable action button, such as the follow buttons in the user lists. `TextButton` makes the follower statistic selectable so it can open the Followers page.

### 27. PopupMenuButton

The `PopupMenuButton` widget displays contextual options. In the Followers page, the menu presents **Unfollow**, **See shared activity**, and **Mute** options.

### 28. TextField

The `TextField` widget accepts user input. It is used for the message input field at the bottom of the Story page.

### 29. InputDecoration and OutlineInputBorder

`InputDecoration` customizes the text field's hint, fill, padding, and borders. `OutlineInputBorder` defines the rounded outline of the story message field.

### 30. Icon and IconButton

`Icon` displays Material Design icons. `IconButton` associates an icon with an action. On the Story page, the heart icon changes color when pressed.

### 31. Card

The `Card` widget provides a Material Design surface. Colored cards are used as placeholder items in the **Tag** section.

### 32. VerticalDivider

The `VerticalDivider` widget creates vertical separators between the **Posts**, **Followers**, and **Likes** statistics.

## Basic Interactions

The application demonstrates the following interactions:

1. **Opening a Story:** Tap the profile picture to navigate to the Story page.
2. **Closing a Story:** Swipe downward to return to the previous screen.
3. **Story Like Button:** Tap the heart icon to change its color using `setState()`.
4. **Viewing Followers:** Select the follower statistic to open the Followers page.
5. **Tab Navigation:** Switch between content sections using `TabBar` and `TabBarView`.
6. **Follow Button:** Change the appearance and label of a sample follow button.
7. **Contextual Menu:** Open a `PopupMenuButton` to view additional actions.

**Note:** Some controls are included for interface demonstration and do not yet perform complete application functions.

## Design Reference

[User Profile & Settings UI Mobile App Design — Dribbble](https://dribbble.com/shots/27612645-User-Profile-Settings-UI-Mobile-App-Design)

<img width="418" height="827" alt="Screenshot 2026-11-01 at 1 29 19 AM" src="https://github.com/user-attachments/assets/e0006505-60a4-42eb-b92f-d6002c7abe1f" />




