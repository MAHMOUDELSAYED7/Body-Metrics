# Body Metrics
Body Metrics is a user-friendly Body Mass Index (BMI) calculator application built using Flutter and managed with Riverpod for state management. The app provides an intuitive interface for users to calculate their BMI and understand their health status based on the BMI value. With support for multiple languages and customizable text styles, Body Metrics ensures a personalized experience for every user.

## Features

###  BMI Calculation

Body Metrics calculates your Body Mass Index (BMI) based on your weight and height. BMI is a simple index of weight-for-height that is commonly used to classify underweight, overweight, and obesity in adults. The app provides the following functionalities:

- Input fields for `weight(kilograms)` and `height(centimeters)`.
- Instant calculation of BMI upon entering the required values.
- Clear display of the BMI result with a classification `(Underweight, Normal weight, Overweight, Obese)`.
- User-Friendly UI
The app is designed with a focus on simplicity and ease of use. The clean layout ensures that users can quickly enter their details and view their BMI results without any hassle.

### Multi-Language Support
BodyMetrics supports `two languages`:

- `Arabic`
- `English`

Users can easily switch between languages from the settings menu, making the app accessible to a broader audience.

### Customizable Text Styles/Font Families
To enhance user experience, Body Metrics `offers three different font families`:

- `Poppins:` A modern and clean font family.
- `GermaniaOne:` A unique and eye-catching font family.
- `MetalMania:` A bold and dynamic font family.
- 
Users can select their preferred text style from the settings menu.

## Screenshots
<div style="display: flex; justify-content: space-between;">
  <img src="https://github.com/MAHMOUDELSAYED69/BMI-Calculator/assets/133010029/819f24d1-2393-4db0-a56e-003f16dfe8f7" alt="Screenshot 1" style="width: 24%;"/>
  <img src="https://github.com/MAHMOUDELSAYED69/BMI-Calculator/assets/133010029/0c740c36-250e-4410-bd25-ee361f75edac" alt="Screenshot 2" style="width: 24%;"/>
  <img src="https://github.com/MAHMOUDELSAYED69/BMI-Calculator/assets/133010029/9e017c8c-3760-42b7-8356-c1f0c6115cd3" alt="Screenshot 3" style="width: 24%;"/>
  <img src="https://github.com/MAHMOUDELSAYED69/BMI-Calculator/assets/133010029/22357e19-2812-4a53-a547-8bc3722e9448" alt="Screenshot 4" style="width: 24%;"/>
  <img src="https://github.com/MAHMOUDELSAYED69/BMI-Calculator/assets/133010029/277c4fa0-60f6-4f09-85d3-c600c669d963" alt="Screenshot 5" style="width: 24%;"/>
  <img src="https://github.com/MAHMOUDELSAYED69/BMI-Calculator/assets/133010029/07cb2078-9615-4c46-8c89-5148036b8146" alt="Screenshot 6" style="width: 24%;"/>
  <img src="https://github.com/MAHMOUDELSAYED69/BMI-Calculator/assets/133010029/b57a6659-1dfd-4b3c-b30b-d7ea05246b9f" alt="Screenshot 7" style="width: 24%;"/>
  <img src="https://github.com/MAHMOUDELSAYED69/BMI-Calculator/assets/133010029/e66df29e-3aa2-4507-b081-6dbba565c454" alt="Screenshot 8" style="width: 24%;"/>
</div>

## Getting Started
To get started with BodyMetrics, follow these steps:

`Step 1:` Clone the Repository
First, you'll need to clone the repository from GitHub. Open your terminal and run the following command:
```
https://github.com/MAHMOUDELSAYED69/Body-Metrics.git
```
Replace <repository-url> with the actual URL of your repository if it was changed.

`Step 2:` Install Dependencies
After navigating to the project directory, you need to install all the necessary dependencies. Run:
```
flutter pub get
```
This command fetches all the dependencies listed in the `pubspec.yaml` file.

`Step 3:` Configure the App
Ensure all necessary configurations are done. This includes adding your assets and setting up environment variables if needed. Verify that your `pubspec.yaml` file includes all required `assets` and `fonts`.

`Step 4:` Run the Application
Finally, run the application on your desired device using the following command:
`
```
flutter run
```
This command compiles your Flutter app and deploys it to the connected device or simulator.

Additional Tips
`Updating Dependencies:` If there are any updates to the dependencies, you can update them using:
```
flutter pub upgrade --major-versions
```
Flutter Doctor: Run flutter doctor to ensure that your development environment is set up correctly.
```
flutter doctor
```
This command checks your environment and displays a report of the status of your Flutter installation, dependencies, and connected devices.

By following these steps, you'll have the Body Metrics app and running on your device. If you encounter any issues during installation, please refer to the Flutter documentation.

## Dependencies

- **flutter_riverpod:** State management using Riverpod.
- **flutter_screenutil:** Responsive UI design utility.
- **intl:** Internationalization and localization support.
- **shared_preferences:** Persistent local storage management.
- **vertical_weight_slider:** Vertical slider widget for weight.

## Usage
### Calculate (BMI):
- Enter your weight and height:

- Input your weight in the provided weight slider.

- Input your height in the provided height slider.

### View your BMI result:

- The app will automatically calculate and display your BMI along with the respective classification.

### Change language:

- Go to the settings menu.

- Select your preferred language `(Arabic or English)`.

### Change font family:

- Go to the settings menu.

- Choose from the available font family `(Poppins, GermaniaOne, MetalMania)`.

## Contributing
Contributions are welcome! Follow these steps to contribute:

Fork the repository.
Create a new branch: git checkout -b feature/YourFeature
Make your changes and commit them: git commit -m 'Add some feature'
Push to the branch: git push origin feature/YourFeature
Submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


## Contact
If you have any questions or suggestions, feel free to reach out:

Email: [gcfjxvkj@gmail.com]         
GitHub: [MAHMOUDELSAYED69]

