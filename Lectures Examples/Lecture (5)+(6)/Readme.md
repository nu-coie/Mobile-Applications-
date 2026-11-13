
# Lecture (5+6) — Flutter UI (Version 2)

## Overview

This is an **updated and improved version (V2)** of the Flutter application developed in Lecture 4.

The main objective of this update is to improve code readability, reduce code duplication, and introduce practical applications of two fundamental principles of Object-Oriented Programming (OOP): **Abstraction** and **Encapsulation**.

Students are encouraged to compare the updated implementation with the original version to understand the benefits of writing clean, reusable, and maintainable code.

## What's New in Version 2?

### 1. Abstraction

Repeated UI components have been reorganized into reusable, data-driven structures.

Instead of manually creating multiple `ListTile` widgets, we use `ListView.builder` to generate items dynamically.

This approach simplifies UI construction and reduces repetitive code.

### 2. Encapsulation

Related application state and behavior are managed within the appropriate Flutter `State` class.

For example, follow status changes and Unfollow operations are handled through state updates using `setState()`.

This demonstrates an introductory application of encapsulation. Full data encapsulation can be developed further by introducing private fields and controlled access methods.

### 3. Separation of Data and UI

User information is organized separately from the interface code.

The application uses `List<Map<String, String>>` to store usernames, names, and profile images.

This separation improves code organization, readability, and maintainability.

### 4. Dynamic Lists and Unfollow

The updated Following screen uses `ListView.builder` to display users dynamically.

Selecting **Unfollow** removes the selected user from the displayed list and updates the interface using `setState()`.

## Updated Files

| File | Description |
|---|---|
| **HomeScreen (V2)** | Updated home-screen implementation |
| **Followers** | Following screen with dynamic user lists and Unfollow functionality |
| **followers_data** | User information separated from UI components |

## Original Version (V1)

Students who wish to review or compare the original implementation should refer to:

[Lecture 4 — Original Source Code](https://github.com/nu-coie/Mobile-Applications-/tree/main/Lectures%20Examples/Lecture%20%284%29)

## Student Recommendation

**Do not study Version 2 in isolation.** Compare it with Version 1 to identify what has changed, why the code was reorganized, and how these improvements contribute to better software design.
