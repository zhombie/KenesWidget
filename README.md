# Kenes Widget for iOS

## Основные требования

- Добавить в Info.plist

```
<key>NSAppleMusicUsageDescription</key>
<string>Needs to make video calls</string>
<key>NSCameraUsageDescription</key>
<string>Needs to make video calls</string>
```

## Установка библиотеки (виджета)

### Вариант 1: С помощью Swift Package Manager

- Добавить Swift package

  - File -> Swift Packages -> Add Package Dependency
  - Использовать URL https://github.com/zhombie/kenes-widget-ios

### Вариант 2: С помощью CocoaPods

- Добавить в Podfile

```
pod 'KenesWidget'
```

## Использование библиотеки (виджета) в приложении

- Импортировать сам виджет 

```swift
import KenesWidget
```

- Добавить код создания виджета (в качестве первого параметра использовать хост support системы (например, "https://example.com"))

```swift
let url = URL(string: "https://example.com")!
if let widget = KenesVC(url, language: KenesVC.Language.ru) {
    present(widget, animated: true)
}
```
