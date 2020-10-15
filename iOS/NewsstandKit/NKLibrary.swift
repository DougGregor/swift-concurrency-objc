
@available(iOS, introduced: 5.0, deprecated: 13.0, message: "Use the Remote Notifications Background Modes instead: https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_updates_to_your_app_silently")
class NKLibrary : NSObject {
  var issues: [NKIssue] { get }
  var downloadingAssets: [NKAssetDownload] { get }
  var currentlyReadingIssue: NKIssue?
  class func shared() -> NKLibrary?
  func issue(withName name: String) -> NKIssue?
  func addIssue(withName name: String, date: Date) -> NKIssue
  func removeIssue(_ issue: NKIssue)
}
