
@available(watchOS 3.0, *)
class WKRefreshBackgroundTask : NSObject {
  var userInfo: (NSSecureCoding & NSObjectProtocol)? { get }
  @available(watchOS 3.0, *)
  @available(watchOS, deprecated: 4.0, message: "Use -setTaskCompletedWithSnapshot: instead, pass NO to duplicate existing behavior")
  func setTaskCompleted()
  @available(watchOS 4.0, *)
  func setTaskCompletedWithSnapshot(_ refreshSnapshot: Bool)
}
@available(watchOS 3.0, *)
class WKApplicationRefreshBackgroundTask : WKRefreshBackgroundTask {
}
@available(watchOS 4.0, *)
enum WKSnapshotReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case appScheduled
  case returnToDefaultState
  case complicationUpdate
  case prelaunch
  case appBackgrounded
}
@available(watchOS 3.0, *)
class WKSnapshotRefreshBackgroundTask : WKRefreshBackgroundTask {
  @available(watchOS 3.0, *)
  @available(watchOS, deprecated: 4.0, message: "Use reasonForSnapshot instead, WKSnapshotReasonReturnToPrimaryUI is equivalent to returnToDefaultState=true")
  var returnToDefaultState: Bool { get }
  @available(watchOS 4.0, *)
  var reasonForSnapshot: WKSnapshotReason { get }
  func setTaskCompleted(restoredDefaultState: Bool, estimatedSnapshotExpiration: Date?, userInfo: (NSSecureCoding & NSObjectProtocol)?)
}
@available(watchOS 3.0, *)
class WKURLSessionRefreshBackgroundTask : WKRefreshBackgroundTask {
  var sessionIdentifier: String { get }
}
@available(watchOS 3.0, *)
class WKWatchConnectivityRefreshBackgroundTask : WKRefreshBackgroundTask {
}
@available(watchOS 5.0, *)
class WKRelevantShortcutRefreshBackgroundTask : WKRefreshBackgroundTask {
}
@available(watchOS 5.0, *)
class WKIntentDidRunRefreshBackgroundTask : WKRefreshBackgroundTask {
}
extension WKExtension {
  @available(watchOS 3.0, *)
  func scheduleBackgroundRefresh(withPreferredDate preferredFireDate: Date, userInfo: (NSSecureCoding & NSObjectProtocol)?, scheduledCompletion: @escaping (Error?) -> Void)
  @available(watchOS 3.0, *)
  func scheduleSnapshotRefresh(withPreferredDate preferredFireDate: Date, userInfo: (NSSecureCoding & NSObjectProtocol)?, scheduledCompletion: @escaping (Error?) -> Void)
}
