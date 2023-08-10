
# Integration React Native to Native iOS

the goal from this project is to open react native app from native App iOS.

## Installation

to run react-native project, open terminal and move to directory RnApp and type 

```bash
  npm install or yarn install
```

open package.json and add script 
```bash
"scripts": {
"build:ios": "node node_modules/react-native/local-cli/cli.js bundle --entry-file='index.js' --bundle-output='./main.jsbundle' --dev=false --platform='ios' --assets-dest='./ios'"
}
```
here is package.json look like

<img width="498" alt="Screenshot 2023-08-10 at 16 28 50" src="https://github.com/edooktarifa/IntegrationRNtoNative/assets/70421797/c8abc336-7ee8-48b4-9e09-0fc188b39371">



close package.json and back to terminal, execute the below command which will create main.jsbundle

```bash
npm run build:ios

or 

yarn run build:ios

```
after successfully done with above step, we can able to see the "main.jsbundle" have been created in the root folder of the react-native project.
move the "main.jsbundle" to native folder project then move your path directory terminal to ios native folder, and run pod install.
here is native folder look like

<img width="241" alt="Screenshot 2023-08-10 at 16 30 02" src="https://github.com/edooktarifa/IntegrationRNtoNative/assets/70421797/cdb0df62-6fc5-475e-aac9-6d149c8598f7">


## Run The Project
1. React Native App 
  go to root directory RN App then execute the below command
  ```bash
yarn ios

or 

npm run ios
```

2. Native App
 go to root directory NativeApp then "pod install", after finished pod install run "NativeApp.xcworkspace" project.


## Documentation

https://medium.com/@duytq94/integrating-react-native-with-existing-android-and-ios-native-projects-175cc9517c1

https://medium.com/@ibrahim.sulaiman_18323/integrating-react-native-app-in-an-existing-ios-native-app-628afcd23f93


## Demo
here is the result app


<img src="https://github.com/edooktarifa/IntegrationRNtoNative/assets/70421797/ddc44a12-7e36-401d-8ba6-3ad11ed8f059.gif" width="20%" height="30%"/>





 
