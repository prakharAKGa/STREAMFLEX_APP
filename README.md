# STREAMFLEX

STREAMFLEX is a powerful Flutter application that allows users to upload and watch videos, interact with content through likes and comments, and manage their profiles. It leverages Firebase for authentication (including phone OTP login) and Cloud Firestore for storing and fetching videos.

## Features

- **Video Upload**: Users can upload their own videos to the platform.
- **Video Watching**: Stream and watch videos uploaded by other users.
- **Profile Page**: Users have personalized profile pages.
- **Likes and Comments**: Interact with videos by liking and commenting on them.
- **Firebase Authentication**: Secure login and signup, including phone OTP login.
- **Cloud Firestore**: Efficiently store and retrieve videos and other data.

## Screenshots

![Home Screen](screenshots/home_screen.png)
![Video Upload](screenshots/video_upload.png)
![Profile Page](screenshots/profile_page.png)

## Installation

To get started with STREAMFLEX, follow these steps:

1. **Clone the repository**
    ```sh
    git clone https://github.com/your-username/STREAMFLEX.git
    cd STREAMFLEX
    ```

2. **Install dependencies**
    ```sh
    flutter pub get
    ```

3. **Set up Firebase**
    - Create a Firebase project on the [Firebase Console](https://console.firebase.google.com/).
    - Add an Android/iOS app to your Firebase project.
    - Follow the instructions to download the `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS) file and place it in the respective directory in your Flutter project.
    - Enable Firebase Authentication and Firestore in the Firebase Console.

4. **Run the app**
    ```sh
    flutter run
    ```

## Configuration

To configure the app for your Firebase project, you need to:

1. **Firebase Authentication**
    - Enable Email/Password, Google, and Phone providers in the Firebase Console.

2. **Cloud Firestore**
    - Set up Firestore rules to ensure secure data access.

## Usage

After setting up and running the app, users can:

- **Sign up/Login**: Register or login using email/password, Google, or phone OTP.
- **Upload Videos**: Use the upload button to add new videos to the platform.
- **Watch Videos**: Browse and watch videos uploaded by other users.
- **Interact with Content**: Like and comment on videos.
- **Profile Management**: View and manage personal profiles.

## Dependencies

STREAMFLEX uses several Flutter and Firebase dependencies:

- `flutter`
- `firebase_core`
- `firebase_auth`
- `cloud_firestore`
- `firebase_storage`
- `provider`
- `video_player`
- `image_picker`

Check the `pubspec.yaml` file for the full list of dependencies.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add some feature'`).
5. Push to the branch (`git push origin feature/your-feature`).
6. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

