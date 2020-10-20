# KenesWidget

- Добавить в Info.plist

```
<key>NSAppleMusicUsageDescription</key>
<string>Needs to make video calls</string>
<key>NSCameraUsageDescription</key>
<string>Needs to make video calls</string>
```
- Добавить Swift package

  - File -> Swift Packagess -> Add Package Dependency

  - Использовать URL https://github.com/zhombie/kenes-widget-ios

- Импортировать сам виджет 
```swift
import KenesWidget
```

- Добавить код создания виджета, использовать хост системы
```swift
let url = URL(string: "https://example.com")!
if let widget = KenesWidget(url) {
    present(widget, animated: true)
}
```
