
@available(watchOS 2.0, *)
class WKExtension : NSObject {
  class func shared() -> WKExtension
  func openSystemURL(_ url: URL)
  weak var delegate: @sil_weak WKExtensionDelegate? { get }
  var rootInterfaceController: WKInterfaceController? { get }
  @available(watchOS 4.0, *)
  var visibleInterfaceController: WKInterfaceController? { get }
  @available(watchOS 3.0, *)
  var applicationState: WKApplicationState { get }
  @available(watchOS 4.0, *)
  var isApplicationRunningInDock: Bool { get }
  @available(watchOS 4.0, *)
  var isAutorotating: Bool
  @available(watchOS 4.2, *)
  var isAutorotated: Bool { get }
  @available(watchOS 4.0, *)
  @available(watchOS, deprecated: 7.0, message: "No longer supported")
  var isFrontmostTimeoutExtended: Bool
  @available(watchOS, introduced: 4.0, deprecated: 6.1)
  func enableWaterLock()
  @available(watchOS 6.0, *)
  func registerForRemoteNotifications()
  @available(watchOS 6.0, *)
  func unregisterForRemoteNotifications()
  @available(watchOS 6.0, *)
  var isRegisteredForRemoteNotifications: Bool { get }
  var globalTintColor: UIColor { get }
}
@available(watchOS 3.0, *)
enum WKApplicationState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case active
  case inactive
  case background
}
@available(watchOS 6.0, *)
enum WKBackgroundFetchResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case newData
  case noData
  case failed
}
@available(watchOS 2.0, *)
protocol WKExtensionDelegate : NSObjectProtocol {
  optional func applicationDidFinishLaunching()
  optional func applicationDidBecomeActive()
  optional func applicationWillResignActive()
  optional func applicationWillEnterForeground()
  optional func applicationDidEnterBackground()
  @available(watchOS 5.0, *)
  optional func handleActiveWorkoutRecovery()
  @available(watchOS 6.0, *)
  optional func handle(_ extendedRuntimeSession: WKExtendedRuntimeSession)
  @available(watchOS 5.0, *)
  optional func handleRemoteNowPlayingActivity()
  optional func handleUserActivity(_ userInfo: [AnyHashable : Any]?)
  @available(watchOS 3.2, *)
  optional func handle(_ userActivity: NSUserActivity)
  @available(watchOS 3.0, *)
  optional func handle(_ backgroundTasks: Set<WKRefreshBackgroundTask>)
  @available(watchOS 4.0, *)
  optional func deviceOrientationDidChange()
  @available(watchOS 6.0, *)
  optional func didRegisterForRemoteNotifications(withDeviceToken deviceToken: Data)
  @available(watchOS 6.0, *)
  optional func didFailToRegisterForRemoteNotificationsWithError(_ error: Error)
  @available(watchOS 6.0, *)
  optional func didReceiveRemoteNotification(_ userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (WKBackgroundFetchResult) -> Void)
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 3.0, message: "use UNUserNotificationCenterDelegate")
  optional func handleAction(withIdentifier identifier: String?, forRemoteNotification remoteNotification: [AnyHashable : Any])
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 3.0, message: "use UNUserNotificationCenterDelegate")
  optional func handleAction(withIdentifier identifier: String?, for localNotification: UILocalNotification)
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 3.0, message: "use UNUserNotificationCenterDelegate")
  optional func handleAction(withIdentifier identifier: String?, forRemoteNotification remoteNotification: [AnyHashable : Any], withResponseInfo responseInfo: [AnyHashable : Any])
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 3.0, message: "use UNUserNotificationCenterDelegate")
  optional func handleAction(withIdentifier identifier: String?, for localNotification: UILocalNotification, withResponseInfo responseInfo: [AnyHashable : Any])
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 3.0, message: "use UNUserNotificationCenterDelegate")
  optional func didReceiveRemoteNotification(_ userInfo: [AnyHashable : Any])
  @available(watchOS 2.0, *)
  @available(watchOS, deprecated: 3.0, message: "use UNUserNotificationCenterDelegate")
  optional func didReceive(_ notification: UILocalNotification)
}
extension WKExtension {
  @available(watchOS 7.0, *)
  class let applicationDidFinishLaunchingNotification: NSNotification.Name
  @available(watchOS 7.0, *)
  class let applicationDidBecomeActiveNotification: NSNotification.Name
  @available(watchOS 7.0, *)
  class let applicationWillResignActiveNotification: NSNotification.Name
  @available(watchOS 7.0, *)
  class let applicationWillEnterForegroundNotification: NSNotification.Name
  @available(watchOS 7.0, *)
  class let applicationDidEnterBackgroundNotification: NSNotification.Name
}
