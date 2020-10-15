
var NS_USER_ACTIVITY_SUPPORTED: Int32 { get }
protocol NSUserActivityRestoring : NSObjectProtocol {
  @available(macOS 10.10, *)
  func restoreUserActivityState(_ userActivity: NSUserActivity)
}
extension NSResponder : NSUserActivityRestoring {
  @available(macOS 10.10, *)
  var userActivity: NSUserActivity?
  @available(macOS 10.10, *)
  func updateUserActivityState(_ userActivity: NSUserActivity)
}
extension NSDocument : NSUserActivityRestoring {
  @available(macOS 10.10, *)
  var userActivity: NSUserActivity?
  @available(macOS 10.10, *)
  func updateUserActivityState(_ activity: NSUserActivity)
}
@available(macOS 10.10, *)
let NSUserActivityDocumentURLKey: String
