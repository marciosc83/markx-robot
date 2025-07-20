# Robot Framework and Appium for Android and iOS
Robot Framework and Appium Automation Testing project developed during the Udemy QAxperience **Robot Framework and Appium for Android and iOS** training, by Fernando Papito.

## Important commands

### Install appium server
```bash
npm install appium@2.0.1
```

### Run appium server
```bash
npx appium
```

### Install Robot framework
```bash
pip robot 
```

### List mobile devices
```bash
adb devices
```

### List installed drivers
```bash
npx appium driver list --installed
```

### Install UIAutomator2 driver
```bash
npx appium driver install uiautomator2 
```

### Install appium library
```bash
pip install --upgrade robotframework-appiumlibrary
```

### Run test
```bash
robot tests/home.robot
```

### Set tests execution logs
```bash
robot -d ./results
```

