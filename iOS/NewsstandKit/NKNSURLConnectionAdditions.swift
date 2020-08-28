
extension NSURLConnection {
  @available(iOS, introduced: 5.0, deprecated: 13.0, message: "Use Remote notifications Background Modes instead: https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_updates_to_your_app_silently")
  weak var newsstandAssetDownload: @sil_weak NKAssetDownload? { get }
}
