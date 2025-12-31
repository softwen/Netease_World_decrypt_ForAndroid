# MCWorld-Converter Android 版本

这是MCWorld-Converter的Android移植版本，用于在Minecraft中国版和国际版之间转换存档。

## 项目结构

```
MCWorldConverter.Android/
├── app/
│   ├── src/main/
│   │   ├── java/com/example/mcworldconverter/
│   │   │   ├── MainActivity.java      # 主界面和转换逻辑
│   │   │   └── XOREncrypt.java         # 加密/解密核心功能
│   │   ├── res/
│   │   │   ├── drawable/
│   │   │   │   └── status_background.xml
│   │   │   ├── layout/
│   │   │   │   └── activity_main.xml   # UI布局
│   │   │   └── values/
│   │   │       ├── colors.xml          # 颜色定义
│   │   │       └── themes.xml          # 主题配置
│   │   └── AndroidManifest.xml         # 应用配置
│   └── build.gradle                     # 模块构建配置
├── build.gradle                         # 项目构建配置
├── gradle.properties                    # Gradle属性
├── settings.gradle                      # 项目设置
└── README.md                            # 项目说明
```

## 如何编译和运行

### 方法一：使用Android Studio

1. 下载并安装Android Studio
2. 打开Android Studio
3. 选择"Open an existing project"
4. 导航到`MCWorldConverter.Android`目录并选择它
5. 等待项目同步完成
6. 连接Android设备或启动模拟器
7. 点击"Run"按钮编译并运行应用

### 方法二：使用命令行

1. 确保已安装Java JDK 11或更高版本
2. 确保已安装Android SDK
3. 设置环境变量`JAVA_HOME`和`ANDROID_HOME`
4. 在项目根目录运行以下命令：

```bash
./gradlew assembleDebug
```

编译完成后，APK文件将位于`app/build/outputs/apk/debug/`目录下。

## 功能说明

1. **解密功能**：将Minecraft中国版存档转换为国际版可识别的格式
2. **加密功能**：将国际版存档转换为中国版可识别的格式
3. **直观的用户界面**：易于使用的文件夹选择和操作类型选择
4. **权限处理**：自动处理Android 10+的存储权限

## 使用步骤

1. 打开应用
2. 首次运行时，根据提示授予文件访问权限
3. 点击"选择文件夹"按钮，选择要转换的存档文件夹
4. 选择操作类型：
   - 解密（中国版→国际版）
   - 加密（国际版→中国版）
5. 点击"开始转换"按钮
6. 等待转换完成，查看转换结果

## 注意事项

1. 转换前请备份存档文件，以防意外
2. 中国版"资源工坊"存档据传有特殊二次加密，暂无法解密
3. 确保设备有足够的存储空间
4. 转换大型存档可能需要较长时间

## 技术说明

- 使用Java语言开发
- 采用XOR加密/解密算法
- 支持Android 5.0（API 21）及以上版本
- 使用AndroidX库

## 许可证

本项目基于MIT许可证开源，详见LICENSE文件。
