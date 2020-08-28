
enum UIStatusBarStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  @available(tvOS 7.0, *)
  case lightContent
  @available(tvOS 13.0, *)
  case darkContent
}
enum UIStatusBarAnimation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  @available(tvOS 3.2, *)
  case fade
  @available(tvOS 3.2, *)
  case slide
}
enum UIInterfaceOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case portrait
  case portraitUpsideDown
  case landscapeLeft
  case landscapeRight
}
struct UIInterfaceOrientationMask : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var portrait: UIInterfaceOrientationMask { get }
  static var landscapeLeft: UIInterfaceOrientationMask { get }
  static var landscapeRight: UIInterfaceOrientationMask { get }
  static var portraitUpsideDown: UIInterfaceOrientationMask { get }
  static var landscape: UIInterfaceOrientationMask { get }
  static var all: UIInterfaceOrientationMask { get }
  static var allButUpsideDown: UIInterfaceOrientationMask { get }
}
extension UIInterfaceOrientation {
  var isPortrait: Bool { get }
  var isLandscape: Bool { get }
}
@available(tvOS, introduced: 3.0, deprecated: 8.0, message: "Use UserNotifications Framework's UNAuthorizationOptions for user notifications and registerForRemoteNotifications for receiving remote notifications instead.")
struct UIRemoteNotificationType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var badge: UIRemoteNotificationType { get }
  static var sound: UIRemoteNotificationType { get }
  static var alert: UIRemoteNotificationType { get }
  static var newsstandContentAvailability: UIRemoteNotificationType { get }
}
@available(tvOS 7.0, *)
enum UIBackgroundFetchResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case newData
  case noData
  case failed
}
@available(tvOS 11.0, *)
enum UIBackgroundRefreshStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case restricted
  case denied
  case available
}
struct UIBackgroundTaskIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: Int)
  let rawValue: Int
}
extension UIBackgroundTaskIdentifier {
  @available(tvOS 4.0, *)
  static let invalid: UIBackgroundTaskIdentifier
}
@available(tvOS, introduced: 9.0, deprecated: 13.0, message: "Please use PushKit for VoIP applications.")
let UIMinimumKeepAliveTimeout: TimeInterval
@available(tvOS 2.0, *)
class UIApplication : UIResponder {
  class var shared: UIApplication { get }
  unowned(unsafe) var delegate: @sil_unmanaged UIApplicationDelegate?
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use UIView's userInteractionEnabled property instead")
  func beginIgnoringInteractionEvents()
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use UIView's userInteractionEnabled property instead")
  func endIgnoringInteractionEvents()
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use UIView's userInteractionEnabled property instead")
  var isIgnoringInteractionEvents: Bool { get }
  var isIdleTimerDisabled: Bool
  @available(tvOS, introduced: 2.0, deprecated: 10.0)
  func openURL(_ url: URL) -> Bool
  @available(tvOS 3.0, *)
  func canOpenURL(_ url: URL) -> Bool
  @available(tvOS 10.0, *)
  func open(_ url: URL, options: [UIApplication.OpenExternalURLOptionsKey : Any] = [:], completionHandler completion: ((Bool) -> Void)? = nil)
  func sendEvent(_ event: UIEvent)
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Should not be used for applications that support multiple scenes as it returns a key window across all connected scenes")
  var keyWindow: UIWindow? { get }
  var windows: [UIWindow] { get }
  func sendAction(_ action: Selector, to target: Any?, from sender: Any?, for event: UIEvent?) -> Bool
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Provide a custom network activity UI in your app if desired.")
  var isNetworkActivityIndicatorVisible: Bool
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use the statusBarManager property of the window scene instead.")
  var statusBarStyle: UIStatusBarStyle { get }
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use the statusBarManager property of the window scene instead.")
  var isStatusBarHidden: Bool { get }
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use the interfaceOrientation property of the window scene instead.")
  var statusBarOrientation: UIInterfaceOrientation { get }
  @available(tvOS 6.0, *)
  func supportedInterfaceOrientations(for window: UIWindow?) -> UIInterfaceOrientationMask
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  var statusBarOrientationAnimationDuration: TimeInterval { get }
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use the statusBarManager property of the window scene instead.")
  var statusBarFrame: CGRect { get }
  var applicationIconBadgeNumber: Int
  @available(tvOS 3.0, *)
  var applicationSupportsShakeToEdit: Bool
  @available(tvOS 4.0, *)
  var applicationState: UIApplication.State { get }
  @available(tvOS 4.0, *)
  var backgroundTimeRemaining: TimeInterval { get }
  @available(tvOS 4.0, *)
  func beginBackgroundTask(expirationHandler handler: (() -> Void)? = nil) -> UIBackgroundTaskIdentifier
  @available(tvOS 7.0, *)
  func beginBackgroundTask(withName taskName: String?, expirationHandler handler: (() -> Void)? = nil) -> UIBackgroundTaskIdentifier
  @available(tvOS 4.0, *)
  func endBackgroundTask(_ identifier: UIBackgroundTaskIdentifier)
  @available(tvOS, introduced: 11.0, deprecated: 13.0, message: "Use a BGAppRefreshTask in the BackgroundTasks framework instead")
  func setMinimumBackgroundFetchInterval(_ minimumBackgroundFetchInterval: TimeInterval)
  @available(tvOS 11.0, *)
  var backgroundRefreshStatus: UIBackgroundRefreshStatus { get }
  @available(tvOS 4.0, *)
  var isProtectedDataAvailable: Bool { get }
  @available(tvOS 5.0, *)
  var userInterfaceLayoutDirection: UIUserInterfaceLayoutDirection { get }
  @available(tvOS 7.0, *)
  var preferredContentSizeCategory: UIContentSizeCategory { get }
  @available(tvOS 13.0, *)
  var connectedScenes: Set<UIScene> { get }
  @available(tvOS 13.0, *)
  var openSessions: Set<UISceneSession> { get }
  @available(tvOS 13.0, *)
  var supportsMultipleScenes: Bool { get }
  @available(tvOS 13.0, *)
  func requestSceneSessionActivation(_ sceneSession: UISceneSession?, userActivity: NSUserActivity?, options: UIScene.ActivationRequestOptions?, errorHandler: ((Error) -> Void)? = nil)
  @available(tvOS 13.0, *)
  func requestSceneSessionDestruction(_ sceneSession: UISceneSession, options: UISceneDestructionRequestOptions?, errorHandler: ((Error) -> Void)? = nil)
  @available(tvOS 13.0, *)
  func requestSceneSessionRefresh(_ sceneSession: UISceneSession)
}
extension UIApplication {
  @available(tvOS 8.0, *)
  func registerForRemoteNotifications()
  @available(tvOS 3.0, *)
  func unregisterForRemoteNotifications()
  @available(tvOS 8.0, *)
  var isRegisteredForRemoteNotifications: Bool { get }
  @available(tvOS, introduced: 3.0, deprecated: 8.0, message: "Use -[UIApplication registerForRemoteNotifications] and UserNotifications Framework's -[UNUserNotificationCenter requestAuthorizationWithOptions:completionHandler:]")
  func registerForRemoteNotifications(matching types: UIRemoteNotificationType)
  @available(tvOS, introduced: 3.0, deprecated: 8.0, message: "Use -[UIApplication isRegisteredForRemoteNotifications] and UserNotifications Framework's -[UNUserNotificationCenter getNotificationSettingsWithCompletionHandler:] to retrieve user-enabled remote notification and user notification settings")
  func enabledRemoteNotificationTypes() -> UIRemoteNotificationType
}
extension UIApplication {
  @available(tvOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter addNotificationRequest:withCompletionHandler:]")
  func presentLocalNotificationNow(_ notification: UILocalNotification)
  @available(tvOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter addNotificationRequest:withCompletionHandler:]")
  func scheduleLocalNotification(_ notification: UILocalNotification)
  @available(tvOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter removePendingNotificationRequestsWithIdentifiers:]")
  func cancelLocalNotification(_ notification: UILocalNotification)
  @available(tvOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter removeAllPendingNotificationRequests]")
  func cancelAllLocalNotifications()
  @available(tvOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter getPendingNotificationRequestsWithCompletionHandler:]")
  var scheduledLocalNotifications: [UILocalNotification]?
}
extension UIApplication {
  @available(tvOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter requestAuthorizationWithOptions:completionHandler:] and -[UNUserNotificationCenter setNotificationCategories:]")
  func registerUserNotificationSettings(_ notificationSettings: UIUserNotificationSettings)
  @available(tvOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter getNotificationSettingsWithCompletionHandler:] and -[UNUserNotificationCenter getNotificationCategoriesWithCompletionHandler:]")
  var currentUserNotificationSettings: UIUserNotificationSettings? { get }
}
extension UIApplication {
  @available(tvOS 4.0, *)
  func beginReceivingRemoteControlEvents()
  @available(tvOS 4.0, *)
  func endReceivingRemoteControlEvents()
}
extension UIApplication {
  @available(tvOS, introduced: 5.0, deprecated: 9.0, message: "Newsstand apps now behave like normal apps on SpringBoard")
  func setNewsstandIconImage(_ image: UIImage?)
}
extension UIApplication {
  @available(tvOS 9.0, *)
  var shortcutItems: [UIApplicationShortcutItem]?
}
extension UIApplication {
  @available(tvOS 10.2, *)
  var supportsAlternateIcons: Bool { get }
  @available(tvOS 10.2, *)
  func setAlternateIconName(_ alternateIconName: String?, completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 10.2, *)
  var alternateIconName: String? { get }
}
extension UIApplication {
  @available(tvOS 6.0, *)
  func extendStateRestoration()
  @available(tvOS 6.0, *)
  func completeStateRestoration()
  @available(tvOS 7.0, *)
  func ignoreSnapshotOnNextApplicationLaunch()
  @available(tvOS 7.0, *)
  class func registerObject(forStateRestoration object: UIStateRestoring, restorationIdentifier: String)
}
extension UIApplication {
  struct LaunchOptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct OpenURLOptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct ExtensionPointIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(tvOS 4.0, *)
  class let didEnterBackgroundNotification: NSNotification.Name
  @available(tvOS 4.0, *)
  class let willEnterForegroundNotification: NSNotification.Name
  class let didFinishLaunchingNotification: NSNotification.Name
  class let didBecomeActiveNotification: NSNotification.Name
  class let willResignActiveNotification: NSNotification.Name
  class let didReceiveMemoryWarningNotification: NSNotification.Name
  class let willTerminateNotification: NSNotification.Name
  class let significantTimeChangeNotification: NSNotification.Name
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  class let willChangeStatusBarOrientationNotification: NSNotification.Name
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  class let didChangeStatusBarOrientationNotification: NSNotification.Name
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  class let statusBarOrientationUserInfoKey: String
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  class let willChangeStatusBarFrameNotification: NSNotification.Name
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  class let didChangeStatusBarFrameNotification: NSNotification.Name
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  class let statusBarFrameUserInfoKey: String
  @available(tvOS 11.0, *)
  class let backgroundRefreshStatusDidChangeNotification: NSNotification.Name
  @available(tvOS 4.0, *)
  class let protectedDataWillBecomeUnavailableNotification: NSNotification.Name
  @available(tvOS 4.0, *)
  class let protectedDataDidBecomeAvailableNotification: NSNotification.Name
  @available(tvOS 8.0, *)
  class let openSettingsURLString: String
  @available(tvOS 7.0, *)
  class let userDidTakeScreenshotNotification: NSNotification.Name
  @available(tvOS 6.0, *)
  class let invalidInterfaceOrientationException: NSExceptionName
  @available(tvOS 4.0, *)
  enum State : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case active
    case inactive
    case background
  }
  @available(tvOS 11.0, *)
  class let backgroundFetchIntervalMinimum: TimeInterval
  @available(tvOS 11.0, *)
  class let backgroundFetchIntervalNever: TimeInterval
  struct OpenExternalURLOptionsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
