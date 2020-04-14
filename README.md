# KenesWidget

1. Добавить в Info.plist

<key>NSAppleMusicUsageDescription</key>
<string>Needs to make video calls</string>
<key>NSCameraUsageDescription</key>
<string>Needs to make video calls</string>

2. Добавить Swift package

File -> Swift Packagess -> Add Package Dependency

3. Использовать URL
https://github.com/zhombie/KenesWidget

4. Импортировать сам виджет 

import KenesWidget

5. Добавить код создания виджета, использовать хост системы

let url = URL(string: "https://example.com")!
if let widget = KenesWidet(url) {
    present(widget, animated: true)
}
