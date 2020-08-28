
@available(iOS, introduced: 5.0, deprecated: 13.0, message: "Use the Remote Notifications Background Modes instead: https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_updates_to_your_app_silently")
class NKAssetDownload : NSObject {
  weak var issue: @sil_weak NKIssue? { get }
  var identifier: String { get }
  var userInfo: [AnyHashable : Any]?
  var urlRequest: URLRequest { get }
  func download(with delegate: NSURLConnectionDownloadDelegate) -> NSURLConnection
}
