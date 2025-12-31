@echo off
rem MCWorld-Converter Android 编译脚本
rem 请确保已安装 Android SDK 和 Java JDK

rem 设置环境变量
set ANDROID_HOME=C:\Android\Sdk
set JAVA_HOME=C:\Program Files\Java\jdk-24
set PATH=%PATH%;%ANDROID_HOME%\build-tools\34.0.0;%ANDROID_HOME%\platform-tools;%ANDROID_HOME%\cmdline-tools\latest\bin

rem 检查必要的工具
java -version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo 错误: 未找到 Java JDK。请安装 Java JDK 11 或更高版本。
    pause
    exit /b 1
)

sdkmanager --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo 错误: 未找到 Android SDK。请安装 Android SDK 并设置 ANDROID_HOME 环境变量。
    pause
    exit /b 1
)

rem 下载必要的依赖
rem echo 正在下载必要的依赖...
rem sdkmanager "platforms;android-34" "build-tools;34.0.0" "extras;android;m2repository" "extras;google;m2repository"

rem 编译项目
echo 正在编译项目...
cd /d "%~dp0"

rem 使用 gradlew 包装器编译
if exist gradlew.bat (
    rem 确保 gradlew.bat 有执行权限
    icacls gradlew.bat /grant Everyone:F
    rem 运行编译命令
    .\gradlew.bat assembleDebug
) else (
    echo 错误: 未找到 gradlew.bat 文件。
    pause
    exit /b 1
)

echo 编译完成！
pause
