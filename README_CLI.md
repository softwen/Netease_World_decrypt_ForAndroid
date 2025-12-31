# MCWorld-Converter Android 命令行编译指南

本指南将帮助您在没有Android Studio的情况下，使用命令行工具编译MCWorld-Converter Android版本。

## 必要条件

1. **Java JDK 11 或更高版本**
   - 下载地址：https://www.oracle.com/java/technologies/downloads/
   - 安装后设置 `JAVA_HOME` 环境变量

2. **Android Command Line Tools**
   - 下载地址：https://developer.android.com/studio#command-tools
   - 解压到合适的位置（例如：`C:\Android\cmdline-tools`）
   - 将 `C:\Android\cmdline-tools\latest\bin` 添加到 `PATH` 环境变量

3. **Android SDK Platforms and Build Tools**
   - 使用 `sdkmanager` 命令安装：
     ```bash
     sdkmanager "platforms;android-34" "build-tools;34.0.0" "extras;android;m2repository" "extras;google;m2repository"
     ```
   - 设置 `ANDROID_HOME` 环境变量（例如：`C:\Android`）

## 编译步骤

1. **打开命令提示符**
   - 在Windows上，按下 `Win + R`，输入 `cmd`，然后按回车

2. **导航到项目目录**
   ```bash
   cd C:\Users\Administrator\Desktop\MCWorld-Converter-1.1.0\MCWorldConverter.Android
   ```

3. **运行编译脚本**
   ```bash
   compile_with_android_sdk.bat
   ```
   或者直接运行：
   ```bash
   .\gradlew.bat assembleDebug
   ```

4. **查找编译结果**
   - 编译成功后，APK文件将位于：`app\build\outputs\apk\debug\app-debug.apk`

## 手动安装APK

1. **连接Android设备**
   - 使用USB数据线将Android设备连接到电脑
   - 在设备上启用「开发者选项」和「USB调试」

2. **安装APK**
   ```bash
   adb install app\build\outputs\apk\debug\app-debug.apk
   ```

## 常见问题解决

1. **找不到 gradlew.bat**
   - 确保您在项目根目录下运行命令
   - 检查项目中是否存在 `gradlew.bat` 文件

2. **无法识别 sdkmanager 命令**
   - 确保 `C:\Android\cmdline-tools\latest\bin` 已添加到 `PATH` 环境变量
   - 尝试重启命令提示符

3. **编译错误**
   - 检查 `JAVA_HOME` 和 `ANDROID_HOME` 环境变量是否正确设置
   - 确保已安装所有必要的Android SDK组件
   - 尝试使用 `./gradlew clean` 清理项目，然后重新编译

4. **权限问题**
   - 确保命令提示符以管理员身份运行
   - 检查文件和目录的权限设置

## 替代方案

如果您不想安装Android Command Line Tools，您可以考虑使用以下替代方案：

1. **使用Docker镜像**
   - 有一些预配置的Docker镜像包含了Android编译所需的所有工具
   - 例如：`circleci/android:api-34`

2. **使用在线编译服务**
   - 例如：GitHub Actions、GitLab CI/CD等
   - 这些服务可以自动编译您的项目并生成APK文件

3. **安装Android Studio**
   - 这是最简单的方法，Android Studio会自动安装所有必要的工具和组件
   - 下载地址：https://developer.android.com/studio

## 联系方式

如果您在编译过程中遇到问题，请参考项目的README.md文件，或在GitHub上提交Issue。
