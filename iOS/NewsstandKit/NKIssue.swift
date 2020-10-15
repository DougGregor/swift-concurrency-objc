
extension NSNotification.Name {
  @available(iOS, introduced: 5.0, deprecated: 13.0, message: "Use the Remote Notifications Background Modes instead: https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_updates_to_your_app_silently")
  static let NKIssueDownloadCompleted: NSNotification.Name
}
@available(iOS, introduced: 5.0, deprecated: 13.0, message: "Use the Remote Notifications Background Modes instead: https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_updates_to_your_app_silently")
enum NKIssueContentStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case downloading
  case available
}
@available(iOS, introduced: 5.0, deprecated: 13.0, message: "Use the Remote Notifications Background Modes instead: https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_updates_to_your_app_silently")
class NKIssue : NSObject {
  var downloadingAssets: [NKAssetDownload] { get }
  var contentURL: URL { get }
  var status: NKIssueContentStatus { get }
  var name: String { get }
  var date: Date { get }
  func addAsset(with request: URLRequest) -> NKAssetDownload
}