protocol UIApplicationDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func applicationDidFinishLaunching(_ application: UIApplication)
  @available(tvOS 6.0, *)
  optional func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool
  @available(tvOS 3.0, *)
  optional func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool
  @available(tvOS 2.0, *)
  optional func applicationDidBecomeActive(_ application: UIApplication)
  @available(tvOS 2.0, *)
  optional func applicationWillResignActive(_ application: UIApplication)
  @available(tvOS, introduced: 2.0, deprecated: 9.0)
  optional func application(_ application: UIApplication, handleOpen url: URL) -> Bool
  @available(tvOS, introduced: 4.2, deprecated: 9.0)
  optional func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool
  @available(tvOS 9.0, *)
  optional func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool
  @available(tvOS 2.0, *)
  optional func applicationDidReceiveMemoryWarning(_ application: UIApplication)
  @available(tvOS 2.0, *)
  optional func applicationWillTerminate(_ application: UIApplication)
  @available(tvOS 2.0, *)
  optional func applicationSignificantTimeChange(_ application: UIApplication)
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  optional func application(_ application: UIApplication, willChangeStatusBarOrientation newStatusBarOrientation: UIInterfaceOrientation, duration: TimeInterval)
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  optional func application(_ application: UIApplication, didChangeStatusBarOrientation oldStatusBarOrientation: UIInterfaceOrientation)
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  optional func application(_ application: UIApplication, willChangeStatusBarFrame newStatusBarFrame: CGRect)
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use viewWillTransitionToSize:withTransitionCoordinator: instead.")
  optional func application(_ application: UIApplication, didChangeStatusBarFrame oldStatusBarFrame: CGRect)
  @available(tvOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter requestAuthorizationWithOptions:completionHandler:]")
  optional func application(_ application: UIApplication, didRegister notificationSettings: UIUserNotificationSettings)
  @available(tvOS 3.0, *)
  optional func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data)
  @available(tvOS 3.0, *)
  optional func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error)
  @available(tvOS, introduced: 3.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate willPresentNotification:withCompletionHandler:] or -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:] for user visible notifications and -[UIApplicationDelegate application:didReceiveRemoteNotification:fetchCompletionHandler:] for silent remote notifications")
  optional func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any])
  @available(tvOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate willPresentNotification:withCompletionHandler:] or -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, didReceive notification: UILocalNotification)
  @available(tvOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, for notification: UILocalNotification, completionHandler: @escaping () -> Void)
  @available(tvOS, introduced: 9.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [AnyHashable : Any], withResponseInfo responseInfo: [AnyHashable : Any], completionHandler: @escaping () -> Void)
  @available(tvOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [AnyHashable : Any], completionHandler: @escaping () -> Void)
  @available(tvOS, introduced: 9.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, for notification: UILocalNotification, withResponseInfo responseInfo: [AnyHashable : Any], completionHandler: @escaping () -> Void)
  @available(tvOS 7.0, *)
  optional func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void)
  @available(tvOS, introduced: 11.0, deprecated: 13.0, message: "Use a BGAppRefreshTask in the BackgroundTasks framework instead")
  optional func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void)
  @available(tvOS 9.0, *)
  optional func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void)
  @available(tvOS 7.0, *)
  optional func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void)
  @available(tvOS 8.2, *)
  optional func application(_ application: UIApplication, handleWatchKitExtensionRequest userInfo: [AnyHashable : Any]?, reply: @escaping ([AnyHashable : Any]?) -> Void)
  @available(tvOS 9.0, *)
  optional func applicationShouldRequestHealthAuthorization(_ application: UIApplication)
  @available(tvOS 4.0, *)
  optional func applicationDidEnterBackground(_ application: UIApplication)
  @available(tvOS 4.0, *)
  optional func applicationWillEnterForeground(_ application: UIApplication)
  @available(tvOS 4.0, *)
  optional func applicationProtectedDataWillBecomeUnavailable(_ application: UIApplication)
  @available(tvOS 4.0, *)
  optional func applicationProtectedDataDidBecomeAvailable(_ application: UIApplication)
  @available(tvOS 5.0, *)
  optional var window: UIWindow? { get set }
  @available(tvOS 6.0, *)
  optional func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask
  @available(tvOS 8.0, *)
  optional func application(_ application: UIApplication, shouldAllowExtensionPointIdentifier extensionPointIdentifier: UIApplication.ExtensionPointIdentifier) -> Bool
  @available(tvOS 6.0, *)
  optional func application(_ application: UIApplication, viewControllerWithRestorationIdentifierPath identifierComponents: [String], coder: NSCoder) -> UIViewController?
  @available(tvOS 13.2, *)
  optional func application(_ application: UIApplication, shouldSaveSecureApplicationState coder: NSCoder) -> Bool
  @available(tvOS 13.2, *)
  optional func application(_ application: UIApplication, shouldRestoreSecureApplicationState coder: NSCoder) -> Bool
  @available(tvOS 6.0, *)
  optional func application(_ application: UIApplication, willEncodeRestorableStateWith coder: NSCoder)
  @available(tvOS 6.0, *)
  optional func application(_ application: UIApplication, didDecodeRestorableStateWith coder: NSCoder)
  @available(tvOS, introduced: 6.0, deprecated: 13.2, message: "Use application:shouldSaveSecureApplicationState: instead")
  optional func application(_ application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool
  @available(tvOS, introduced: 6.0, deprecated: 13.2, message: "Use application:shouldRestoreSecureApplicationState: instead")
  optional func application(_ application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool
  @available(tvOS 8.0, *)
  optional func application(_ application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  @available(tvOS 8.0, *)
  optional func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool
  @available(tvOS 8.0, *)
  optional func application(_ application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: Error)
  @available(tvOS 8.0, *)
  optional func application(_ application: UIApplication, didUpdate userActivity: NSUserActivity)
  @available(tvOS 13.0, *)
  optional func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration
  @available(tvOS 13.0, *)
  optional func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>)
}

extension UIApplicationDelegate {
  @_alwaysEmitIntoClient static func main()
}
extension UIApplication {
  @available(tvOS, introduced: 2.0, deprecated: 9.0, message: "Explicit setting of the status bar orientation is more limited in iOS 6.0 and later")
  func setStatusBarOrientation(_ interfaceOrientation: UIInterfaceOrientation, animated: Bool)
  @available(tvOS, introduced: 2.0, deprecated: 9.0, message: "Use -[UIViewController preferredStatusBarStyle]")
  func setStatusBarStyle(_ statusBarStyle: UIStatusBarStyle, animated: Bool)
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use -[UIViewController prefersStatusBarHidden]")
  func setStatusBarHidden(_ hidden: Bool, with animation: UIStatusBarAnimation)
  @available(tvOS, introduced: 4.0, deprecated: 9.0, message: "Please use PushKit for VoIP applications instead of calling this method")
  func setKeepAliveTimeout(_ timeout: TimeInterval, handler keepAliveHandler: (() -> Void)? = nil) -> Bool
  @available(tvOS, introduced: 4.0, deprecated: 9.0, message: "Please use PushKit for VoIP applications instead of calling this method")
  func clearKeepAliveTimeout()
}
func UIApplicationMain(_ argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>, _ principalClassName: String?, _ delegateClassName: String?) -> Int32
extension RunLoop.Mode {
  static let tracking: RunLoop.Mode
}
extension UIApplication.LaunchOptionsKey {
  @available(tvOS 3.0, *)
  static let url: UIApplication.LaunchOptionsKey
  @available(tvOS 3.0, *)
  static let sourceApplication: UIApplication.LaunchOptionsKey
  @available(tvOS 3.0, *)
  static let remoteNotification: UIApplication.LaunchOptionsKey
  @available(tvOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenterDelegate didReceiveNotificationResponse:withCompletionHandler:]")
  static let localNotification: UIApplication.LaunchOptionsKey
  @available(tvOS 3.2, *)
  static let annotation: UIApplication.LaunchOptionsKey
  @available(tvOS 4.0, *)
  static let location: UIApplication.LaunchOptionsKey
  @available(tvOS 5.0, *)
  static let newsstandDownloads: UIApplication.LaunchOptionsKey
  @available(tvOS 7.0, *)
  static let bluetoothCentrals: UIApplication.LaunchOptionsKey
  @available(tvOS 7.0, *)
  static let bluetoothPeripherals: UIApplication.LaunchOptionsKey
  @available(tvOS 9.0, *)
  static let shortcutItem: UIApplication.LaunchOptionsKey
  @available(tvOS 8.0, *)
  static let userActivityDictionary: UIApplication.LaunchOptionsKey
  @available(tvOS 8.0, *)
  static let userActivityType: UIApplication.LaunchOptionsKey
  @available(tvOS 10.0, *)
  static let cloudKitShareMetadata: UIApplication.LaunchOptionsKey
}
extension UIApplication.OpenURLOptionsKey {
  @available(tvOS 9.0, *)
  static let sourceApplication: UIApplication.OpenURLOptionsKey
  @available(tvOS 9.0, *)
  static let annotation: UIApplication.OpenURLOptionsKey
  @available(tvOS 9.0, *)
  static let openInPlace: UIApplication.OpenURLOptionsKey
}
extension UIApplication.ExtensionPointIdentifier {
  @available(tvOS 8.0, *)
  static let keyboard: UIApplication.ExtensionPointIdentifier
}
extension UIApplication.OpenExternalURLOptionsKey {
  @available(tvOS 10.0, *)
  static let universalLinksOnly: UIApplication.OpenExternalURLOptionsKey
}
