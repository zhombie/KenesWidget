import SafariServices

public final class KenesWidet: SFSafariViewController {
    private static let widgetPath = "/admin/widget?is_mobile=true"
    public init?(_ url: URL) {
        guard let scheme = url.scheme,
            let host = url.host,
            let widgetURL = URL(string: "\(scheme)://\(host)\(KenesWidet.widgetPath)") else {
            return nil
        }

        let config = SFSafariViewController.Configuration()
        config.entersReaderIfAvailable = true
        config.barCollapsingEnabled = true
        
        super.init(url: widgetURL, configuration: config)
        dismissButtonStyle = .close
    }
}
