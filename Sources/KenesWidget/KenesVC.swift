import SafariServices

public final class KenesVC: SFSafariViewController {
    public enum Language: String {
        case ru
        case kz
    }
    private static let widgetPath = "/admin/widget?is_mobile=true&lang="

    public init?(_ url: URL, language: Language = .kz) {
        guard let scheme = url.scheme,
            let host = url.host,
            let widgetURL = URL(string: "\(scheme)://\(host)\(KenesVC.widgetPath)\(language.rawValue)") else {
            return nil
        }

        let config = SFSafariViewController.Configuration()
        config.barCollapsingEnabled = true
        
        super.init(url: widgetURL, configuration: config)
        dismissButtonStyle = .close
    }
}
